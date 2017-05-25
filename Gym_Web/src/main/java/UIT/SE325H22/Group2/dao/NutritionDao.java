package UIT.SE325H22.Group2.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import UIT.SE325H22.Group2.dao.intf.INutritionDao;
import UIT.SE325H22.Group2.model.Nutrition;

@Repository
public class NutritionDao implements INutritionDao {
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public List<Nutrition> getAllNutritions() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Nutrition> nutritionList = session.createQuery("from Nutrition").list();
		return nutritionList;
	}

	public Nutrition getNutrition(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Nutrition nutrition = (Nutrition) session.get(Nutrition.class, new Integer(id));
		return nutrition;
	}

	public Nutrition addNutrition(Nutrition nutrition) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(nutrition);
		return nutrition;
	}

	public void updateNutrition(Nutrition nutrition) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(nutrition);
	}

	public void deleteNutrition(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Nutrition p = (Nutrition) session.get(Nutrition.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
	}
}
