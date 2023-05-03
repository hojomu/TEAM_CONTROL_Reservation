package control.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import control.project.model.AdminLoginVO;
import control.project.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	LoginService ls;
	
	// 로그인 확인 0502
	@RequestMapping(value="/adminLogin", method = RequestMethod.POST)
	public ResponseEntity<AdminLoginVO> adminLogin(@RequestBody AdminLoginVO account , HttpSession session){
		System.out.println(account);
		AdminLoginVO accountData = ls.adminLogin(account);
		System.out.println(accountData);
		
		if (accountData != null) {
			session.setAttribute("login", accountData);
		}
		
		return new ResponseEntity<AdminLoginVO>(accountData,HttpStatus.OK);
	}
	
	
	
	

}
