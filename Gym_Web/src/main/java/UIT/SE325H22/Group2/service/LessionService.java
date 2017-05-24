package UIT.SE325H22.Group2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import UIT.SE325H22.Group2.dao.LessionDao;
import UIT.SE325H22.Group2.model.Lession;
import UIT.SE325H22.Group2.service.intf.ILessionService;

@Service("lessionService")
public class LessionService{
	@Autowired
	LessionDao lessionDao;
	
	@Transactional
	public List<Lession> getAllLessions() {
		return lessionDao.getAllLessions();
	}

	@Transactional
	public Lession getLession(int id) {
		return lessionDao.getLession(id);
	}

	@Transactional
	public void addLession(Lession lession) {
		lessionDao.addLession(lession);
	}

	@Transactional
	public void updateLession(Lession lession) {
		lessionDao.updateLession(lession);
	}

	@Transactional
	public void deleteLession(int id) {
		lessionDao.deleteLession(id);
	}
}
