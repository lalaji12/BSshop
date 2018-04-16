package com.niit.BSonlineshoppingBackEnd.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.BSonlineshoppingBackEnd.dao.ProductDAO;
import com.niit.BSonlineshoppingBackEnd.dto.Product;

public class ProductTestCase {

private static AnnotationConfigApplicationContext context;
	
	private static ProductDAO productDAO;
	private Product product;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.BSonlineshoppingBackEnd");
		context.refresh();
		productDAO = (ProductDAO)context.getBean("productDAO");
}
	
	/*@Test
	public void testCRUDProduct() {
		
		//create operation
		product =new Product();
		
		product.setName("Oppo Selfie S53");
		product.setBrand("Oppo");
		product.setDescription("This is some description for oppo mobile phone!");
		product.setUnitPrice(20000);
		product.setActive(true);
		product.setCategoryId(3);
		product.setSupplierId(3);
		
		assertEquals("Something went wrong while inserting new products",true,productDAO.add(product));
		
		//reading and updating the category
	
		product = productDAO.get(2);
		product.setName("Samsung J7 pro");
		assertEquals("Something went wrong while updating the existing record!",true,productDAO.update(product));
		
		assertEquals("Something went wrong while deleting the existing record!",true,productDAO.delete(product));
		
		//list
		assertEquals("Something went wrong while fetching the list of products!",6,productDAO.list().size());
		
		
	}
*/	
	
	@Test
	public void testListActiveProducts() {
		
		assertEquals("Something went wrong while fetching the list of product!",5,productDAO.listActiveProducts().size());
	}

	@Test
	public void testListActiveProductsByCategory() {
		
		assertEquals("Something went wrong while fetching the list of product!",3,productDAO.listActiveProductsByCategory(3).size());
        assertEquals("Something went wrong while fetching the list of product!",1,productDAO.listActiveProductsByCategory(1).size());

	}

	@Test
	public void testGetLatestActiveProducts() {
		
		assertEquals("Something went wrong while fetching the list of product!",3,productDAO.getLatestActiveProducts(3).size());
       }


	
}



