package Services;

import java.util.List;

import Model.Product;

public interface IProductService extends IGenericService<Product> {
	List<Product> findProductByCategoryName(String name);
	Product findProductById(int id);
}
