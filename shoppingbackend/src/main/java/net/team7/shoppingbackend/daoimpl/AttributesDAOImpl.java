package net.team7.shoppingbackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import net.team7.shoppingbackend.dao.AttributesDAO;
import net.team7.shoppingbackend.dto.Attributes;

@Repository("attributesDAO")
@Transactional
public class AttributesDAOImpl implements AttributesDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Attributes> list(int productId) {
		// TODO Auto-generated method stub
		String selectAttributes = "FROM Attributes WHERE pid = :productId";

		Query query = sessionFactory.getCurrentSession().createQuery(
				selectAttributes);

		query.setParameter("productId", productId);
	

		return query.getResultList();
	}

}
