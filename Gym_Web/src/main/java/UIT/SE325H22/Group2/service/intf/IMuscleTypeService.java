package UIT.SE325H22.Group2.service.intf;


import java.util.ArrayList;
import java.util.List;

import UIT.SE325H22.Group2.model.MuscleType;
import UIT.SE325H22.Group2.viewmodel.MuscleTypeViewModel;

public interface IMuscleTypeService extends IGenericService<MuscleType,Integer>{
	List<MuscleTypeViewModel> GetAllMuscleType();
}
