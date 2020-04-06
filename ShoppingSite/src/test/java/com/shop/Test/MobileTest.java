package com.shop.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;
import org.springframework.test.context.junit4.SpringRunner;

import com.shop.config.AppConfig;
import com.shop.model.Mobile;
import com.shop.service.MobileService;

@RunWith(SpringRunner.class)
@SpringJUnitConfig(classes = AppConfig.class)
public class MobileTest {
	@Autowired
	MobileService mobileService;
	
	@Test
	@Ignore
	public void addMobile() {
		Mobile mobile=new Mobile();
		mobile.setMobilename("Redmi Note 7");
		mobile.setBrandname("Xiaomi");
		mobile.setRam(4);
		mobile.setStorage(64);
		
		assertEquals(true, mobileService.addMobile(mobile));
	}
	
	@Test
	@Ignore
	public void deleteMobile() {
		assertEquals(true, mobileService.deleteMoblie(1));
	}
	
	@Test
	@Ignore
	public void updateMobile() {
		Mobile mobile=new Mobile();
		mobile.setMobileid(1);
		mobile.setMobilename("Redmi Note 7");
		mobile.setBrandname("Xiaomi");
		mobile.setRam(6);
		mobile.setStorage(128);
		
		assertEquals(true, mobileService.updateMobile(mobile));
	}
	
	@Test
	@Ignore
	public void displayBooks() {
		assertNotNull(mobileService.displayMobiles());
	}
	
	@Test
	//@Ignore
	public void displayBookById() {
		assertNotNull(mobileService.displayByMobileId(2));
	}
}
