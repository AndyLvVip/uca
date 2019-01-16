package uca.gw;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;

@SpringBootApplication
@EnableZuulProxy
@RefreshScope
@EnableEurekaClient
public class GWServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(GWServerApplication.class, args);
    }
}
