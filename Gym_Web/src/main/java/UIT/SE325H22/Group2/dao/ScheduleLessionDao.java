package UIT.SE325H22.Group2.dao;

import java.util.List;

import UIT.SE325H22.Group2.model.ScheduleLession;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ScheduleLessionDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public List<ScheduleLession> getAllScheduleLessions() {
		Session session = this.sessionFactory.getCurrentSession();
		List<ScheduleLession> scheduleLessionList = session.createQuery("from ScheduleLession").list();
		return scheduleLessionList;
	}

	public ScheduleLession getScheduleLession(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		ScheduleLession scheduleLession = (ScheduleLession) session.load(ScheduleLession.class, new Integer(id));
		return scheduleLession;
	}

	public ScheduleLession addScheduleLession(ScheduleLession scheduleLession) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(scheduleLession);
		return scheduleLession;
	}

	public void updateScheduleLession(ScheduleLession scheduleLession) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(scheduleLession);
	}

	public void deleteScheduleLession(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		ScheduleLession p = (ScheduleLession) session.load(ScheduleLession.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
	}	
}
