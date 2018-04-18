package com.niit.BSonlineshoppingBackEnd.dao;

import com.niit.BSonlineshoppingBackEnd.dto.Address;
import com.niit.BSonlineshoppingBackEnd.dto.Cart;
import com.niit.BSonlineshoppingBackEnd.dto.User;

public interface UserDAO {

	//add an user
	boolean addUser(User user);
	User getByEmail(String email);
	
	
	//add an address
	boolean addAddress(Address address);
	
	//update a cart
	boolean updateCart(Cart cart);
	
	
	
	
}
