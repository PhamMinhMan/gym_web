package UIT.SE325H22.Group2.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import UIT.SE325H22.Group2.model.ExerciseDetail;

@Repository
public class ExerciseDetailDao {
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public List<ExerciseDetail> getAllExerciseDetails() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<ExerciseDetail> exerciseDetailList = session.createQuery("from ExerciseDetail").list();
		return exerciseDetailList;
	}

	public ExerciseDetail getExerciseDetail(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		ExerciseDetail exerciseDetail = (ExerciseDetail) session.get(ExerciseDetail.class, new Integer(id));
		return exerciseDetail;
	}

	public ExerciseDetail addExerciseDetail(ExerciseDetail exerciseDetail) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(exerciseDetail);
		return exerciseDetail;
	}

	public void updateExerciseDetail(ExerciseDetail exerciseDetail) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(exerciseDetail);
	}

	public void deleteExerciseDetail(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		ExerciseDetail p = (ExerciseDetail) session.get(ExerciseDetail.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
	}
}
