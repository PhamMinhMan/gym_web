package UIT.SE325H22.Group2.service.impl;

import org.springframework.stereotype.Service;

import UIT.SE325H22.Group2.model.Nutrition;
import UIT.SE325H22.Group2.service.intf.INutritionService;
@Service("nutritionService")
public class NutritionService extends GenericServiceImpl<Nutrition, Integer> implements INutritionService{

}
