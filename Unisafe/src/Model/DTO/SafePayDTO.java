package Model.DTO;

import java.sql.Timestamp;

public class SafePayDTO 
{
	String userId;
	String userName;
	String totalMoney;
	String userPh;
	String userCard;
	String userCardNum;
	String userCardCvc;
	String userCardDate;
	String fabruary;
	String march;
	String april;
	String may;
	public String getFabruary() {
		return fabruary;
	}
	public void setFabruary(String fabruary) {
		this.fabruary = fabruary;
	}
	public String getMarch() {
		return march;
	}
	public void setMarch(String march) {
		this.march = march;
	}
	public String getApril() {
		return april;
	}
	public void setApril(String april) {
		this.april = april;
	}
	public String getMay() {
		return may;
	}
	public void setMay(String may) {
		this.may = may;
	}
	public String getUserPh() {
		return userPh;
	}
	public void setUserPh(String userPh) {
		this.userPh = userPh;
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
	public String getTotalMoney() {
		return totalMoney;
	}
	public void setTotalMoney(String totalMoney) {
		this.totalMoney = totalMoney;
	}
	
	public String getUserCard() {
		return userCard;
	}
	public void setUserCard(String userCard) {
		this.userCard = userCard;
	}
	public String getUserCardNum() {
		return userCardNum;
	}
	public void setUserCardNum(String userCardNum) {
		this.userCardNum = userCardNum;
	}
	public String getUserCardCvc() {
		return userCardCvc;
	}
	public void setUserCardCvc(String userCardCvc) {
		this.userCardCvc = userCardCvc;
	}
	public String getUserCardDate() {
		return userCardDate;
	}
	public void setUserCardDate(String userCardDate) {
		this.userCardDate = userCardDate;
	}
	
}
