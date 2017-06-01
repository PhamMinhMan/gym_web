package UIT.SE325H22.Group2.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import UIT.SE325H22.Group2.dao.impl.LessionDao;
import UIT.SE325H22.Group2.dao.intf.IGenericDao;
import UIT.SE325H22.Group2.dao.intf.ILessionDao;
import UIT.SE325H22.Group2.model.Lession;
import UIT.SE325H22.Group2.service.intf.ILessionService;

@Service
// ("lessionService")
public class LessionService extends GenericServiceImpl<Lession, Integer> implements ILessionService {
	private ILessionDao lessionDao;

	public LessionService() {
	}
	 @Autowired
	public LessionService(@Qualifier("lessionDao") IGenericDao<Lession, Integer> genericDao) {
		super(genericDao);
		this.lessionDao = (LessionDao) genericDao;

	}
}
