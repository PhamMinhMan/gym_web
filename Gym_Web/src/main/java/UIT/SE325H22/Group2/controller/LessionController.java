package UIT.SE325H22.Group2.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import UIT.SE325H22.Group2.model.Lession;
import UIT.SE325H22.Group2.service.impl.LessionService;

@RestController
public class LessionController {
//	@Autowired
//	LessionService lessionService;
//	
//	@RequestMapping(value = "/lession/getAll", method = RequestMethod.GET, headers = "Accept=application/json")
//	public List<Lession> getLessions() {
//		List<Lession> exDetails = lessionService.getAll();
//		return exDetails;
//	}
//
//	@RequestMapping(value = "/lession/get/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
//	public Lession getLessionById(@PathVariable ("id") int id) {
//		return lessionService.get(id);
//	}
//
//	@RequestMapping(value = "/lession/insert", method = RequestMethod.POST, headers = "Accept=application/json")
//	public void insertLession(@RequestBody Lession exDetail) {	
//		lessionService.insert(exDetail);
//	}
//
//	@RequestMapping(value = "/lession/update", method = RequestMethod.PUT, headers = "Accept=application/json")
//	public void updateLession(@RequestBody Lession exDetail) {
//		lessionService.update(exDetail);
//	}
//
//	@RequestMapping(value = "/lession/delete", method = RequestMethod.DELETE, headers = "Accept=application/json")
//	public void deleteLession(@RequestBody Lession exDetail) {
//		lessionService.delete(exDetail);		
//	}
}
