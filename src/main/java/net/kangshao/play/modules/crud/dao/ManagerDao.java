package net.kangshao.play.modules.crud.dao;

import java.util.List;
import net.kangshao.play.common.persistence.annotation.MyBatisDao;
import net.kangshao.play.modules.crud.entity.Manager;
@MyBatisDao
public interface ManagerDao {
	public Manager findManagerById(long id);
	public List<Manager> findManagerList(Manager manager);
	public int deleteManagerById(long id);
	public int addManager(Manager manager);
	public int updateManager(Manager manager);
}
