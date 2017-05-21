package UIT.SE325H22.Group2.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import UIT.SE325H22.Group2.model.Lession;
@Repository
public class LessionDao {
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public List<Lession> getAllLessions() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Lession> lessionList = session.createQuery("from Lession").list();
		return lessionList;
	}

	public Lession getLession(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Lession lession = (Lession) session.get(Lession.class, new Integer(id));
		return lession;
	}

	public Lession addLession(Lession lession) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(lession);
		return lession;
	}

	public void updateLession(Lession lession) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(lession);
	}

	public void deleteLession(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Lession p = (Lession) session.get(Lession.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
	}
}
