package control.project.model;

import java.util.ArrayList;

// ReservationVO를 ArrayList 형태로 담아오고 settedYearMonth 에 특정 날자를 보낸다.  
public class SettedYearMonthVO { 
	private String settedYearMonth;
	private ArrayList<ReservationVO> list;
	
	// 생성자
	public SettedYearMonthVO(ArrayList<ReservationVO> list) {
		this.list = list;
	}
	
	public String getSettedYearMonth() {
		return settedYearMonth;
	}
	public void setSettedYearMonth(String settedYearMonth) {
		this.settedYearMonth = settedYearMonth;
	}
	public ArrayList<ReservationVO> getList() {
		return list;
	}
	public void setList(ArrayList<ReservationVO> list) {
		this.list = list;
	}
	
	@Override
	public String toString() {
		return "settedYearMonthVO [settedYearMonth=" + settedYearMonth + ", list=" + list + "]";
	}
}
