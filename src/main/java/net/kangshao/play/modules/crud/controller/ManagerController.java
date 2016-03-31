package net.kangshao.play.modules.crud.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.github.pagehelper.PageInfo;
import net.kangshao.play.common.controller.BaseController;
import net.kangshao.play.modules.crud.entity.Manager;
import net.kangshao.play.modules.crud.service.ManagerService;
/**
 * 后台系统管理员控制器
* @ClassName: ManagerContorller
* @Description: 后台系统管理员控制器
* @author kangshaoxiong
* @date 2016年1月28日 上午10:22:00
*
 */
@Controller
@RequestMapping(value="/crud/manager")
public class ManagerController extends BaseController{
	@Autowired
	private ManagerService managerService;
	
	@RequestMapping(value="/managerList")
	public String managerList(Manager manager,Model model,
			@RequestParam(required = false, defaultValue = "1") int pageNum,
			@RequestParam(required = false, defaultValue = "10") int pageSize){
		PageInfo<Manager> page =  managerService.findManagerList(manager, pageNum, pageSize);
		model.addAttribute("managerPage",page);
		return "/modules/crud/ManagerContorller/managerList";
	}
	
	@RequestMapping(value="/managerInfo")
	public String managerInfo(HttpServletRequest request,Model model){
		Manager manager = managerService.findManagerById(1L);
		model.addAttribute("manager",manager);
		return "/modules/crud/ManagerContorller/managerInfo";
	}
	
	@RequestMapping(value="/deleteManager")
	public String deleteManager(@RequestParam(required=false) long id){
		managerService.deleteManagerById(id);
		return "redirect:/crud/manager/managerList";
	}
	
	@RequestMapping(value="/addManager")
	public String addManager(Manager manager){
		managerService.addManager(manager);
		return "redirect:/crud/manager/managerList";
	}
	
	@RequestMapping(value="/updateManager")
	public String updateManager(Manager manager,RedirectAttributes ra){
		managerService.updateManager(manager);
		return "redirect:/crud/manager/managerList";
	}
	
	@RequestMapping(value="/editManagerInit")
	public String editManagerInit(@RequestParam(required=false) Long id,Model model){
		if(id!=null){
			Manager manager = managerService.findManagerById(id);
			model.addAttribute("manager",manager);
		}
		return "/modules/crud/ManagerContorller/editManagerInit";
	}
	
}
