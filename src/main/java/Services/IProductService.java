package Services;

import java.util.List;

import Model.Product;

public interface IProductService extends IGenericService<Product> {
	List<Product> findProductByCategoryId(int id);
	Product findProductById(int id);
}
