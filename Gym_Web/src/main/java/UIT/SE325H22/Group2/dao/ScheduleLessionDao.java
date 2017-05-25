package UIT.SE325H22.Group2.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import UIT.SE325H22.Group2.model.ScheduleLession;
@Repository
public class ScheduleLessionDao {
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public List<ScheduleLession> getAllScheduleLessions() {
		Session session = this.sessionFactory.getCurrentSession();
		List<ScheduleLession> ScheduleLessionList = session.createQuery("from ScheduleLession").list();
		return ScheduleLessionList;
	}

	public ScheduleLession getScheduleLession(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		ScheduleLession ScheduleLession = (ScheduleLession) session.get(ScheduleLession.class, new Integer(id));
		return ScheduleLession;
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
		ScheduleLession p = (ScheduleLession) session.get(ScheduleLession.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
	}
}
