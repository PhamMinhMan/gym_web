package UIT.SE325H22.Group2.viewmodel.ScheduleLessionAdmin;

import java.util.ArrayList;

public class DayViewModel {
	private ArrayList<LessionViewModel> lessions;
	private String scheduleLessionInfo;
	public String getScheduleLessionInfo() {
		return scheduleLessionInfo;
	}
	public void setScheduleLessionInfo(String scheduleLessionInfo) {
		this.scheduleLessionInfo = scheduleLessionInfo;
	}
	public ArrayList<LessionViewModel> getLessions() {
		return lessions;
	}
	public void setLessions(ArrayList<LessionViewModel> lessions) {
		this.lessions = lessions;
	}

	

}
