package com.niit.BSonlineshoppingBackEnd.dao;

import java.util.List;

import com.niit.BSonlineshoppingBackEnd.dto.Category;

public interface CategoryDAO {
	
	



Category get(int Id);	
List<Category> list();	
boolean add(Category category);
boolean update(Category category);
boolean delete(Category category);
	
	
	
}
