package UIT.SE325H22.Group2.dao.intf;

import java.util.List;

public interface IGenericDao<E,K> {
	public void insert(E entity) ;
    public void update(E entity) ;
    public void delete(E entity);
    public E getById(K key);
    public List<E> getAll() ;
}
