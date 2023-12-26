package Services;

import java.util.List;

import javax.inject.Inject;

import Database.IProductDAO;
import Database.ProductDAO;
import Model.Product;

public class ProductService implements IProductService {
	
	@Inject
	IProductDAO productDAO;

	@Override
	public List<Product> findAll() {
		return productDAO.findAll();
	}

	@Override
	public int save(Product t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean update(Product t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Product> findProductByCategoryName(String name) {
		return productDAO.findProductByCategoryName(name);
	}

	@Override
	public Product findProductById(int id) {
		return productDAO.findProductById(id).get(0);
	}

}
