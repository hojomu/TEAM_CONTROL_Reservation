package control.project.model;
// pageNum(페이지번호)과 amount(한페이지당 게시물 갯수) 값을 전달하는 Model
public class CriteriaVO {
	private int pageNum;	// 페이지번호
	private int amount;		// 한 페이지당 게시물 갯수
	private int skip;       // 스킵 할 게시물 수( (pageNum-1) * amount ) 0425
	
	private String keyword;	// 키워드를 통해 검색.
	private String type;	// 키워드 기준
	
	private String dept;    // 진료과
	private String doctor;  // 의료진
	private String date1;   // 검색일자1
	private String date2;   // 검색일자2
	
	// 생성자
	public CriteriaVO() {
		this(1,10);
	}
	public CriteriaVO(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.skip = (pageNum-1)*amount;  // 스킵 할 게시물 수( (pageNum-1) * amount ) 0425
	}
	
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
		this.skip=(pageNum-1)*this.amount; // 추가 0425
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
		this.skip=(pageNum-1)*this.amount; // 추가 0425
	}
	// 추가 0425
	public int getSkip() {
		return skip;
	}
	// 추가 0425
	public void setSkip(int skip) {
		this.skip = skip;
	}
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	// 추가 0428
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getDoctor() {
		return doctor;
	}
	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}
	public String getDate1() {
		return date1;
	}
	public void setDate1(String date1) {
		this.date1 = date1;
	}
	public String getDate2() {
		return date2;
	}
	public void setDate2(String date2) {
		this.date2 = date2;
	}
	
	
	@Override
	public String toString() {
		return "CriteriaVO [pageNum=" + pageNum + ", amount=" + amount + ", keyword=" + keyword + ", type=" + type
				+ ", skip=" + skip + ", doctor=" + doctor +  ", date1=" + date1 +  ", date2=" + date2 + "]";
	}	
}
