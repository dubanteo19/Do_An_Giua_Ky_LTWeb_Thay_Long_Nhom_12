package Services;

import java.util.List;

public interface IGenericService<T> {
	List<T> findAll();
	int save(T t);
	boolean update(T t);
}
