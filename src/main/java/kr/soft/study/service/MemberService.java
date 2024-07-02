package kr.soft.study.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import kr.soft.study.dto.KakaoDTO;

@Service
public class MemberService {

	public String getAccessToken (String authorize_code) {
		String access_Token = "";
		String refresh_Token = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";

		try {
			URL url = new URL(reqURL);
            
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			// POST ��û�� ���� �⺻���� false�� setDoOutput�� true��
            
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			// POST ��û�� �ʿ�� �䱸�ϴ� �Ķ���� ��Ʈ���� ���� ����
            
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");
            
			sb.append("&client_id=7bdcbdc77dde1eadcc53e0828cc9c91c"); //������ �߱޹��� key
			sb.append("&redirect_uri=http://localhost:8080/study/kakaoLogin"); // ������ ������ �ּ�
            
			sb.append("&code=" + authorize_code);
			bw.write(sb.toString());
			bw.flush();
            
			// ��� �ڵ尡 200�̶�� ����
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);
            
			// ��û�� ���� ���� JSONŸ���� Response �޼��� �о����
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
			String line = "";
			String result = "";
            
			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);
            
			// Gson ���̺귯���� ���Ե� Ŭ������ JSON�Ľ� ��ü ����
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
            
			access_Token = element.getAsJsonObject().get("access_token").getAsString();
			refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();
            
			System.out.println("access_token : " + access_Token);
			System.out.println("refresh_token : " + refresh_Token);
            
			br.close();
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return access_Token;
	}
	// Ŭ���� ����.
	@Autowired
	private MemberRepository mr;

	// �޼��� ����Ÿ�� KakaoDTO�� ���� �� import.
	public KakaoDTO getUserInfo(String access_Token) {
			HashMap<String, Object> userInfo = new HashMap<String, Object>();
			String reqURL = "https://kapi.kakao.com/v2/user/me";
			try {
				URL url = new URL(reqURL);
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("GET");
				conn.setRequestProperty("Authorization", "Bearer " + access_Token);
				int responseCode = conn.getResponseCode();
				System.out.println("responseCode : " + responseCode);
				BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
				String line = "";
				String result = "";
				while ((line = br.readLine()) != null) {
					result += line;
				}
				System.out.println("response body : " + result);
				JsonParser parser = new JsonParser();
				JsonElement element = parser.parse(result);
				JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
				JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();
				String nickname = properties.getAsJsonObject().get("nickname").getAsString();
				String email = kakao_account.getAsJsonObject().get("email").getAsString();
				userInfo.put("nickname", nickname);
				userInfo.put("email", email);
			} catch (IOException e) {
				e.printStackTrace();
			}

			// catch �Ʒ� �ڵ� �߰�.
			KakaoDTO result = mr.findkakao(userInfo);
			// �� �ڵ�� ���� ������ ������ִ��� Ȯ���ϴ� �ڵ�.
			System.out.println("S:" + result);
			if(result==null) {
			// result�� null�̸� ������ ������ �ȵ��ִ°ŹǷ� ������ ����.
				mr.kakaoinsert(userInfo);
				// �� �ڵ尡 ������ �����ϱ� ���� Repository�� ������ �ڵ���.
				return mr.findkakao(userInfo);
				// �� �ڵ�� ���� ���� �� ��Ʈ�ѷ��� ������ ������ �ڵ���.
				//  result�� �������� ������ null�� ���ϵǹǷ� �� �ڵ带 ���.
			} else {
				return result;
				// ������ �̹� �ֱ� ������ result�� ������.
			}
	        
		}
}