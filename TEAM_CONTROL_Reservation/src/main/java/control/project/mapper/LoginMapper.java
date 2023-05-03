package control.project.mapper;

import control.project.model.AdminLoginVO;

public interface LoginMapper {
	// 로그인 확인 0502
	public AdminLoginVO adminLogin(AdminLoginVO account);

}
