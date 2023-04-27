package control.project.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import control.project.model.CriteriaVO;
import control.project.model.ReservationVO;

public interface ReservationMapper {
	// 예약 정보 저장하기 insert
	public void reserve(ReservationVO data);
	
    // 예약 정보 불러오기 select 0419
	public ArrayList<ReservationVO> list(CriteriaVO cri);
	
	// reservation 테이블(예약) 전체 건수 DB 설계 0419
	public int total(CriteriaVO cri);
	
	// 유저 정보 불러오기
	public ReservationVO userCheck(ReservationVO data);
	
	// 유저 정보 삭제
	public void delete(ReservationVO data);
	
	// 예약 불가능 시간 불러오기
	public ArrayList<ReservationVO> getDate(@Param("settedYearMonth")String settedYearMonth,@Param("medicalDept")String medicalDept,@Param("doctor")String doctor);
	
	// 비회원 진료 예약 조회
	public ArrayList<ReservationVO> selfCheckList(@Param("personalNumber")String personalNumber);
	
	// 비회원 진료 예약 조회 페이지에서 예약 정보 삭제
	public int removeReservation(ReservationVO reservation);
	
	// 예약 상세정보 불러오기 0424
	public ReservationVO detail(ReservationVO board);
	
	// 예약 상세정보 수정하기 0424
	public void modify(ReservationVO board);
	
	// 예약 상세정보 삭제하기 0424
	public void remove(ReservationVO board);
}
