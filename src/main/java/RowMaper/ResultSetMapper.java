package RowMaper;

import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.Product;

public class ResultSetMapper {

	public static <T> T mapping(Class<T> targetClass, ResultSet result)
			throws InstantiationException, IllegalAccessException, IllegalArgumentException, SQLException {
		Field[] fields = targetClass.getDeclaredFields();
		T t = targetClass.newInstance();
		for (Field field : fields) {
			String columnName = field.getName();
			field.setAccessible(true);
			field.set(t, result.getObject(columnName));
		}
		return t;
	}
}
