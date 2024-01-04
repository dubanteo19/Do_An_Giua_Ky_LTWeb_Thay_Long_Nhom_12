package RowMaper;

import java.sql.ResultSet;
import java.sql.SQLException;

import Model.Categories;
import Model.Product;
import Model.Status;

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
			re.setDateCreated(r.getTimestamp("dateCreated"));
			re.setLastUpdated(r.getTimestamp("lastUpdated"));
			re.setThumb(r.getString("thumb"));
			Categories categories = new Categories();
			categories.setId(r.getInt("categoryId"));
			categories.setName(r.getString(15));
			categories.setParentCategoryId(r.getInt("parentCategogyId"));
			categories.setActive(r.getInt("active"));
			Status status = new Status(r.getInt("statusId"), r.getString("description"));
			re.setStatus(status);
			re.setCategories(categories);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return re;
	}

}