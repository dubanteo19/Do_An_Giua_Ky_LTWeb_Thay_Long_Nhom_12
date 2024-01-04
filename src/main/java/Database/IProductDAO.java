package Database;

import java.util.List;

import Model.Product;

public interface IProductDAO extends GenericDAO<Product> {
	List<Product> findAll();

	List<Product> findProductById(int id);
	List<Product> findProductByCategoryId(int id);
	int save(Product p);

	boolean update(Product p);
}
