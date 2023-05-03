package control.project.model;

public class PersonalNumVO {
	private String age;
	private String gender;
	
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	@Override
	public String toString() {
		return "PersonalNumVO > age = "+age+", gender = "+gender;
	}
	
}
