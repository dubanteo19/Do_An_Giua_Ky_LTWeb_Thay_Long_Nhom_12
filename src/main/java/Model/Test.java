package Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import Database.IProductDAO;
import Database.IUserDAO;
import Database.ProductDAO;
import Database.UserDAO;
import Services.IProductService;
import Services.ProductService;
import Utils.JDBCConnector;

public class Test {
	public static void main(String[] args) {
		IUserDAO userDAO = new UserDAO();
		List<User> user = userDAO.findAll();
		
		System.out.println(user);
	}
}
