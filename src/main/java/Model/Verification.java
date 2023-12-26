package Model;

import java.sql.Date;

public class Verification {
	private int id;
	private int userId;
	private String token;
	private Date expDate;

	public Verification(int id, int userId, String token, Date expDate) {
		this.id = id;
		this.userId = userId;
		this.token = token;
		this.expDate = expDate;
	}

	public Verification(int userId, String token, Date expDate) {
		this.userId = userId;
		this.token = token;
		this.expDate = expDate;
	}

	public Verification() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public Date getExpDate() {
		return expDate;
	}

	public void setExpDate(Date expDate) {
		this.expDate = expDate;
	}

	@Override
	public String toString() {
		return "Verification [id=" + id + ", userId=" + userId + ", token=" + token + ", expDate=" + expDate + "]";
	}

}
