//package UIT.SE325H22.Group2.service;
//
//import java.util.List;
//import java.util.ArrayList;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//import UIT.SE325H22.Group2.dao.impl.LessionDao;
//import UIT.SE325H22.Group2.model.Lession;
//import UIT.SE325H22.Group2.viewmodel.LessionComboboxViewModel;
//import UIT.SE325H22.Group2.viewmodel.Mapper;
//
//@Service("lessionService")
//public class LessionService{
//	@Autowired
//	LessionDao lessionDao;
//	
//	@Transactional
//	public List<Lession> getAllLessions() {
//		return lessionDao.getAll();
//	}
//
//	@Transactional
//	public Lession getLession(int id) {
//		return lessionDao.getById(id);
//	}
//
//	@Transactional
//	public void addLession(Lession lession) {
//		lessionDao.insert(lession);
//	}
//
//	@Transactional
//	public void updateLession(Lession lession) {
//		lessionDao.update(lession);
//	}
//
//	@Transactional
//	public void deleteLession(int id) {
//		lessionDao.delete(id);
//	}
//	
//	@Transactional
//	public ArrayList<LessionComboboxViewModel> getLessionsCombobox() throws InstantiationException, IllegalAccessException {
//		return Mapper.copy((ArrayList<Lession>)lessionDao.getAll(), LessionComboboxViewModel.class, null) ;
//	}
//}
