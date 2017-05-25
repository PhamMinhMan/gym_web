package UIT.SE325H22.Group2.dao.intf;

import java.util.List;

import UIT.SE325H22.Group2.model.Nutrition;

public interface INutritionDao{
	public List<Nutrition> getAllNutritions();
	public Nutrition getNutrition(int id);
	public Nutrition addNutrition(Nutrition lession);
	public void updateNutrition(Nutrition lession);
	public void deleteNutrition(int id);
}
