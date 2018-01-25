package net.team7.shoppingbackend.dao;

import java.util.List;

import net.team7.shoppingbackend.dto.Category;

public interface CategoryDAO {

	
	
	Category get(int id);
	List<Category> list();
	//List<Category> sublist();
	boolean add(Category category);
	boolean update(Category category);
	boolean delete(Category category);
	
	
}
