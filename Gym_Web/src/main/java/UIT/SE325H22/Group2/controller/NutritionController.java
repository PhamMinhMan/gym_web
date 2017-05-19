package UIT.SE325H22.Group2.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import UIT.SE325H22.Group2.model.Nutrition;
import UIT.SE325H22.Group2.service.impl.NutritionService;

@RestController
public class NutritionController {
//	@Autowired
//	NutritionService nutritionService;
//	
//	@RequestMapping(value = "/nutrition/getAll", method = RequestMethod.GET, headers = "Accept=application/json")
//	public List<Nutrition> getNutritions() {
//		List<Nutrition> exDetails = nutritionService.getAll();
//		return exDetails;
//	}
//
//	@RequestMapping(value = "/nutrition/get/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
//	public Nutrition getNutritionById(@PathVariable ("id") int id) {
//		return nutritionService.get(id);
//	}
//
//	@RequestMapping(value = "/nutrition/insert", method = RequestMethod.POST, headers = "Accept=application/json")
//	public void insertNutrition(@RequestBody Nutrition exDetail) {	
//		nutritionService.insert(exDetail);
//	}
//
//	@RequestMapping(value = "/nutrition/update", method = RequestMethod.PUT, headers = "Accept=application/json")
//	public void updateNutrition(@RequestBody Nutrition exDetail) {
//		nutritionService.update(exDetail);
//	}
//
//	@RequestMapping(value = "/nutrition/delete", method = RequestMethod.DELETE, headers = "Accept=application/json")
//	public void deleteNutrition(@RequestBody Nutrition exDetail) {
//		nutritionService.delete(exDetail);		
//	}
}
