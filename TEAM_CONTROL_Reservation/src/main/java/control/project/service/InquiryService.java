package control.project.service;

import control.project.model.ReservationVO;
import control.project.model.SettedYearMonthVO;

public interface InquiryService {
	
	// 주민등록번호로 예약 정보가 있는지 확인
	public SettedYearMonthVO inquiryCheck(ReservationVO personalNumber);

	// 비회원 진료 예약 조회 0426
	public SettedYearMonthVO selfCheckList(ReservationVO data);
	
	// 비회원 진료 예약 조회 페이지에서 예약 정보 삭제 0426
	public int removeReservation(ReservationVO reservation);

	// 예약 완료 후 확인 페이지에서 예약 정보 삭제 0426
	public void delete(ReservationVO data);
	
}
