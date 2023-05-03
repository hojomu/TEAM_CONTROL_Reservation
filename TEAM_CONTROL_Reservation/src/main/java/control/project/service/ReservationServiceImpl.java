package control.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.project.mapper.ReservationMapper;
import control.project.model.AdminLoginVO;
import control.project.model.CriteriaVO;
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
	
	// 예약 정보 불러오기 select 0419
	public ArrayList<ReservationVO> list(CriteriaVO cri){
		System.out.println(cri);
		return rm.list(cri);
	}
	
	// reservation 테이블(예약) 전체 건수 불러오기  0419
	public int total(CriteriaVO cri) {
		return rm.total(cri);
	}
	
	// 유저 정보 불러오기 0426
	public ReservationVO userCheck(ReservationVO data) {
		return rm.userCheck(data);
	}
	
	// 유저 정보 삭제 0426
	public void delete(ReservationVO data) {
		rm.delete(data);
	}

	// 예약 불가능 시간 불러오기 0426
	public SettedYearMonthVO getDate(String settedYearMonth, String medicalDept, String doctor) {
		System.out.println(settedYearMonth);
		return new SettedYearMonthVO(rm.getDate(settedYearMonth,medicalDept,doctor));
	}
	
	// 비회원 진료 예약 조회 0426
	public SettedYearMonthVO selfCheckList(ReservationVO data) {
		return new SettedYearMonthVO(rm.selfCheckList(data));
	}
	
	// 비회원 진료 예약 조회 페이지에서 예약 정보 삭제 0426
	public int removeReservation(ReservationVO reservation) {
		return rm.removeReservation(reservation);
	}
	
	// 예약 상세정보 불러오기 0424
	public ReservationVO detail(ReservationVO board) {
		return rm.detail(board);
	}
	
	// 예약 상세정보 수정하기 0424
	public void modify(ReservationVO board) {
		rm.modify(board);
	}
	
	// 예약 상세정보 삭제하기 0424
	public void remove(ReservationVO board) {
		rm.remove(board);
	}
	
	// 관리자 로그인 기능 0427
	public AdminLoginVO login(AdminLoginVO login) {
		return rm.login(login);
	}
	
}
