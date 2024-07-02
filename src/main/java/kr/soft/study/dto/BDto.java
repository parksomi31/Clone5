package kr.soft.study.dto;

import java.sql.Timestamp;

public class BDto {

	private int notice_index;
	private String notice_title;
	private String notice_content;
	private String input_time;
	
	private int faq_index;
	private String faq_title;
	private String faq_content;
	
	public BDto() {
		
	}
	
	public BDto(int notice_index, String notice_title, String notice_content, String input_time, int faq_index,
			String faq_title, String faq_content) {
		super();
		this.notice_index = notice_index;
		this.notice_title = notice_title;
		this.notice_content = notice_content;
		this.input_time = input_time;
		this.faq_index = faq_index;
		this.faq_title = faq_title;
		this.faq_content = faq_content;
	}

	public int getNotice_index() {
		return notice_index;
	}

	public void setNotice_index(int notice_index) {
		this.notice_index = notice_index;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public String getInput_time() {
		return input_time;
	}

	public void setInput_time(String input_time) {
		this.input_time = input_time;
	}

	public int getFaq_index() {
		return faq_index;
	}

	public void setFaq_index(int faq_index) {
		this.faq_index = faq_index;
	}

	public String getFaq_title() {
		return faq_title;
	}

	public void setFaq_title(String faq_title) {
		this.faq_title = faq_title;
	}

	public String getFaq_content() {
		return faq_content;
	}

	public void setFaq_content(String faq_content) {
		this.faq_content = faq_content;
	}


	
}
