package control.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.project.mapper.LoginMapper;
import control.project.model.AdminLoginVO;

@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	LoginMapper lm;
	
	// 로그인 확인 0502
	public AdminLoginVO adminLogin(AdminLoginVO account) {
		return lm.adminLogin(account);
	}

}
