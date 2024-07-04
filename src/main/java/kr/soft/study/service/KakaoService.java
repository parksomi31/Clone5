package kr.soft.study.service;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

@Service
public class KakaoService {

    @Autowired
    private ServletContext servletContext;

    private String restApiKey;
    private final String UNLINK_URL = "https://kapi.kakao.com/v1/user/unlink";

    @Autowired
    public KakaoService(ServletContext servletContext) {
        this.servletContext = servletContext;
        init();
    }

    private void init() {
        restApiKey = servletContext.getInitParameter("7bdcbdc77dde1eadcc53e0828cc9c91c");
    }

    public void kakaoUnlink(String accessToken) {
        RestTemplate restTemplate = new RestTemplate();
        HttpHeaders headers = new HttpHeaders();
        headers.set("Authorization", "Bearer " + accessToken);

        HttpEntity<String> entity = new HttpEntity<>(headers);

        try {
            ResponseEntity<String> response = restTemplate.exchange(
                UNLINK_URL, HttpMethod.POST, entity, String.class);
            if (response.getStatusCode() == HttpStatus.OK) {
                System.out.println("Successfully unlinked from Kakao.");
            } else {
                System.out.println("Failed to unlink from Kakao: " + response.getBody());
            }
        } catch (HttpClientErrorException e) {
            System.out.println("Error during Kakao unlink: " + e.getMessage());
        }
    }
}
