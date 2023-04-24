package control.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import control.project.model.CriteriaVO;
import control.project.model.PageVO;
import control.project.model.ReservationVO;
import control.project.model.SettedYearMonthVO;
import control.project.service.ReservationService;

@Controller
public class ReservationController {
	
	@Autowired
	ReservationService rs;
	
	//reservation 으로 이동
	@RequestMapping(value="/reservation", method = RequestMethod.GET)
	public String goreservation() {
		return "reservation";
	}
	
	// 이메일, 이름, 주민등록번호 appointment1 페이지로 넘기기 ( post 방식 )
	@RequestMapping(value = "/appointment1", method = RequestMethod.POST) 
	public String agree(ReservationVO data, Model model) {
		System.out.println(data);
		model.addAttribute("reserveData",data);
		return "appointment1"; // 상세 예약 페이지로 이동할 것
	}

	// 예약정보 불러오기 Select
	@RequestMapping(value="/ManagerCheck", method = RequestMethod.GET)
	public String getList(Model model, CriteriaVO cri) {
		System.out.println(cri);
		model.addAttribute("list", rs.list(cri));		
		int total = rs.total(cri);
		System.out.println(total);
		model.addAttribute("paging", new PageVO(cri, total));
		return "ManagerCheck";
	}
	
	// 예약 정보 저장하기 insert
	@RequestMapping(value = "/UserCheck", method = RequestMethod.POST) 
	public String reserve(ReservationVO data) {
		rs.reserve(data);
		System.out.println(data);
		return "UserCheck"; // 예약 확인 페이지로 이동할 것
	}
	
	// 예약 불가능 시간 불러오기
		@RequestMapping(value="/appointment1/{settedYearMonth}", method = RequestMethod.GET)
		public ResponseEntity<SettedYearMonthVO> getDate(@PathVariable("settedYearMonth") String settedYearMonth ){
			System.out.println("controller:"+settedYearMonth);
			return new ResponseEntity<>(rs.getDate(settedYearMonth),HttpStatus.OK);
		}
}
