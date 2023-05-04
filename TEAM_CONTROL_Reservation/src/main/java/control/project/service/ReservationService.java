package control.project.service;


import control.project.model.ReservationVO;
import control.project.model.SettedYearMonthVO;

public interface ReservationService {
	// 예약 정보 저장하기 insert
	public void reserve(ReservationVO data);

	// 예약 완료 정보 확인 0426
	public ReservationVO userCheck(ReservationVO data);
	

	// 예약 불가능 시간 불러오기 0426
	public SettedYearMonthVO getDate(String settedYearMonth, String medicalDept, String doctor);
	
}
