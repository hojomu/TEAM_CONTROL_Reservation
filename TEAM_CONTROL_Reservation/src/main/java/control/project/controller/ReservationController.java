package control.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import control.project.model.ReservationVO;
import control.project.service.ReservationService;

@Controller
public class ReservationController {
	
	@Autowired
	ReservationService rs;
	
	// 이메일, 이름, 주민등록번호 insert 페이지로 넘기기 ( post 방식 )
	@RequestMapping(value = "/test1", method = RequestMethod.POST) 
	public String agree(ReservationVO data, Model model) {
		System.out.println(data);
		model.addAttribute("reserveData",data);
		return "test1"; // 상세 예약 페이지로 이동할 것
	}

	
	// 예약 정보 저장하기 insert
	@RequestMapping(value = "/undefined2", method = RequestMethod.POST) 
	public String reserve(ReservationVO data) {
		rs.reserve(data);
		return "home"; // 예약 확인 페이지로 이동할 것
	}
	
	// 예약 정보 불러오기 select
	
}
