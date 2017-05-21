package UIT.SE325H22.Group2.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import UIT.SE325H22.Group2.model.Lession;
import UIT.SE325H22.Group2.service.LessionService;

@RestController
public class LessionController {
	@Autowired
	LessionService lessionService;
	
	@RequestMapping(value = "/getAllLessions", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<Lession> getLessions() {
		List<Lession> lessions = lessionService.getAllLessions();
		return lessions;
	}

	@RequestMapping(value = "/getLession/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public Lession getLessionById(@PathVariable ("id") int id) {
		//return new Lession();
		return lessionService.getLession(id);
	}
	
	@RequestMapping(value = "/getLessionsById/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<Lession> getLessionsById(@PathVariable ("id") int id) {
		//return new Lession();
		List<Lession> lessions = lessionService.getAllLessions();
		List<Lession> lessionsById = new ArrayList<Lession>();
		for(Lession lession : lessions ){
			if(lession.getId() == id)
				lessionsById.add(lession);
		}
		return lessionsById;
	}

	@RequestMapping(value = "/addLession", method = RequestMethod.POST, headers = "Accept=application/json")
	public void addLession(@RequestBody Lession lession) {	
		lessionService.addLession(lession);
	}

	@RequestMapping(value = "/updateLession", method = RequestMethod.PUT, headers = "Accept=application/json")
	public void updateLession(@RequestBody Lession lession) {
		lessionService.updateLession(lession);
	}

	@RequestMapping(value = "/deleteLession/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
	public void deleteLession(@PathVariable("id") int id) {
		lessionService.deleteLession(id);
	}
}
