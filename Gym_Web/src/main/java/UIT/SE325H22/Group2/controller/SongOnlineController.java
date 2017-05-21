package UIT.SE325H22.Group2.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import UIT.SE325H22.Group2.model.SongOnline;
import UIT.SE325H22.Group2.service.SongOnlineService;

@RestController
public class SongOnlineController {
	@Autowired
	SongOnlineService songOnlineService;
	
	@RequestMapping(value = "/getAllSongOnlines", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<SongOnline> getSongOnlines() {
		List<SongOnline> songOnlines = songOnlineService.getAllSongOnlines();
		return songOnlines;
	}

	@RequestMapping(value = "/getSongOnline/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public SongOnline getSongOnlineById(@PathVariable ("id") int id) {
		//return new SongOnline();
		return songOnlineService.getSongOnline(id);
	}
	
	@RequestMapping(value = "/getSongOnlinesById/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<SongOnline> getSongOnlinesById(@PathVariable ("id") int id) {
		//return new SongOnline();
		List<SongOnline> songOnlines = songOnlineService.getAllSongOnlines();
		List<SongOnline> songOnlinesById = new ArrayList<SongOnline>();
		for(SongOnline songOnline : songOnlines ){
			if(songOnline.getId() == id)
				songOnlinesById.add(songOnline);
		}
		return songOnlinesById;
	}

	@RequestMapping(value = "/addSongOnline", method = RequestMethod.POST, headers = "Accept=application/json")
	public void addSongOnline(@RequestBody SongOnline songOnline) {	
		songOnlineService.addSongOnline(songOnline);
	}

	@RequestMapping(value = "/updateSongOnline", method = RequestMethod.PUT, headers = "Accept=application/json")
	public void updateSongOnline(@RequestBody SongOnline songOnline) {
		songOnlineService.updateSongOnline(songOnline);
	}

	@RequestMapping(value = "/deleteSongOnline/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
	public void deleteSongOnline(@PathVariable("id") int id) {
		songOnlineService.deleteSongOnline(id);
	}
}
