package Database;

import java.sql.Date;
import java.util.List;

import Model.User;
import Model.Verification;
import RowMaper.RowMapper;
import RowMaper.VerificationMapper;

public class VerificationDAO extends AbtractDAO<Verification> implements IVerificationDAO {

	@Override
	public int save(Verification verification) {
		String sql = "INSERT INTO verification(userId,token,expDate) VALUES (?,?,?)";
		return save(sql, verification.getUserId(), verification.getToken(), verification.getExpDate());
	}

	@Override
	public List<Verification> findById(int id) {
		String sql = "SELECT * FROM verifications WHERE userId =?";
		return querry(sql, new VerificationMapper(), id);
	}

	public static void main(String[] args) {
		IVerificationDAO verificationDAO = new VerificationDAO();
		java.util.Date javaDate = new java.util.Date();
		Verification verification = new Verification(1, "abc", 3546);
		System.out.println(verificationDAO.save(verification));;
	}

	@Override
	public boolean verify(int userId, String token) {
		String sql = "SELECT * FROM verifications WHERE userId =? and token =?";
		List<Verification> re = querry(sql, new VerificationMapper(), userId, token);
		return re.size() > 0;
	}
}
