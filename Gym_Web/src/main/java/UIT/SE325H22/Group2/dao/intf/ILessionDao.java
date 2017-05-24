package UIT.SE325H22.Group2.dao.intf;

import java.util.List;

import UIT.SE325H22.Group2.model.Lession;

public interface ILessionDao{
	public List<Lession> getAllLessions();
	public Lession getLession(int id);
	public Lession addLession(Lession lession);
	public void updateLession(Lession lession);
	public void deleteLession(int id);
}
