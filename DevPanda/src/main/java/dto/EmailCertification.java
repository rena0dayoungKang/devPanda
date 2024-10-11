package dto;

public class EmailCertification {
	
	
	private Long emailCertificationNum;
	private String id;
	private String email;
	private String certification;
	public Long getEmailCertificationNum() {
		return emailCertificationNum;
	}
	public void setEmailCertificationNum(Long emailCertificationNum) {
		emailCertificationNum = emailCertificationNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCertification() {
		return certification;
	}
	public void setCertification(String certification) {
		this.certification = certification;
	}


}
