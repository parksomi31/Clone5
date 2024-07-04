package kr.soft.study.service;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class KakaoService {

    @Autowired
    private ServletContext servletContext;

    private String restApiKey;
    private String logoutRedirectUri;

    @Autowired
    public KakaoService(ServletContext servletContext) {
        this.servletContext = servletContext;
        init();
    }

    private void init() {
        restApiKey = servletContext.getInitParameter("7bdcbdc77dde1eadcc53e0828cc9c91c");
        logoutRedirectUri = servletContext.getInitParameter("http://183.111.125.38:8080");
    }

    public String getLogoutUrl() {
        return "https://kauth.kakao.com/oauth/logout?client_id=7bdcbdc77dde1eadcc53e0828cc9c91c&logout_redirect_uri=http://183.111.125.38:8080";
    }
}
