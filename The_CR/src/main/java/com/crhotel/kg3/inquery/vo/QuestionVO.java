package com.crhotel.kg3.inquery.vo;

import java.util.Date;

public class QuestionVO {
	private int num;
	private String title;
	private String id;
	private String id_sec;
	private Date qDate;
	private String question_type;
	private String content;
	private int click;
	private String secret;
	private String answer_check;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getId_sec() {
		return id_sec;
	}
	public void setId_sec(String id_sec) {
		this.id_sec = id_sec;
	}
	public Date getqDate() {
		return qDate;
	}
	public void setqDate(Date qDate) {
		this.qDate = qDate;
	}
	public String getQuestion_type() {
		return question_type;
	}
	public void setQuestion_type(String question_type) {
		this.question_type = question_type;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getClick() {
		return click;
	}
	public void setClick(int click) {
		this.click = click;
	}
	public String getSecret() {
		return secret;
	}
	public void setSecret(String secret) {
		this.secret = secret;
	}
	public String getAnswer_check() {
		return answer_check;
	}
	public void setAnswer_check(String answer_check) {
		this.answer_check = answer_check;
	}
}
