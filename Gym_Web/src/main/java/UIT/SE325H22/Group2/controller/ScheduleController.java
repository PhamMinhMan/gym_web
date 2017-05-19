package UIT.SE325H22.Group2.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import UIT.SE325H22.Group2.model.Schedule;
import UIT.SE325H22.Group2.service.impl.ScheduleService;

@RestController
public class ScheduleController {
//	@Autowired
//	ScheduleService scheduleService;
//	
//	@RequestMapping(value = "/schedule/getAll", method = RequestMethod.GET, headers = "Accept=application/json")
//	public List<Schedule> getSchedules() {
//		List<Schedule> exDetails = scheduleService.getAll();
//		return exDetails;
//	}
//
//	@RequestMapping(value = "/schedule/get/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
//	public Schedule getScheduleById(@PathVariable ("id") int id) {
//		return scheduleService.get(id);
//	}
//
//	@RequestMapping(value = "/schedule/insert", method = RequestMethod.POST, headers = "Accept=application/json")
//	public void insertSchedule(@RequestBody Schedule exDetail) {	
//		scheduleService.insert(exDetail);
//	}
//
//	@RequestMapping(value = "/schedule/update", method = RequestMethod.PUT, headers = "Accept=application/json")
//	public void updateSchedule(@RequestBody Schedule exDetail) {
//		scheduleService.update(exDetail);
//	}
//
//	@RequestMapping(value = "/schedule/delete", method = RequestMethod.DELETE, headers = "Accept=application/json")
//	public void deleteSchedule(@RequestBody Schedule exDetail) {
//		scheduleService.delete(exDetail);		
//	}
}
