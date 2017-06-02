//package UIT.SE325H22.Group2.service;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//import UIT.SE325H22.Group2.dao.ExerciseDetailDao;
//import UIT.SE325H22.Group2.model.ExerciseDetail;
//
//@Service("exerciseDetailService")
//public class ExerciseDetailService{
//	@Autowired
//	ExerciseDetailDao exerciseDetailDao;
//	
//	@Transactional
//	public List<ExerciseDetail> getAllExerciseDetails() {
//		return exerciseDetailDao.getAllExerciseDetails();
//	}
//
//	@Transactional
//	public ExerciseDetail getExerciseDetail(int id) {
//		return exerciseDetailDao.getExerciseDetail(id);
//	}
//
//	@Transactional
//	public void addExerciseDetail(ExerciseDetail exerciseDetail) {
//		exerciseDetailDao.addExerciseDetail(exerciseDetail);
//	}
//
//	@Transactional
//	public void updateExerciseDetail(ExerciseDetail exerciseDetail) {
//		exerciseDetailDao.updateExerciseDetail(exerciseDetail);
//	}
//
//	@Transactional
//	public void deleteExerciseDetail(int id) {
//		exerciseDetailDao.deleteExerciseDetail(id);
//	}
//}
