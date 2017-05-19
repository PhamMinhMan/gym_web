package UIT.SE325H22.Group2.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import UIT.SE325H22.Group2.model.MuscleType;
import UIT.SE325H22.Group2.service.impl.MuscleTypeService;

@RestController
public class MuscleTypeController {
//	@Autowired
//	MuscleTypeService muscleTypeService;
//	
//	@RequestMapping(value = "/muscleType/getAll", method = RequestMethod.GET, headers = "Accept=application/json")
//	public List<MuscleType> getMuscleTypes() {
//		List<MuscleType> exDetails = muscleTypeService.getAll();
//		return exDetails;
//	}
//
//	@RequestMapping(value = "/muscleType/get/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
//	public MuscleType getMuscleTypeById(@PathVariable ("id") int id) {
//		return muscleTypeService.get(id);
//	}
//
//	@RequestMapping(value = "/muscleType/insert", method = RequestMethod.POST, headers = "Accept=application/json")
//	public void insertMuscleType(@RequestBody MuscleType exDetail) {	
//		muscleTypeService.insert(exDetail);
//	}
//
//	@RequestMapping(value = "/muscleType/update", method = RequestMethod.PUT, headers = "Accept=application/json")
//	public void updateMuscleType(@RequestBody MuscleType exDetail) {
//		muscleTypeService.update(exDetail);
//	}
//
//	@RequestMapping(value = "/muscleType/delete", method = RequestMethod.DELETE, headers = "Accept=application/json")
//	public void deleteMuscleType(@RequestBody MuscleType exDetail) {
//		muscleTypeService.delete(exDetail);		
//	}
}
