package com.izyrtm.vo;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class RtmVO {
	
	int seq_no;
	String bot_key;
	String bot_token;
	String bot_type;
	String bot_title;
	String topic_name;
	String user_list;
	String use_yn;
	String code_value;
	Date reg_dt;
	Date mod_dt;
	
	List listInfo = new  ArrayList();
	
	
	public int getSeq_no() {
		return seq_no;
	}
	public void setSeq_no(int seq_no) {
		this.seq_no = seq_no;
	}
	public String getBot_key() {
		return bot_key;
	}
	public void setBot_key(String bot_key) {
		this.bot_key = bot_key;
	}
	public String getBot_token() {
		return bot_token;
	}
	public void setBot_token(String bot_token) {
		this.bot_token = bot_token;
	}
	public String getBot_type() {
		return bot_type;
	}
	public void setBot_type(String bot_type) {
		this.bot_type = bot_type;
	}
	public String getBot_title() {
		return bot_title;
	}
	public void setBot_title(String bot_title) {
		this.bot_title = bot_title;
	}
	public String getTopic_name() {
		return topic_name;
	}
	public void setTopic_name(String topic_name) {
		this.topic_name = topic_name;
	}
	public String getUser_list() {
		return user_list;
	}
	public void setUser_list(String user_list) {
		this.user_list = user_list;
	}
	public String getUse_yn() {
		return use_yn;
	}
	public void setUse_yn(String use_yn) {
		this.use_yn = use_yn;
	}
	public Date getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(Date reg_dt) {
		this.reg_dt = reg_dt;
	}
	public List getListInfo() {
		return listInfo;
	}
	
	public void setListInfo(List listInfo) {
		this.listInfo = listInfo;
	}
	public Date getMod_dt() {
		return mod_dt;
	}
	public void setMod_dt(Date mod_dt) {
		this.mod_dt = mod_dt;
	}
	public String getCode_value() {
		return code_value;
	}
	public void setCode_value(String code_value) {
		this.code_value = code_value;
	}

}