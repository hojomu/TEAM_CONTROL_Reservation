package control.project.service;

import java.util.ArrayList;

import control.project.model.AdminLoginVO;
import control.project.model.CriteriaVO;
import control.project.model.ReservationVO;
import control.project.model.SettedYearMonthVO;

public interface ReservationService {
	// 예약 정보 저장하기 insert
	public void reserve(ReservationVO data);
	
	// 예약 정보 불러오기 select 0419
	public ArrayList<ReservationVO> list(CriteriaVO cri);
	
	// reservation 테이블(예약) 전체 건수 설계  0419
	public int total(CriteriaVO cri);
	
	// 예약 완료 정보 확인 0426
	public ReservationVO userCheck(ReservationVO data);
	
	// 예약 정보 삭제 0426
	public void delete(ReservationVO data);

	// 예약 불가능 시간 불러오기 0426
	public SettedYearMonthVO getDate(String settedYearMonth, String medicalDept, String doctor);
	
	// 비회원 진료 예약 조회 0426
	public SettedYearMonthVO selfCheckList(String personalNumber );
	
	// 비회원 진료 예약 조회 페이지에서 예약 정보 삭제 0426
	public int removeReservation(ReservationVO reservation);
	
	// 예약 상세정보 불러오기 0424
	public ReservationVO detail(ReservationVO board);
	
	// 예약 상세정보 수정하기 0424
	public void modify(ReservationVO board);
	
	// 예약 상세정보 삭제하기 0424
	public void remove(ReservationVO board);
	
	// 관리자 로그인 기능 0427
	public AdminLoginVO login(AdminLoginVO login);
}
