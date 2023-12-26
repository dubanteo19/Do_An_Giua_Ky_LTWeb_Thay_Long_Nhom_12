package RowMaper;

import java.sql.ResultSet;
import java.sql.SQLException;

import Model.Verification;

public class VerificationMapper implements RowMapper<Verification> {

	@Override
	public Verification map(ResultSet r) {
		Verification verification = new Verification();
		try {
			verification.setId(r.getInt("id"));
			verification.setUserId(r.getInt("user_id"));
			verification.setToken(r.getString("token"));
			verification.setExpDate(r.getDate("exp_date"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return verification;
	}

}
