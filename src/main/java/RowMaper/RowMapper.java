package RowMaper;

import java.sql.ResultSet;

public interface RowMapper<T> {
	public T map(ResultSet r);
}
