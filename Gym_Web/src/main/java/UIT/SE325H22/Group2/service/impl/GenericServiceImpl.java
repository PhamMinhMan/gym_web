package UIT.SE325H22.Group2.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import UIT.SE325H22.Group2.dao.intf.IGenericDao;
import UIT.SE325H22.Group2.service.intf.IGenericService;

public abstract class GenericServiceImpl<E, I> implements IGenericService<E, I> {
	@Autowired
	private IGenericDao<E, I> genericDao;

	public GenericServiceImpl(IGenericDao<E, I> genericDao) {
		this.genericDao = genericDao;
	}

	public GenericServiceImpl() {
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public List<E> getAll() {
		return genericDao.getAll();
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public E get(I id) {
		return genericDao.getById(id);
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void insert(E entity) {
		genericDao.insert(entity);
		
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void update(E entity) {
		genericDao.update(entity);
		
	}
	
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void deleteById(I id) {
//		genericDao.delete(get(id));
		
	}
	
	
}
