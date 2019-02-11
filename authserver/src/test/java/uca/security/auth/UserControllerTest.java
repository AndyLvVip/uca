package uca.security.auth;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.json.JacksonJsonParser;
import org.springframework.boot.test.autoconfigure.restdocs.AutoConfigureRestDocs;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Import;
import org.springframework.http.MediaType;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.provider.ClientDetailsService;
import org.springframework.security.oauth2.provider.client.BaseClientDetails;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import uca.security.auth.domain.User;
import uca.security.auth.repository.UserRepository;

import javax.sql.DataSource;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.Base64;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;
import static org.springframework.restdocs.headers.HeaderDocumentation.headerWithName;
import static org.springframework.restdocs.headers.HeaderDocumentation.requestHeaders;
import static org.springframework.restdocs.payload.PayloadDocumentation.*;
import static org.springframework.restdocs.request.RequestDocumentation.parameterWithName;
import static org.springframework.restdocs.request.RequestDocumentation.requestParameters;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static uca.security.auth.CustomizationConfiguration.restDocument;

@SpringBootTest
@AutoConfigureRestDocs
@AutoConfigureMockMvc
@Import(CustomizationConfiguration.class)
@RunWith(SpringRunner.class)
@EnableAutoConfiguration(exclude = DataSourceAutoConfiguration.class)
public class UserControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private ObjectMapper mapper;

    @MockBean
    private ClientDetailsService clientDetailsService;

    @MockBean
    private UserDetailsService userDetailsService;

    @MockBean
    private UserRepository userRepository;

    //项目启动时需要注入dataSource，所以使用MockBean
    @MockBean
    private DataSource dataSource;

    @Autowired
    private PasswordEncoder passwordEncoder;



    @Before
    public void setUp() {
        BaseClientDetails clientDetails = new BaseClientDetails();
        clientDetails.setClientId("client-1");
        clientDetails.setClientSecret(passwordEncoder.encode("client-1-secret"));
        clientDetails.setAuthorizedGrantTypes(Arrays.asList("password", "refresh_token"));
        clientDetails.setScope(Arrays.asList("webclient"));
        when(clientDetailsService.loadClientByClientId("client-1")).thenReturn(clientDetails);

        User user = new User();
        user.setUsername("dummy");
        user.setPassword(passwordEncoder.encode("password"));
        user.setCreatedOn(LocalDateTime.now());
        when(userDetailsService.loadUserByUsername("dummy")).thenReturn(user);

        when(userRepository.save(any(User.class))).thenReturn(user);

    }

    @Test
    public void userRegister() throws Exception {
        User dummy = new User();
        dummy.setUsername("dummy");
        dummy.setPassword("password");
        this.mockMvc.perform(post("/user/register").contentType(MediaType.APPLICATION_JSON).content(mapper.writeValueAsString(dummy)))
                .andExpect(status().isNoContent())
        .andDo(restDocument(requestFields(
                fieldWithPath("username").description("Login user name"),
                fieldWithPath("password").description("Login password")
        )))
        ;
    }

    @Test
    public void userLogin() throws Exception {
        login()
                .andDo(restDocument(requestHeaders(
                        headerWithName("Authorization").description("Basic auth credential")
                        )
                        , requestParameters(
                                parameterWithName("username").description("Login username")
                                , parameterWithName("password").description("Login password")
                                , parameterWithName("grant_type").description("Grant type")
                                , parameterWithName("scope").description("Only the specified scope is allowed to be accessed")
                        ),
                        responseFields(
                                fieldWithPath("access_token").description("Access with this token")
                                , fieldWithPath("token_type").description("Type of this token")
                                , fieldWithPath("refresh_token").description("Use this refresh_token to request a new token")
                                , fieldWithPath("expires_in").description("Access token will be expires in seconds")
                                , fieldWithPath("scope").description("The valid scope of the access token")
                        )
                ))
        ;

    }

    private ResultActions login() throws Exception {
        return this.mockMvc.perform(post("/oauth/token")
                .header("Authorization", "Basic " + Base64.getEncoder().encodeToString("client-1:client-1-secret".getBytes()))
                .param("username", "dummy")
                .param("password", "password")
                .param("grant_type", "password")
                .param("scope", "webclient")
                .accept(MediaType.APPLICATION_JSON)
        )
                .andExpect(status().isOk())
                ;
    }

    @Test
    public void invalidUserLogin() throws Exception {
        this.mockMvc.perform(post("/oauth/token")
                .header("Authorization", "Basic " + Base64.getEncoder().encodeToString("client-1:client-1-secret".getBytes()))
                .param("username", "dummy")
                .param("password", "invalidPassword")
                .param("grant_type", "password")
                .param("scope", "webclient")
                .accept(MediaType.APPLICATION_JSON)
        )
                .andExpect(status().isBadRequest())
                .andDo(print())
        ;

    }

    @Test
    public void userCredential() throws Exception {
        String resultString = login()
                .andReturn().getResponse().getContentAsString();
        JacksonJsonParser jsonParser = new JacksonJsonParser();
        String access_token = jsonParser.parseMap(resultString).get("access_token").toString();

        this.mockMvc.perform(get("/user")
                .header("Authorization", "Bearer " + access_token)
                .accept(MediaType.APPLICATION_JSON)
        )
                .andExpect(status().isOk())
                .andDo(restDocument(requestHeaders(
                        headerWithName("Authorization").description("Bearer token to access protected resource")
                        )
                        , responseFields(
                                fieldWithPath("user.username").description("Username of the user")
                                , fieldWithPath("user.createdOn.date.year").description("The year when the user created")
                                , fieldWithPath("user.createdOn.date.month").description("The month when the user created")
                                , fieldWithPath("user.createdOn.date.day").description("The day when the user created")
                                , fieldWithPath("user.createdOn.time.hour").description("The hour when the user created")
                                , fieldWithPath("user.createdOn.time.minute").description("The minute when the user created")
                                , fieldWithPath("user.createdOn.time.second").description("The second when the user created")
                                , fieldWithPath("user.createdOn.time.nano").description("The nano when the user created")
                        )
                ));

    }
}
