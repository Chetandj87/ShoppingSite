package com.shop.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	public String addMobile(@ModelAttribute("mobile") Mobile mobile, @RequestParam("image") MultipartFile mobileImage) {
		mobileService.addMobile(mobile);
		
		String path="C:\\Users\\Chetan\\git\\ShoppingSite\\ShoppingSiteWeb\\src\\main\\webapp\\WEB-INF\\images\\";
		Path p=Paths.get(path+mobile.getMobilename());
		if(!Files.exists(p)) {
			try {
				Files.createDirectory(p);
				System.out.println("Directory created");
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		List<String> files=displayImage(mobile.getMobilename());
		
		path=String.valueOf(p.toString()+"\\"+(files.size()+1)+".jpg");
		System.out.println(path);
		File imageFile=new File(path);
		
		if(!mobileImage.isEmpty()) {
			try {
				byte buffer[]=mobileImage.getBytes();
				FileOutputStream fos=new FileOutputStream(imageFile);
				BufferedOutputStream bos= new BufferedOutputStream(fos);
				bos.write(buffer);
				bos.close();
			}catch (Exception e) {
				System.out.println(e);
			}
		}
		
		return "redirect:/";
	}

	public List<String> displayImage(String mobileName) {
		List<String> images = new ArrayList<String>();
		
		try {
			String path="C:\\Users\\Chetan\\git\\ShoppingSite\\ShoppingSiteWeb\\src\\main\\webapp\\WEB-INF\\images\\";
			Path p = Paths.get(path+mobileName);
			DirectoryStream<Path> files=Files.newDirectoryStream(p,"*.*");
			
			for(Path file:files) {
				images.add(file.getFileName().toString());
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return images;
	}
	
	@RequestMapping("/display")
	public String displayMobiles(ModelMap map) {
		List<Mobile> mobiles = new ArrayList<Mobile>();
		
		for(Mobile m:mobileService.displayMobiles()) {
			List<String> im=displayImage(m.getMobilename());
			if(!im.isEmpty())
				m.setMobileimage(im.get(0));
			
			mobiles.add(m);
		}
		
		map.addAttribute("mobiles", mobiles);
		return "displaymobiles";
	}

	@RequestMapping("/display/{mobileid}")
	public String displayMobile(@PathVariable("mobileid") int mobileid, ModelMap map) {
		Mobile m = mobileService.displayByMobileId(mobileid);
		List<String> images = displayImage(m.getMobilename());
		m.setMobileimage(images.get(0));
		map.addAttribute("mobile", m);
		return "displaymobile";
	}

	@RequestMapping("/delete/{mobileid}")
	public String deleteMobile(@PathVariable("mobileid") int mobileid) {
		
		Mobile m = mobileService.displayByMobileId(mobileid);
		
		String path="C:\\Users\\Chetan\\git\\ShoppingSite\\ShoppingSiteWeb\\src\\main\\webapp\\WEB-INF\\images\\";
		File file = new File(path+m.getMobilename());      
	    String[] myFiles;    
	    if(file.isDirectory()){
	    	myFiles = file.list();
	    	for (int i=0; i<myFiles.length; i++) {
	    		File myFile = new File(file, myFiles[i]); 
	            myFile.delete();
	        }
	    }
	    file.delete();
		
		mobileService.deleteMoblie(mobileid);
		
		return "redirect:/mobile/display";
	}

	@RequestMapping("/edit/{mobileid}")
	public String editMobile(@PathVariable("mobileid") int mobileid, ModelMap map) {
		Mobile m = mobileService.displayByMobileId(mobileid);
		map.addAttribute("m", m);
		return "addmobile";
	}

	@RequestMapping(value = {"/update"},method = RequestMethod.POST)
	public String updateMobile(@ModelAttribute("m") Mobile m) {
		mobileService.updateMobile(m);
		return "redirect:/mobile/display";
	}
}
