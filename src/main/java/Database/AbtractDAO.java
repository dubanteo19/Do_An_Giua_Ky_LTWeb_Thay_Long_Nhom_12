package Database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.tomcat.dbcp.dbcp2.Utils;

import RowMaper.ResultSetMapper;
import RowMaper.RowMapper;
import Utils.JDBCConnector;

public class AbtractDAO<T> implements GenericDAO<T> {

	@Override
	public <T> List<T> querry(String sql, RowMapper<T> rowMapper, Object... objects) {
		List<T> re = new ArrayList<>();
		JDBCConnector.getInstance();
		Connection conn = JDBCConnector.getConnection();
		try {
			PreparedStatement statement = conn.prepareStatement(sql);
			setParameters(statement, objects);
			ResultSet r = statement.executeQuery();
			while (r.next()) {
				re.add(rowMapper.map(r));
			}
			return re;
		} catch (SQLException | IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			JDBCConnector.closeConnect();
		}
	}

	private void setParameters(PreparedStatement statement, Object[] objects) {
		int index = 1;
		for (Object object : objects) {
			try {
				if (object instanceof Integer) {
				    statement.setInt(index, (int) object);
				} else if (object instanceof Long) { // Sửa ở đây, thêm dấu đóng ngoặc ")"
				    statement.setLong(index, (long) object);
				} else if (object instanceof String) {
				    statement.setString(index, (String) object);
				} else if (object instanceof Date) {
				    statement.setDate(index, (Date) object);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			index++;
		}
	}

	@Override
	public int save(String sql, Object... objects) {
		int re = 0;
		Connection conn = JDBCConnector.getInstance().getConnection();
		try {
			PreparedStatement statement = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			setParameters(statement, objects);
			conn.setAutoCommit(false);
			statement.executeUpdate();
			ResultSet r = statement.getGeneratedKeys();
			while (r.next()) {
				re = r.getInt(1);
			}
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}

		return re;

	}

	@Override
	public boolean update(String sql, Object... objects) {
		Connection conn = JDBCConnector.getInstance().getConnection();
		try {
			conn.setAutoCommit(false);
			PreparedStatement statement = conn.prepareStatement(sql);
			setParameters(statement, objects);
			statement.executeUpdate();
			conn.commit();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			return false;
		} finally {
			JDBCConnector.closeConnect();
		}
	}

}
