package UIT.SE325H22.Group2.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class ScheduleLession extends Base {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLessionId() {
		return lessionId;
	}
	public void setLessionId(String lessionId) {
		this.lessionId = lessionId;
	}
	public String getScheduleId() {
		return scheduleId;
	}
	public void setScheduleId(String scheduleId) {
		this.scheduleId = scheduleId;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getWeek() {
		return week;
	}
	public void setWeek(String week) {
		this.week = week;
	}
	public String getScheduleLessionInfo() {
		return scheduleLessionInfo;
	}
	public void setScheduleLessionInfo(String scheduleLessionInfo) {
		this.scheduleLessionInfo = scheduleLessionInfo;
	}
	@Column(name = "lession_id")
	private String lessionId;
	@Column(name = "schedule_id")
	private String scheduleId;
	@Column(name = "thu")
	private String day;
	@Column(name = "tuan")
	private String week;
	@Column(name = "schedule_lession_info")
	private String scheduleLessionInfo;
}
