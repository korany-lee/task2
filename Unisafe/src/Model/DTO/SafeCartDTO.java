package Model.DTO;

import java.io.Serializable;

public class SafeCartDTO 
{
	String goodsSeq;
	String userId;
	Integer goodsPrice;
	String goodsName;
	String goodsImage;
	Integer qty;
	
	
	public String getGoodsSeq() {
		return goodsSeq;
	}
	public void setGoodsSeq(String goodsSeq) {
		this.goodsSeq = goodsSeq;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Integer getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(Integer goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getGoodsImage() {
		return goodsImage;
	}
	public void setGoodsImage(String goodsImage) {
		this.goodsImage = goodsImage;
	}
	public Integer getQty() {
		return qty;
	}
	public void setQty(Integer qty) {
		this.qty = qty;
	}
	
}
