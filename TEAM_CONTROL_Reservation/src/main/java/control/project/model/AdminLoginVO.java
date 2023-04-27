package control.project.model;

public class AdminLoginVO {
	private String adminId;
	private String adminPass;
	
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getAdminPass() {
		return adminPass;
	}
	public void setAdminPass(String adminPass) {
		this.adminPass = adminPass;
	}
	
	@Override
	public String toString() {
		return "ReservationVO > adminId = "+adminId+", adminPass = "+adminPass;
	}
}
