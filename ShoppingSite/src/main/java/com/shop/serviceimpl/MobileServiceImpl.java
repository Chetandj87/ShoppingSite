package com.shop.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.MobileDAO;
import com.shop.model.Mobile;
import com.shop.service.MobileService;

@Service
public class MobileServiceImpl implements MobileService{

	@Autowired
	MobileDAO mobileDAO;
	
	public boolean addMobile(Mobile mobile) {
		mobileDAO.addMobile(mobile);
		return true;
	}

	public boolean deleteMoblie(int mobileid) {
		mobileDAO.deleteMoblie(mobileid);
		return true;
	}

	public boolean updateMobile(Mobile mobile) {
		mobileDAO.updateMobile(mobile);
		return true;
	}

	public List<Mobile> displayMobiles() {
		
		return mobileDAO.displayMobiles();
	}

	public Mobile displayByMobileId(int mobileid) {
		
		return mobileDAO.displayByMobileId(mobileid);
	}

}
