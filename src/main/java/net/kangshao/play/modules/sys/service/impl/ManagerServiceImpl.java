package net.kangshao.play.modules.sys.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import net.kangshao.play.modules.sys.dao.IManagerDao;
import net.kangshao.play.modules.sys.entity.Manager;
import net.kangshao.play.modules.sys.service.IManagerService;

@Service("managerService")
public class ManagerServiceImpl implements IManagerService{
	@Autowired
	private IManagerDao managerDao;
	
	@Override
	public Manager findManagerById(long managerId) {
		return this.managerDao.findManagerById(managerId);
	}

	@Override
	public List<Manager> findManagerList(Manager manager, int pageNum, int pageSize) {
		 //分页查询
        PageHelper.startPage(pageNum, pageSize);
        return managerDao.findManagerList(manager);
	}

	@Override
	public int deleteManagerById(long managerId) {
		return managerDao.deleteManagerById(managerId);
	}

	@Override
	public int addManager(Manager manager) {
		return managerDao.addManager(manager);
	}

	@Override
	public int updateManager(Manager manager) {
		return managerDao.updateManager(manager);
	}
	
	
}
