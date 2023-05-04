package control.project.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import control.project.model.ReservationVO;

public interface ReservationMapper {
	// 예약 정보 저장하기 insert
	public void reserve(ReservationVO data);
	
	// 유저 정보 불러오기
	public ReservationVO userCheck(ReservationVO data);
	
	// 예약 불가능 시간 불러오기
	public ArrayList<ReservationVO> getDate(@Param("settedYearMonth")String settedYearMonth,@Param("medicalDept")String medicalDept,@Param("doctor")String doctor);
	
}
