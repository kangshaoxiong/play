package net.kangshao.play.modules.sys.service;
import java.util.List;

import net.kangshao.play.modules.sys.entity.Manager;
 
public interface IManagerService {
	public Manager findManagerById(long managerId);
	public List<Manager> findManagerList(Manager manager,int pageNum,int pageSize);
	public int deleteManagerById(long managerId);
	public int addManager(Manager manager);
	public int updateManager(Manager manager);
}
