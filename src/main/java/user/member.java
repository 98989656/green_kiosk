package user;

public class member {

	private int mem_no; 			// 유저고유번호
	private String mem_id; 			// 아이디
	private String mem_pw; 			// 비밀번호
	private String mem_name; 		// 이름
	private String mem_phone; 		// 휴대폰번호
	private String mem_ac; 			// 계정타입
	private int mem_mile; 			// 마일리지
	private String mem_coupon1; 	// 소유중인 쿠폰

	public int getMem_no() {
		return mem_no;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_phone() {
		return mem_phone;
	}

	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}

	public String getMem_ac() {
		return mem_ac;
	}

	public void setMem_ac(String mem_ac) {
		this.mem_ac = mem_ac;
	}

	public int getMem_mile() {
		return mem_mile;
	}

	public void setMem_mile(int mem_mile) {
		this.mem_mile = mem_mile;
	}

	public String getMem_coupon1() {
		return mem_coupon1;
	}

	public void setMem_coupon1(String mem_coupon1) {
		this.mem_coupon1 = mem_coupon1;
	}

}