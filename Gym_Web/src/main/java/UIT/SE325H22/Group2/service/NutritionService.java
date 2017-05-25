package UIT.SE325H22.Group2.service;

import java.util.List;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import UIT.SE325H22.Group2.dao.NutritionDao;
import UIT.SE325H22.Group2.model.Nutrition;
import UIT.SE325H22.Group2.service.intf.INutritionService;
import UIT.SE325H22.Group2.viewmodel.Mapper;

@Service("nutritionService")
public class NutritionService{
	@Autowired
	NutritionDao nutritionDao;
	
	@Transactional
	public List<Nutrition> getAllNutritions() {
		return nutritionDao.getAllNutritions();
	}

	@Transactional
	public Nutrition getNutrition(int id) {
		return nutritionDao.getNutrition(id);
	}

	@Transactional
	public void addNutrition(Nutrition nutrition) {
		nutritionDao.addNutrition(nutrition);
	}

	@Transactional
	public void updateNutrition(Nutrition nutrition) {
		nutritionDao.updateNutrition(nutrition);
	}

	@Transactional
	public void deleteNutrition(int id) {
		nutritionDao.deleteNutrition(id);
	}
	
//	@Transactional
//	public ArrayList<NutritionComboboxViewModel> getNutritionsCombobox() throws InstantiationException, IllegalAccessException {
//		return Mapper.copy((ArrayList<Nutrition>)nutritionDao.getAllNutritions(), NutritionComboboxViewModel.class, null) ;
//	}
}
