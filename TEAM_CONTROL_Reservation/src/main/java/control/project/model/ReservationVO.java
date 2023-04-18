package control.project.model;

public class ReservationVO {
	private int rno;
	private String customerName;
	private String personalNumber;
	private String email;
	private String medicalDept;
	private String doctor;
	private String reservationTime;
	private String applyTime;
	private String otherInfo;
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getPersonalNumber() {
		return personalNumber;
	}
	public void setPersonalNumber(String personalNumber1, String personalNumber2) {
		this.personalNumber = personalNumber1+"-"+personalNumber2;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String emailId, String emailAdress) {
		this.email = emailId+"@"+emailAdress;
	}
	public String getMedicalDept() {
		return medicalDept;
	}
	public void setMedicalDept(String medicalDept) {
		this.medicalDept = medicalDept;
	}
	public String getDoctor() {
		return doctor;
	}
	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}
	public String getReservationTime() {
		return reservationTime;
	}
	public void setReservationTime(String reservationTime) {
		this.reservationTime = reservationTime;
	}
	public String getApplyTime() {
		return applyTime;
	}
	public void setApplyTime(String applyTime) {
		this.applyTime = applyTime;
	}
	public String getOtherInfo() {
		return otherInfo;
	}
	public void setOtherInfo(String otherInfo) {
		this.otherInfo = otherInfo;
	}
	
	@Override
	public String toString() {
		return "ReservationVO > rno="+rno+", customerName="+customerName+", personalNumber="+personalNumber+
				", email="+email+", medicalDept="+medicalDept+", doctor="+doctor+", reservationTime="+reservationTime+
				", applyTime="+applyTime+", otherInfo="+otherInfo;
	}
	
}
