package UIT.SE325H22.Group2.viewmodel.ScheduleLessionAdmin;

import java.util.ArrayList;

public class ScheduleLessionViewModel {
	private ArrayList<WeekViewModel> weeks;
	private String scheduleName;
	private String scheduleImage;
	private String scheduleInfo;

	public ArrayList<WeekViewModel> getWeeks() {
		return weeks;
	}

	public void setWeeks(ArrayList<WeekViewModel> weeks) {
		this.weeks = weeks;
	}

	public String getScheduleImage() {
		return scheduleImage;
	}

	public void setScheduleImage(String scheduleImage) {
		this.scheduleImage = scheduleImage;
	}

	public String getScheduleInfo() {
		return scheduleInfo;
	}

	public void setScheduleInfo(String scheduleInfo) {
		this.scheduleInfo = scheduleInfo;
	}

	public String getScheduleName() {
		return scheduleName;
	}

	public void setScheduleName(String scheduleName) {
		this.scheduleName = scheduleName;
	}
}
