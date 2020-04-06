package com.shop.dao;

import java.util.List;

import com.shop.model.Mobile;

public interface MobileDAO {
	public boolean addMobile(Mobile mobile);
	public boolean deleteMoblie(int mobileid);
	public boolean updateMobile(Mobile mobile);
	public List<Mobile> displayMobiles();
	public Mobile displayByMobileId(int mobileid);
}
