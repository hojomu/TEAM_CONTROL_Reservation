package control.project.service;

import control.project.model.AdminLoginVO;

public interface LoginService {
	// 로그인 확인 0502
	public AdminLoginVO adminLogin(AdminLoginVO account);
}
