package net.kangshao.play.modules.sys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/manager/sys")
public class SysLoginController {
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(){
		return "/modules/sys/SysLoginController/login";
	}
	
	@RequestMapping(value="/index",method=RequestMethod.POST)
	public String index(){
		return "/modules/sys/SysLoginController/index";
	}
}
