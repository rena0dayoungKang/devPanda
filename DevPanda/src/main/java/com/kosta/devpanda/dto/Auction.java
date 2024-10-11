package com.kosta.devpanda.dto;

public class Auction {
	
	private Long auctionNum;
	private String id;
	private String title;
	private String startDate;
	private String endDate;
	private String state; //'processing' or 'unprocessing' or 'success'}
	private Long startPrice;
	private Long minSalary;
	private Long maxSalary;
	private Long bidMaxPrice;
	private String occupation;
	private String period;
	private String education;
	private String employmentType;
	private String stack;
	private String certification;
	private String location;
	private String portfolio;
	
	
	public Long getAuctionNum() {
		return auctionNum;
	}
	public void setAuctionNum(Long auctionNum) {
		this.auctionNum = auctionNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Long getStartPrice() {
		return startPrice;
	}
	public void setStartPrice(Long startPrice) {
		this.startPrice = startPrice;
	}
	public Long getMinSalary() {
		return minSalary;
	}
	public void setMinSalary(Long minSalary) {
		this.minSalary = minSalary;
	}
	public Long getMaxSalary() {
		return maxSalary;
	}
	public void setMaxSalary(Long maxSalary) {
		this.maxSalary = maxSalary;
	}
	public Long getBidMaxPrice() {
		return bidMaxPrice;
	}
	public void setBidMaxPrice(Long bidMaxPrice) {
		this.bidMaxPrice = bidMaxPrice;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getEmploymentType() {
		return employmentType;
	}
	public void setEmploymentType(String employmentType) {
		this.employmentType = employmentType;
	}
	public String getStack() {
		return stack;
	}
	public void setStack(String stack) {
		this.stack = stack;
	}
	public String getCertification() {
		return certification;
	}
	public void setCertification(String certification) {
		this.certification = certification;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getPortfolio() {
		return portfolio;
	}
	public void setPortfolio(String portfolio) {
		this.portfolio = portfolio;
	}
	public Auction(Long auctionNum, String id, String title, String startDate, String endDate, String state,
			Long startPrice, Long minSalary, Long maxSalary, Long bidMaxPrice, String occupation,
			String period, String education, String employmentType, String stack, String certification, String location,
			String portfolio) {
		super();
		this.auctionNum = auctionNum;
		this.id = id;
		this.title = title;
		this.startDate = startDate;
		this.endDate = endDate;
		this.state = state;
		this.startPrice = startPrice;
		this.minSalary = minSalary;
		this.maxSalary = maxSalary;
		this.bidMaxPrice = bidMaxPrice;
		this.occupation = occupation;
		this.period = period;
		this.education = education;
		this.employmentType = employmentType;
		this.stack = stack;
		this.certification = certification;
		this.location = location;
		this.portfolio = portfolio;
	}
	public Auction() {
		super();
	}
	@Override
	public String toString() {
		return "Auction [auctionNum=" + auctionNum + ", id=" + id + ", title=" + title + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", state=" + state + ", startPrice=" + startPrice + ", minSalary="
				+ minSalary + ", maxSalary=" + maxSalary + ", bidMaxPrice=" + bidMaxPrice + ", occupation=" + occupation
				+ ", period=" + period + ", education=" + education + ", employmentType=" + employmentType + ", stack="
				+ stack + ", certification=" + certification + ", location=" + location + ", portfolio=" + portfolio
				+ "]";
	}

	
	
	

}