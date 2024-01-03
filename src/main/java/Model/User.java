package Model;

import java.sql.Date;

public class User {
	private int id;
	private String username;
	private String email;
	private String fullName;
	private Status status;
	private String passwordHash;
	private String phone;
	private int roleId;
	private Date createdAt;
	private Date lastUpdated;
	

	 /**
     * Constructor khởi tạo một đối tượng User với các thuộc tính được cung cấp.
     *
     * @param id              Mã định danh của người dùng
     * @param username        Tên đăng nhập
     * @param email           Địa chỉ email
     * @param fullName        Họ tên đầy đủ
     * @param status          Trạng thái người dùng
     * @param passwordHash    Mật khẩu đã được băm
     * @param phone           Số điện thoại
     * @param roleId          Mã định danh của vai trò
     * @param createdAt       Ngày tạo tài khoản
     * @param lastUpdated     Ngày cập nhật tài khoản gần nhất
     */
    public User(int id, String username, String email, String fullName, Status status, String passwordHash, String phone, int roleId, Date createdAt, Date lastUpdated) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.fullName = fullName;
        this.status = status;
        this.passwordHash = passwordHash;
        this.phone = phone;
        this.roleId = roleId;
        this.createdAt = createdAt;
        this.lastUpdated = lastUpdated;
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
	        return "User{" +
	                "id=" + id +
	                ", username='" + username + '\'' +
	                ", email='" + email + '\'' +
	                ", fullName='" + fullName + '\'' +
	                ", status=" + status +
	                ", phone='" + phone + '\'' +
	                ", roleId=" + roleId +
	                ", createdAt=" + createdAt +
	                ", lastUpdated=" + lastUpdated +
	                '}';
	    }

}
