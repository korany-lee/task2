package Model.DTO;

import java.sql.Timestamp;

public class SafeReviewDTO 
{
	String userId;
	String userName;
	String reviewPass;
	String reviewImage;
	String reviewSubject;
	String reviewContent;
	Integer reviewCount;
	String userSatis;
	Integer reviewNum;
	Timestamp reviewDate;
	
	
	
	public Timestamp getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Timestamp reviewDate) {
		this.reviewDate = reviewDate;
	}
	public Integer getReviewNum() {
		return reviewNum;
	}
	public void setReviewNum(Integer reviewNum) {
		this.reviewNum = reviewNum;
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
	public String getReviewPass() {
		return reviewPass;
	}
	public void setReviewPass(String reviewPass) {
		this.reviewPass = reviewPass;
	}
	public String getReviewImage() {
		return reviewImage;
	}
	public void setReviewImage(String reviewImage) {
		this.reviewImage = reviewImage;
	}
	public String getReviewSubject() {
		return reviewSubject;
	}
	public void setReviewSubject(String reviewSubject) {
		this.reviewSubject = reviewSubject;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public Integer getReviewCount() {
		return reviewCount;
	}
	public void setReviewCount(Integer reviewCount) {
		this.reviewCount = reviewCount;
	}
	public String getUserSatis() {
		return userSatis;
	}
	public void setUserSatis(String userSatis) {
		this.userSatis = userSatis;
	}
}