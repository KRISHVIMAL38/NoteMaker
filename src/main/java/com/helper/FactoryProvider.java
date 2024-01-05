package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {
	public static SessionFactory fact;
	
	public static SessionFactory getFactory() {
		if(fact==null) {
			fact=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		}
		
		return fact;
	}
	
	public static void closeFactory() {
		if(fact.isOpen()) {
			fact.close();
		}
	}
}
