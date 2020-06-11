package Model.DTO;

import java.sql.Timestamp;

public class MemberDTO {
	String userId;
	String userPw;
	String userName;
	String userPh;
	String userEmail;
	Timestamp userBirth;
	Timestamp userRegist;
	String joinOk;
	String m9;
	String m10;
	String m11;
	String m12;
	String m1;
	String m2;
	
	


	public String getM9() {
		return m9;
	}
	public void setM9(String m9) {
		this.m9 = m9;
	}
	public String getM10() {
		return m10;
	}
	public void setM10(String m10) {
		this.m10 = m10;
	}
	public String getM11() {
		return m11;
	}
	public void setM11(String m11) {
		this.m11 = m11;
	}
	public String getM12() {
		return m12;
	}
	public void setM12(String m12) {
		this.m12 = m12;
	}
	public String getM1() {
		return m1;
	}
	public void setM1(String m1) {
		this.m1 = m1;
	}
	public String getM2() {
		return m2;
	}
	public void setM2(String m2) {
		this.m2 = m2;
	}
	public String getUserPh() {
		return userPh;
	}
	public void setUserPh(String userPh) {
		this.userPh = userPh;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Timestamp getUserBirth() {
		return userBirth;
	}
	public void setUserBirth(Timestamp userBirth) {
		this.userBirth = userBirth;
	}
	public Timestamp getUserRegist() {
		return userRegist;
	}
	public void setUserRegist(Timestamp userRegist) {
		this.userRegist = userRegist;
	}
	public String getJoinOk() {
		return joinOk;
	}
	public void setJoinOk(String joinOk) {
		this.joinOk = joinOk;
	}
	
}
