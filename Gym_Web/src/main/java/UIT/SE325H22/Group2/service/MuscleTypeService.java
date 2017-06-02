//package UIT.SE325H22.Group2.service;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import UIT.SE325H22.Group2.dao.MuscleTypeDao;
//import UIT.SE325H22.Group2.model.MuscleType;
//
//@Service("muscleTypeService")
//public class MuscleTypeService {
//	@Autowired
//	MuscleTypeDao muscleTypeDao;
//	
//	@Transactional
//	public List<MuscleType> getAllMuscleTypes() {
//		return muscleTypeDao.getAllMuscleTypes();
//	}
//
//	@Transactional
//	public MuscleType getMuscleType(int id) {
//		return muscleTypeDao.getMuscleType(id);
//	}
//
//	@Transactional
//	public void addMuscleType(MuscleType muscleType) {
//		muscleTypeDao.addMuscleType(muscleType);
//	}
//
//	@Transactional
//	public void updateMuscleType(MuscleType muscleType) {
//		muscleTypeDao.updateMuscleType(muscleType);
//	}
//
//	@Transactional
//	public void deleteMuscleType(int id) {
//		muscleTypeDao.deleteMuscleType(id);
//	}
//}
