package com.crhotel.kg3.room.vo;

import java.util.ArrayList;
import java.util.HashMap;

public class RoomVO {
	
	private int rownm; //번호
	private int rnum; //객실 호수
	private String rmname; //객실명
	private int roomPrice; //가격
	private ArrayList<HashMap<String,Object>> list;
	
	public RoomVO() {}
	public RoomVO(int rownm, int rnum, String rmname, int roomPrice, ArrayList<HashMap<String, Object>> list) {
		super();
		this.rownm = rownm;
		this.rnum = rnum;
		this.rmname = rmname;
		this.roomPrice = roomPrice;
		this.list = list;
	}
	public ArrayList<HashMap<String, Object>> getList() {
		return list;
	}
	public void setList(ArrayList<HashMap<String, Object>> list) {
		this.list = list;
	}
	public int getRownm() {
		return rownm;
	}
	public void setRownm(int rownm) {
		this.rownm = rownm;
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public String getRmname() {
		return rmname;
	}
	public void setRmname(String rmname) {
		this.rmname = rmname;
	}
	public int getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(int roomPrice) {
		this.roomPrice = roomPrice;
	}
	@Override
	public String toString() {
		return "RoomVO [rownm="+rownm+", rnum="+ rnum + ", rmname=" + rmname + ", roomPrice=" + roomPrice + "]";
	}
}
