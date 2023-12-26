package Model;

public class User {
	private int id;
	private String email;
	private String fullName;
	private Status status;
	private String passwordHash;

	

	public User(int id, String email, String fullName, Status status, String passwordHash) {
		this.id = id;
		this.email = email;
		this.fullName = fullName;
		this.status = status;
		this.passwordHash = passwordHash;
	}

	public User(String email, String fullName, Status status, String passwordHash) {
		this.email = email;
		this.fullName = fullName;
		this.status = status;
		this.passwordHash = passwordHash;
	}

	public User() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public String getPasswordHash() {
		return passwordHash;
	}

	public void setPasswordHash(String passwordHash) {
		this.passwordHash = passwordHash;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", email=" + email + ", fullName=" + fullName + ", status=" + status
				+ ", passwordHash=" + passwordHash + "]";
	}

}
