package net.team7.shoppingbackend.dao;

import java.util.List;

import net.team7.shoppingbackend.dto.Attributes;

public interface AttributesDAO {
	List<Attributes> list(int productId);
}
