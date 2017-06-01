//package UIT.SE325H22.Group2.service;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import UIT.SE325H22.Group2.dao.SongOnlineDao;
//import UIT.SE325H22.Group2.model.SongOnline;
//
//@Service("songOnlineService")
//public class SongOnlineService {
//	@Autowired
//	SongOnlineDao songOnlineDao;
//	
//	@Transactional
//	public List<SongOnline> getAllSongOnlines() {
//		return songOnlineDao.getAllSongOnlines();
//	}
//
//	@Transactional
//	public SongOnline getSongOnline(int id) {
//		return songOnlineDao.getSongOnline(id);
//	}
//
//	@Transactional
//	public void addSongOnline(SongOnline songOnline) {
//		songOnlineDao.addSongOnline(songOnline);
//	}
//
//	@Transactional
//	public void updateSongOnline(SongOnline songOnline) {
//		songOnlineDao.updateSongOnline(songOnline);
//	}
//
//	@Transactional
//	public void deleteSongOnline(int id) {
//		songOnlineDao.deleteSongOnline(id);
//	}
//}
