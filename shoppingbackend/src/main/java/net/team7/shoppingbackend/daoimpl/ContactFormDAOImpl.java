package net.team7.shoppingbackend.daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import net.team7.shoppingbackend.dao.ContactFormDAO;
import net.team7.shoppingbackend.dto.ContactForm;


@Repository("contactFormDAO")
@Transactional
public class ContactFormDAOImpl implements ContactFormDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean add(ContactForm contactForm) {
		// TODO Auto-generated method stub
		try {			
			sessionFactory.getCurrentSession().persist(contactForm);			
			return true;
		}
		catch(Exception ex) {
			return false;
		}
	}

}
