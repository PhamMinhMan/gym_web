package UIT.SE325H22.Group2.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import UIT.SE325H22.Group2.dao.impl.MuscleTypeDao;
import UIT.SE325H22.Group2.model.MuscleType;
import UIT.SE325H22.Group2.service.intf.IMuscleTypeService;
import UIT.SE325H22.Group2.viewmodel.Mapper;
import UIT.SE325H22.Group2.viewmodel.MuscleTypeViewModel;


public class MuscleTypeService extends GenericServiceImpl<MuscleType, Integer> implements IMuscleTypeService{

	@Autowired
	private MuscleTypeDao muscleTypeDao;
	
	@Override
	public List<MuscleTypeViewModel> GetAllMuscleType() {
		List<MuscleType> muscleTypes = muscleTypeDao.getAll();
		try {
			List<MuscleTypeViewModel> viewModels = Mapper.copyList(muscleTypes, MuscleTypeViewModel.class, null);
		} catch (InstantiationException | IllegalAccessException e) {
			e.printStackTrace();
		}
		return null;
	}

}
