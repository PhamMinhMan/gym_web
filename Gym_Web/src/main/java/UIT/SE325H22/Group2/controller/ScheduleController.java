package UIT.SE325H22.Group2.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import UIT.SE325H22.Group2.model.Schedule;
import UIT.SE325H22.Group2.service.ScheduleService;
import UIT.SE325H22.Group2.viewmodel.Demo2;
import UIT.SE325H22.Group2.viewmodel.ScheduleLessionAdmin.ScheduleLessionViewModel;

@RestController
public class ScheduleController {
	@Autowired
	ScheduleService ScheduleService;
	
	@RequestMapping(value = "/getAllSchedules", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<Schedule> getSchedules() {
		List<Schedule> Schedules = ScheduleService.getAllSchedules();
		return Schedules;
	}

	@RequestMapping(value = "/getSchedule/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public Schedule getScheduleById(@PathVariable ("id") int id) {
		//return new Schedule();
		return ScheduleService.getSchedule(id);
	}

	@RequestMapping(value = "/addSchedule", method = RequestMethod.POST, headers = "Accept=application/json")
	public void addSchedule(@RequestBody Schedule Schedule) {	
		ScheduleService.addSchedule(Schedule);
	}
	
	@RequestMapping(value = "/addScheduleLession", method = RequestMethod.POST, headers = "Accept=application/json")
	public void addScheduleLession(@RequestBody ScheduleLessionViewModel scheduleLessionViewModel) {	
		ScheduleService.addScheduleLession(scheduleLessionViewModel);
	}

	@RequestMapping(value = "/updateSchedule", method = RequestMethod.PUT, headers = "Accept=application/json")
	public void updateSchedule(@RequestBody Schedule Schedule) {
		ScheduleService.updateSchedule(Schedule);
	}

	@RequestMapping(value = "/deleteSchedule/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
	public void deleteSchedule(@PathVariable("id") int id) {
		ScheduleService.deleteSchedule(id);
	}
}
