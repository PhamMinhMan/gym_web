package UIT.SE325H22.Group2.service.intf;

import java.util.List;

import UIT.SE325H22.Group2.model.Lession;

public interface ILessionService{
	public List<Lession> getAllLessions();
	public Lession getLession(int id);
	public void addLession(Lession lession);
	public void updateLession(Lession lession);
	public void deleteLession(int id);
}
