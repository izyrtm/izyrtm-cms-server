package com.izyrtm.vo;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class MdmVO {
	
	int seq_no;
	String db_key;
	String db_id;
	String db_title;
	String db_org_id;
	String db_panel_id;
	String bot_key;
	String use_yn;
	Date reg_dt;
	Date mod_dt;
	
	List<MdmVO> mdmListInfo = new ArrayList<MdmVO>();
	
	public int getSeq_no() {
		return seq_no;
	}
	public void setSeq_no(int seq_no) {
		this.seq_no = seq_no;
	}
	public String getDb_key() {
		return db_key;
	}
	public void setDb_key(String db_key) {
		this.db_key = db_key;
	}
	public String getDb_id() {
		return db_id;
	}
	public void setDb_id(String db_id) {
		this.db_id = db_id;
	}
	public String getDb_title() {
		return db_title;
	}
	public void setDb_title(String db_title) {
		this.db_title = db_title;
	}
	public String getDb_org_id() {
		return db_org_id;
	}
	public void setDb_org_id(String db_org_id) {
		this.db_org_id = db_org_id;
	}
	public String getDb_panel_id() {
		return db_panel_id;
	}
	public void setDb_panel_id(String db_panel_id) {
		this.db_panel_id = db_panel_id;
	}
	public String getBot_key() {
		return bot_key;
	}
	public void setBot_key(String bot_key) {
		this.bot_key = bot_key;
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
	public Date getMod_dt() {
		return mod_dt;
	}
	public void setMod_dt(Date mod_dt) {
		this.mod_dt = mod_dt;
	}
	public List<MdmVO> getMdmListInfo() {
		return mdmListInfo;
	}
	public void setMdmListInfo(String string, List<MdmVO> mdmListInfo) {
		this.mdmListInfo = mdmListInfo;
	}
	public void addObject(String string, List<MdmVO> mdmList) {
		// TODO Auto-generated method stub
		
	}
}