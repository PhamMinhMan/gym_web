package UIT.SE325H22.Group2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import UIT.SE325H22.Group2.dao.ScheduleDao;
import UIT.SE325H22.Group2.model.Schedule;

@Service("scheduleService")
public class ScheduleService {
	@Autowired
	ScheduleDao scheduleDao;
	
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
}
