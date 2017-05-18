package UIT.SE325H22.Group2.model;

import java.util.Date;

import javax.persistence.Column;

public class Base {
	@Column(name="isDeleted")
	private boolean isDeleted;
	@Column(name="createdDate")
	private Date createdDate;
	@Column(name="createdBy")
	private String createdBy;
	@Column(name="modifiedDate")
	private Date modifiedDate;
	@Column(name="modifiedBy")
	private String modifiedBy;
	public boolean isDeleted() {
		return isDeleted;
	}
	public void setDeleted(boolean isDeleted) {
		this.isDeleted = isDeleted;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public Date getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	public String getModifiedBy() {
		return modifiedBy;
	}
	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}
	
	
}
