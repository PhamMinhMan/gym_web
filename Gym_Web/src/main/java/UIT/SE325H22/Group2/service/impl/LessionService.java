package UIT.SE325H22.Group2.service.impl;

import org.springframework.stereotype.Service;

import UIT.SE325H22.Group2.model.Lession;
import UIT.SE325H22.Group2.service.intf.ILessionService;

@Service("lessionService")
public class LessionService extends GenericServiceImpl<Lession, Integer> implements ILessionService {

}
