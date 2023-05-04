package control.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.project.mapper.InquiryMapper;
import control.project.model.ReservationVO;
import control.project.model.SettedYearMonthVO;

@Service
public class InquiryServiceImpl implements InquiryService{

	@Autowired
	InquiryMapper im;
	
	// 주민등록번호로 예약 정보가 있는지 확인
	public SettedYearMonthVO inquiryCheck(ReservationVO personalNumber) {
		return new SettedYearMonthVO(im.inquiryCheck(personalNumber));
	}

	// 비회원 진료 예약 조회 0426
	public SettedYearMonthVO selfCheckList(ReservationVO data) {
		return new SettedYearMonthVO(im.selfCheckList(data));
	}
	
	// 비회원 진료 예약 조회 페이지에서 예약 정보 삭제 0426
	public int removeReservation(ReservationVO reservation) {
		return im.removeReservation(reservation);
	}

	// 예약 완료 후 확인 페이지에서 예약 정보 삭제 0426
	public void delete(ReservationVO data) {
		im.delete(data);
	}
}
