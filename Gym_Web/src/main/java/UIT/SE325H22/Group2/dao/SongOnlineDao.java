package UIT.SE325H22.Group2.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import UIT.SE325H22.Group2.model.SongOnline;
@Repository
public class SongOnlineDao {
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public List<SongOnline> getAllSongOnlines() {
		Session session = this.sessionFactory.getCurrentSession();
		List<SongOnline> songOnlineList = session.createQuery("from SongOnline").list();
		return songOnlineList;
	}

	public SongOnline getSongOnline(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		SongOnline songOnline = (SongOnline) session.get(SongOnline.class, new Integer(id));
		return songOnline;
	}

	public SongOnline addSongOnline(SongOnline songOnline) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(songOnline);
		return songOnline;
	}

	public void updateSongOnline(SongOnline songOnline) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(songOnline);
	}

	public void deleteSongOnline(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		SongOnline p = (SongOnline) session.get(SongOnline.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
	}
}
