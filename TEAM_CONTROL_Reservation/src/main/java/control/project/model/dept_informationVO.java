package control.project.model;

public class dept_informationVO {
	private String doctorImg;
	private String medicalDept;
	private String doctor;
	private String specialty;
	

	public String getDoctorImg() {
		return doctorImg;
	}
	public void setDoctorImg(String doctorImg) {
		this.doctorImg = doctorImg;
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
	
	
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	

	@Override
	public String toString() {
		return "dept_informationVO > medicalDept="+medicalDept+", doctor="+doctor+", doctorImg="+doctorImg+", specialty="+specialty;
	}
	
}
