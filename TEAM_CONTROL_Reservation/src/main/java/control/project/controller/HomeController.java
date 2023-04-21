package control.project.controller;


import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import control.project.model.CriteriaVO;
import control.project.service.ReservationService;

/**
 * Handles requests for the application home page.
 */

@Controller
public class HomeController {
	
	@Autowired	
	ReservationService rs;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	// 메인화면으로 이동
	public String home(Locale locale, Model model) {
		return "home";
	}
	
	
	
	
	// 이동용 태그 추후에 삭제 예정
	// 달력으로 이동하기
	@RequestMapping(value="/Acalendar", method = RequestMethod.GET)
	public String goCalendar() {
	return "Calendar1";
	}
	// index으로 이동하기
	@RequestMapping(value="/Aindex", method = RequestMethod.GET)
	public String goindex() {
	return "index";
	}
	// ManagerCheckDetail으로 이동하기
	@RequestMapping(value="/AManagerCheckDetail", method = RequestMethod.GET)
	public String goManagerCheckDetail() {
	return "ManagerCheckDetail";
	}
	// UserCheck으로 이동하기
	@RequestMapping(value="/AUserCheck", method = RequestMethod.GET)
	public String goUserCheck() {
		return "UserCheck";
	}
	// reservation 으로 이동하기
	@RequestMapping(value="/Areservation", method = RequestMethod.GET)
	public String goreservation() {
		return "reservation";
	}
	// appointment1 로 이동하기
	@RequestMapping(value = "/Aappointment1", method = RequestMethod.GET) 
	public String goappointment1() {
		return "appointment1"; // 상세 예약 페이지로 이동할 것
	}
	// 예약정보 불러오기
	@RequestMapping(value="/AManagerCheck", method = RequestMethod.GET)
	public String goManagerCheck(Model model, CriteriaVO cri) {
		return "ManagerCheck";
	}
}
