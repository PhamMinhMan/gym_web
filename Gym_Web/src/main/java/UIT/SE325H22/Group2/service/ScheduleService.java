package UIT.SE325H22.Group2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import UIT.SE325H22.Group2.dao.ScheduleDao;
import UIT.SE325H22.Group2.dao.ScheduleLessionDao;
import UIT.SE325H22.Group2.model.Schedule;
import UIT.SE325H22.Group2.model.ScheduleLession;
import UIT.SE325H22.Group2.viewmodel.Mapper;
import UIT.SE325H22.Group2.viewmodel.ScheduleViewModel;
import UIT.SE325H22.Group2.viewmodel.ScheduleLessionAdmin.DayViewModel;
import UIT.SE325H22.Group2.viewmodel.ScheduleLessionAdmin.LessionViewModel;
import UIT.SE325H22.Group2.viewmodel.ScheduleLessionAdmin.ScheduleLessionViewModel;

@Service("scheduleService")
public class ScheduleService {
	@Autowired
	ScheduleDao scheduleDao;
	@Autowired
	ScheduleLessionDao scheduleLessionDao;

	@Transactional
	public List<Schedule> getAllSchedules() {
		return scheduleDao.getAllSchedules();
	}

	@Transactional
	public Schedule getSchedule(int id) {
		return scheduleDao.getSchedule(id);
	}

	@Transactional
	public void addSchedule(Schedule schedule) {
		scheduleDao.addSchedule(schedule);
	}

	@Transactional
	public void updateSchedule(Schedule schedule) {
		scheduleDao.updateSchedule(schedule);
	}

	@Transactional
	public void deleteSchedule(int id) {
		scheduleDao.deleteSchedule(id);
	}

	@Transactional
	public void addScheduleLession(ScheduleLessionViewModel scheduleLesionViewModel) {
		Schedule schedule;
		try {
			schedule = Mapper.copy(scheduleLesionViewModel, Schedule.class, null);
			schedule = scheduleDao.addSchedule(schedule);

			for (int iWeek = 0; iWeek < scheduleLesionViewModel.getWeeks().size(); iWeek++) {
				for(int iDay = 0; iDay < scheduleLesionViewModel.getWeeks().get(iWeek).getDays().size();iDay++){
					DayViewModel day = scheduleLesionViewModel.getWeeks().get(iWeek).getDays().get(iDay);
					for(LessionViewModel lession : day.getLessions()){
						ScheduleLession scheduleLession = Mapper.copy(day, ScheduleLession.class, null);
						
						scheduleLession.setDay(iDay+1);
						scheduleLession.setWeek(iWeek+1);
						scheduleLession.setLessionId(lession.getId());
						scheduleLession.setScheduleId(schedule.getId());
						scheduleLession = scheduleLessionDao.addScheduleLession(scheduleLession);
					}
				}
			}

		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
