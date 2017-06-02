//package UIT.SE325H22.Group2.dao;
//
//import java.util.List;
//
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Repository;
//
//import UIT.SE325H22.Group2.model.MuscleType;
//@Repository
//public class MuscleTypeDao {
//	@Autowired
//	private SessionFactory sessionFactory;
//
//	public void setSessionFactory(SessionFactory sf) {
//		this.sessionFactory = sf;
//	}
//
//	public List<MuscleType> getAllMuscleTypes() {
//		Session session = this.sessionFactory.getCurrentSession();
//		List<MuscleType> muscleTypeList = session.createQuery("from MuscleType").list();
//		return muscleTypeList;
//	}
//
//	public MuscleType getMuscleType(int id) {
//		Session session = this.sessionFactory.getCurrentSession();
//		MuscleType muscleType = (MuscleType) session.get(MuscleType.class, new Integer(id));
//		return muscleType;
//	}
//
//	public MuscleType addMuscleType(MuscleType muscleType) {
//		Session session = this.sessionFactory.getCurrentSession();
//		session.persist(muscleType);
//		return muscleType;
//	}
//
//	public void updateMuscleType(MuscleType muscleType) {
//		Session session = this.sessionFactory.getCurrentSession();
//		session.update(muscleType);
//	}
//
//	public void deleteMuscleType(int id) {
//		Session session = this.sessionFactory.getCurrentSession();
//		MuscleType p = (MuscleType) session.get(MuscleType.class, new Integer(id));
//		if (null != p) {
//			session.delete(p);
//		}
//	}
//}
