package RowMaper;

import java.sql.ResultSet;
import java.sql.SQLException;

import Model.Product;

public class ProductMapper implements RowMapper<Product> {

	@Override
	public Product map(ResultSet r) {
		Product re = new Product();
		try {
			re.setId(r.getInt("id"));
			re.setName(r.getString("name"));
			re.setCostPrice(r.getDouble("costPrice"));
			re.setUnitPrice(r.getDouble("unitPrice"));
			re.setWeight(r.getDouble("weight"));
			re.setThumb(r.getString("thumb"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return re;
	}

	public static void main(String[] args) {
	}
}