package Database;

import java.util.List;

import Model.Product;
import RowMaper.ProductMapper;

public class ProductDAO extends AbtractDAO<Product> implements IProductDAO {

	@Override
	public List<Product> findAll() {
		String sql = "SELECT * FROM products";
		return querry(sql, new ProductMapper());
	}

	@Override
	public List<Product> findProductById(int id) {
		String sql = "SELECT * FROM products WHERE id = ?";
//		return querry(sql, new ProductMapper(), id);
		return null;
	}

	@Override
	public int save(Product p) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean update(Product p) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Product> findProductByCategoryName(String name) {
		String sql = "SELECT * FROM products   ";
		return null;
	}

	public static void main(String[] args) {
		ProductDAO productDAO = new ProductDAO();
		productDAO.findAll().forEach(System.out::println);
	}
}
