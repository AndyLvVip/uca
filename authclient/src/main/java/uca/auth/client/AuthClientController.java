package uca.auth.client;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by andy.lv
 * on: 2019/1/21 13:49
 */
@RestController
public class AuthClientController {

    @PostMapping("/login")
    public String login(@RequestHeader("Authorization") String authorization) {
        return null;
    }

    @PostMapping("/refreshToken")
    public String refreshToken(String access_token) {
        return null;
    }

    @PostMapping("/logout")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void logout(String access_token) {

    }
}
