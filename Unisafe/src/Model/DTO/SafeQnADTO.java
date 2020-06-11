package Model.DTO;

import java.sql.Timestamp;

public class SafeQnADTO 
{
	Integer qnaNum;
	String userId;
	String userName;
	String qnaPass;
	String qnaSubject;
	String qnaContent;
	Timestamp qnaDate;
	public Integer getQnaNum() {
		return qnaNum;
	}
	public void setQnaNum(Integer qnaNum) {
		this.qnaNum = qnaNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getQnaPass() {
		return qnaPass;
	}
	public void setQnaPass(String qnaPass) {
		this.qnaPass = qnaPass;
	}
	public String getQnaSubject() {
		return qnaSubject;
	}
	public void setQnaSubject(String qnaSubject) {
		this.qnaSubject = qnaSubject;
	}
	public String getQnaContent() {
		return qnaContent;
	}
	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}
	public Timestamp getQnaDate() {
		return qnaDate;
	}
	public void setQnaDate(Timestamp qnaDate) {
		this.qnaDate = qnaDate;
	}
}
