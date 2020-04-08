package com.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.model.Mobile;
import com.shop.service.MobileService;

@Controller
@RequestMapping("/mobile")
public class MobileController {
	
	@Autowired
	MobileService mobileService;
	
	@RequestMapping("/add")
	public String addMobile(ModelMap map) {
		map.addAttribute("mobile", new Mobile());
		return "addmobile";
	}
	
	@RequestMapping(value = {"/add"}, method = RequestMethod.POST)
	public String addMobile(@ModelAttribute("mobile") Mobile mobile) {
		mobileService.addMobile(mobile);
		return "redirect:/";
	}
	
	@RequestMapping("/display")
	public String displayMobile(ModelMap map) {
		map.addAttribute("mobiles", mobileService.displayMobiles());
		return "displaymobiles";
	}
}
