package com.crhotel.kg3.reserve.vo;

import java.sql.Date;

public class ReserveVO {
	
	private String res_no; //예약번호
	private int rnum; //객실 호수
	private String id; //아이디
	private String rname; //예약자 성함
	private String rtel; //예약자 전화번호
	private Date ckin; //체크인 날짜
	private Date ckout; //체크아웃 날짜
	private String rmname; //객실명
	private int people; //인원수
	private String require; //요청사항
	private int price; //예약가격
	
	public ReserveVO() {}
	
	public ReserveVO(String res_no,int rnum, String id, String rname, String rtel, Date ckin, Date ckout, String rmname, int people,
			String require, int price,int rownum) {
		super();
		this.res_no = res_no;
		this.rnum = rnum;
		this.id = id;
		this.rname = rname;
		this.rtel = rtel;
		this.ckin = ckin;
		this.ckout = ckout;
		this.rmname = rmname;
		this.people = people;
		this.require = require;
		this.price = price;
	}
	public String getRes_no() {
		return res_no;
	}

	public void setRes_no(String res_no) {
		this.res_no = res_no;
	}

	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getRtel() {
		return rtel;
	}
	public void setRtel(String rtel) {
		this.rtel = rtel;
	}
	public Date getCkin() {
		return ckin;
	}
	public void setCkin(Date ckin) {
		this.ckin = ckin;
	}
	public Date getCkout() {
		return ckout;
	}
	public void setCkout(Date ckout) {
		this.ckout = ckout;
	}
	public String getRmname() {
		return rmname;
	}
	public void setRmname(String rmname) {
		this.rmname = rmname;
	}
	public int getPeople() {
		return people;
	}
	public void setPeople(int people) {
		this.people = people;
	}
	public String getRequire() {
		return require;
	}
	public void setRequire(String require) {
		this.require = require;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "ReserveVO [res_no="+res_no+", rnum="+rnum+", id=" + id + ", rname=" + rname+ ", rtel=" + rtel + ", ckin="+ ckin + ", ckout="+ ckout+", rmname="+rmname+", people="+people+", require="+require +", price="+price+"]";
	}
	
}
