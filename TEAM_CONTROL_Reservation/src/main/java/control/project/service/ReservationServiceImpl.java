package control.project.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.project.mapper.ReservationMapper;
import control.project.model.AdminLoginVO;
import control.project.model.ReservationVO;
import control.project.model.SettedYearMonthVO;

@Service
public class ReservationServiceImpl implements ReservationService {
	
	@Autowired
	ReservationMapper rm;

	// 예약 정보 저장하기 insert
	public void reserve(ReservationVO data) {
		rm.reserve(data);
	}
	
	// 유저 정보 불러오기 0426
	public ReservationVO userCheck(ReservationVO data) {
		return rm.userCheck(data);
	}
	
	// 예약 불가능 시간 불러오기 0426
	public SettedYearMonthVO getDate(String settedYearMonth, String medicalDept, String doctor) {
		System.out.println(settedYearMonth);
		return new SettedYearMonthVO(rm.getDate(settedYearMonth,medicalDept,doctor));
	}
	
	
}
