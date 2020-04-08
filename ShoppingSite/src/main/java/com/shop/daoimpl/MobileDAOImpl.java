package com.shop.daoimpl;

import java.util.List;

import javax.persistence.Query;
import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.dao.MobileDAO;
import com.shop.model.Mobile;

@Repository("mobileDAO")
@Transactional
public class MobileDAOImpl implements MobileDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	public boolean addMobile(Mobile mobile) {
		sessionFactory.getCurrentSession().save(mobile);
		return true;
	}

	public boolean deleteMoblie(int mobileid) {
		Mobile mobile=new Mobile();
		mobile.setMobileid(mobileid);
		sessionFactory.getCurrentSession().delete(mobile);
		return true;
	}

	public boolean updateMobile(Mobile mobile) {
		sessionFactory.getCurrentSession().update(mobile);
		return true;
	}

	@SuppressWarnings("unchecked")
	public List<Mobile> displayMobiles() {
		
		return sessionFactory.getCurrentSession().createQuery("from com.shop.model.Mobile").list();
	}

	public Mobile displayByMobileId(int mobileid) {
		Query query = sessionFactory.getCurrentSession().createQuery("from com.shop.model.Mobile where mobileid= :mobileid");
		query.setParameter("mobileid", mobileid);
		return (Mobile)query.getResultList().get(0);
	}

}
