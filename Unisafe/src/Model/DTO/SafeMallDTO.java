package Model.DTO;

import java.sql.Timestamp;

public class SafeMallDTO 
{
	String goodsSeq;
	String goodsNum;
	String userId;
	String goodsName;
	Integer goodsPrice;
	Integer goodsQty;
	String goodsContent;
	String goodsImage;
	String goodsImage1;
	String goodsImage2;
	String goodsImage3;
	public String getGoodsImage1() {
		return goodsImage1;
	}
	public void setGoodsImage1(String goodsImage1) {
		this.goodsImage1 = goodsImage1;
	}
	public String getGoodsImage2() {
		return goodsImage2;
	}
	public void setGoodsImage2(String goodsImage2) {
		this.goodsImage2 = goodsImage2;
	}
	public String getGoodsImage3() {
		return goodsImage3;
	}
	public void setGoodsImage3(String goodsImage3) {
		this.goodsImage3 = goodsImage3;
	}
	Timestamp goodsRegister;
	Integer goodsVisit;
	String goodsKind;
	
	public SafeMallDTO() {}
	
	public SafeMallDTO(String goodsSeq, String goodsNum, String userId, String goodsName, Integer goodsPrice,
			Integer goodsQty, String goodsContent, String goodsImage,String goodsImage1,String goodsImage2,String goodsImage3,  Integer goodsVisit,String goodsKind){
		super();
		this.goodsSeq = goodsSeq;
		this.goodsNum = goodsNum;
		this.userId = userId;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsQty = goodsQty;
		this.goodsContent = goodsContent;
		this.goodsImage = goodsImage;
		this.goodsImage1 = goodsImage1;
		this.goodsImage2 = goodsImage2;
		this.goodsImage3 = goodsImage3;
		this.goodsVisit = goodsVisit;
		this.goodsKind = goodsKind;
		
	}
	public String getGoodsSeq() {
		return goodsSeq;
	}
	public void setGoodsSeq(String goodsSeq) {
		this.goodsSeq = goodsSeq;
	}
	public String getGoodsNum() {
		return goodsNum;
	}
	public void setGoodsNum(String goodsNum) {
		this.goodsNum = goodsNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public Integer getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(Integer goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public Integer getGoodsQty() {
		return goodsQty;
	}
	public void setGoodsQty(Integer goodsQty) {
		this.goodsQty = goodsQty;
	}
	public String getGoodsContent() {
		return goodsContent;
	}
	public void setGoodsContent(String goodsContent) {
		this.goodsContent = goodsContent;
	}
	public String getGoodsImage() {
		return goodsImage;
	}
	public void setGoodsImage(String goodsImage) {
		this.goodsImage = goodsImage;
	}
	public Timestamp getGoodsRegister() {
		return goodsRegister;
	}
	public void setGoodsRegister(Timestamp goodsRegister) {
		this.goodsRegister = goodsRegister;
	}
	public Integer getGoodsVisit() {
		return goodsVisit;
	}
	public void setGoodsVisit(Integer goodsVisit) {
		this.goodsVisit = goodsVisit;
	}
	public String getGoodsKind() {
		return goodsKind;
	}
	public void setGoodsKind(String goodsKind) {
		this.goodsKind = goodsKind;
	}
	
}
