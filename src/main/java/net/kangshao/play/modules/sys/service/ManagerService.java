package net.kangshao.play.modules.sys.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import net.kangshao.play.modules.sys.dao.ManagerDao;
import net.kangshao.play.modules.sys.entity.Manager;

@Service
public class ManagerService{
	@Autowired
	private ManagerDao managerDao;
	
	public Manager findManagerById(long managerId) {
		return this.managerDao.findManagerById(managerId);
	}

	public PageInfo<Manager> findManagerList(Manager manager, int pageNum, int pageSize) {
		 //分页查询
        PageHelper.startPage(pageNum, pageSize);
        List<Manager> list = managerDao.findManagerList(manager);
        return new PageInfo<>(list);
	}

	public int deleteManagerById(long managerId) {
		return managerDao.deleteManagerById(managerId);
	}

	public int addManager(Manager manager) {
		return managerDao.addManager(manager);
	}

	public int updateManager(Manager manager) {
		return managerDao.updateManager(manager);
	}
	
	
}
