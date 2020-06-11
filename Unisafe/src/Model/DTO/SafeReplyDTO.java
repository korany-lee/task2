package Model.DTO;

import java.sql.Timestamp;

public class SafeReplyDTO 
{
	Integer qnaNum;
	Integer replyNum;
	String userId;
	String userName;
	
	String replySubject;
	String replyContent;
	Timestamp replyDate;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Integer getQnaNum() {
		return qnaNum;
	}
	public void setQnaNum(Integer qnaNum) {
		this.qnaNum = qnaNum;
	}
	public Integer getReplyNum() {
		return replyNum;
	}
	public void setReplyNum(Integer replyNum) {
		this.replyNum = replyNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getReplySubject() {
		return replySubject;
	}
	public void setReplySubject(String replySubject) {
		this.replySubject = replySubject;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public Timestamp getReplyDate() {
		return replyDate;
	}
	public void setReplyDate(Timestamp replyDate) {
		this.replyDate = replyDate;
	}
}
