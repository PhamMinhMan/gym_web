package UIT.SE325H22.Group2.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import UIT.SE325H22.Group2.model.Schedule;
@Repository
public class ScheduleDao {
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public List<Schedule> getAllSchedules() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Schedule> ScheduleList = session.createQuery("from Schedule").list();
		return ScheduleList;
	}

	public Schedule getSchedule(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Schedule Schedule = (Schedule) session.get(Schedule.class, new Integer(id));
		return Schedule;
	}

	public Schedule addSchedule(Schedule schedule) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(schedule);
		return schedule;
	}

	public void updateSchedule(Schedule schedule) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(schedule);
	}

	public void deleteSchedule(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Schedule p = (Schedule) session.get(Schedule.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
	}
}
