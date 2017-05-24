//package UIT.SE325H22.Group2.service.impl;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Propagation;
//import org.springframework.transaction.annotation.Transactional;
//
//import UIT.SE325H22.Group2.dao.impl.ExerciseDetailDao;
//import UIT.SE325H22.Group2.dao.intf.IGenericDao;
//import UIT.SE325H22.Group2.model.ExerciseDetail;
//import UIT.SE325H22.Group2.service.intf.IExerciseDetailService;
//
//@Service("exerciseDetailService")
//public class ExerciseDetailService extends GenericServiceImpl<ExerciseDetail, Integer>
//		implements IExerciseDetailService {
//
////	private ExerciseDetailDao exDao;
////
////	public ExerciseDetailService() {}
////
////	@Autowired
////	public ExerciseDetailService(@Qualifier("exerciseDetailDao") IGenericDao<ExerciseDetail, Integer> genericDao) {
////		super(genericDao);
////		this.exDao = (ExerciseDetailDao) genericDao;
////	}
////
////	@Override
////	@Transactional(propagation = Propagation.REQUIRED)
////	public void AbcService() {
////		exDao.Abc();
////	}
//
//}
