package Utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import Database.ProductDAO;
import Database.UserDAO;
import Model.Status;
import Model.User;
import Services.UserServices;

public class JDBCConnector {

	private static Connection re = null;
	private static JDBCConnector instance;

	public static Connection getConnection() {
		return re;
	}
	private JDBCConnector() {
		String host = "localhost";
		String port = "3306";
		String dbName = "luong_thuc_viet";
		String username = "root";
		String password = "";
		String url = "jdbc:mysql://" + host + ":" + port + "/" + dbName+"?useUnicode=true&characterEncoding=utf8";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			re = DriverManager.getConnection(url, username, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static JDBCConnector getInstance() {
		if (instance == null) {
			instance = new JDBCConnector();
			
		} else
			try {
				if (getConnection().isClosed()) {
					instance = new JDBCConnector();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return instance;
	}

	public static void closeConnect() {
		if (re != null) {
			try {
				re.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public static void main(String[] args) {
//		JDBCConnector.getInstance().getConnection();
		UserDAO dao = new UserDAO();
		User user =new User( "123","abc@gmail.com", "ngan", "0123456789", new Status(2, "Chưa kích hoạt"));
		System.out.println(dao.save(user));
	}
}
