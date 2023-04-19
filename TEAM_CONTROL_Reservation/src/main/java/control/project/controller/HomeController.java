package control.project.controller;


import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
// 접근제어자  반환타입  메서드명(매개변수, 매개변수)
	public String home(Locale locale, Model model) {
		return "home";
	}
	
	
	// 달력으로 이동하기
	@RequestMapping(value="/calendar", method = RequestMethod.GET)
	public String goCalendar() {
	return "Calendar1";
	}
	// index으로 이동하기
	@RequestMapping(value="/index", method = RequestMethod.GET)
	public String goindex() {
	return "index";
	}
	// ManagerCheck으로 이동하기
	@RequestMapping(value="/ManagerCheck", method = RequestMethod.GET)
	public String goManagerCheck() {
	return "ManagerCheck";
	}
	// ManagerCheckDetail으로 이동하기
	@RequestMapping(value="/ManagerCheckDetail", method = RequestMethod.GET)
	public String goManagerCheckDetail() {
	return "ManagerCheckDetail";
	}
	// UserCheck으로 이동하기
	@RequestMapping(value="/UserCheck", method = RequestMethod.GET)
	public String goUserCheck() {
	return "UserCheck";
	}
}
