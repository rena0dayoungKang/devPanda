package com.kosta.devpanda.dto;

public class Bid {

	private Long bidNum;
	private String buyerId;			//buyerCompanyId
	private String buyPersonId;		//buyerPersonId
	private Integer auctionNum;
	private String sellerId;
	private String bidDate;
	private Long bidPrice;
	private Integer bidState;		//0(거래종료),1(거래중),2(낙찰),3(즉시낙찰)
	private String memType;
	
	public Long getBidNum() {
		return bidNum;
	}
	public void setBidNum(Long bidNum) {
		this.bidNum = bidNum;
	}
	public String getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(String buyerId) {
		this.buyerId = buyerId;
	}
	public String getBuyPersonId() {
		return buyPersonId;
	}
	public void setBuyPersonId(String buyPersonId) {
		this.buyPersonId = buyPersonId;
	}
	public Integer getAuctionNum() {
		return auctionNum;
	}
	public void setAuctionNum(Integer auctionNum) {
		this.auctionNum = auctionNum;
	}
	public String getSellerId() {
		return sellerId;
	}
	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}
	public String getBidDate() {
		return bidDate;
	}
	public void setBidDate(String bidDate) {
		this.bidDate = bidDate;
	}
	public Long getBidPrice() {
		return bidPrice;
	}
	public void setBidPrice(Long bidPrice) {
		this.bidPrice = bidPrice;
	}
	public Integer getBidState() {
		return bidState;
	}
	public void setBidState(Integer bidState) {
		this.bidState = bidState;
	}
	public String getMemType() {
		return memType;
	}
	public void setMemType(String memType) {
		this.memType = memType;
	}
	public Bid(Long bidNum, String buyerId, String buyPersonId, Integer auctionNum, String sellerId, String bidDate,
			Long bidPrice, Integer bidState, String memType) {
		super();
		this.bidNum = bidNum;
		this.buyerId = buyerId;
		this.buyPersonId = buyPersonId;
		this.auctionNum = auctionNum;
		this.sellerId = sellerId;
		this.bidDate = bidDate;
		this.bidPrice = bidPrice;
		this.bidState = bidState;
		this.memType = memType;
	}
	public Bid() {
		super();
	}
	@Override
	public String toString() {
		return "Bid [bidNum=" + bidNum + ", buyerId=" + buyerId + ", buyPersonId=" + buyPersonId + ", auctionNum="
				+ auctionNum + ", sellerId=" + sellerId + ", bidDate=" + bidDate + ", bidPrice=" + bidPrice
				+ ", bidState=" + bidState + ", memType=" + memType + "]";
	}
	

}
