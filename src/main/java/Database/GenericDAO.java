package Database;

import java.util.List;

import RowMaper.RowMapper;

public interface GenericDAO<T> {
	<T> List<T> querry(String sql, RowMapper<T> rowMapper, Object... objects);

	int save(String sql, Object... objects);

	boolean update(String sql, Object... objects);

}
