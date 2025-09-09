package vn.iotstar.models;

import java.io.Serializable;
import java.sql.Date;



public class UserModel implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private int id;
	private String email;
	private String username;
	private String fullname;
	private String password;
	private String phone;
	private String avatar;
	private int roleid;
	private Date createdDate;
	
	
	public UserModel() {
		super();
	}


	public UserModel(int id, String email, String username, String fullname, String password, String phone,
			String avatar, int roleid, Date createdDate) {
		super();
		this.id = id;
		this.email = email;
		this.username = username;
		this.fullname = fullname;
		this.password = password;
		this.phone = phone;
		this.avatar = avatar;
		this.roleid = roleid;
		this.createdDate = createdDate;
	}


	public UserModel(String email, String username, String fullname, String password, String phone, String avatar, int roleid, Date createdDate) {
		super();
		this.email = email;
		this.username = username;
		this.fullname = fullname;
		this.password = password;
		this.phone = phone;
		this.avatar = avatar;
		this.roleid = roleid;
		this.createdDate = createdDate;
	}


	public int getId() {
		return id;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
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


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getFullname() {
		return fullname;
	}


	public void setFullname(String fullname) {
		this.fullname = fullname;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getAvatar() {
		return avatar;
	}


	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}


	public int getRoleid() {
		return roleid;
	}


	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}


	public Date getCreatedDate() {
		return createdDate;
	}


	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}


	@Override
	public String toString() {
		return "UserModel [id=" + id + ", email=" + email + ", username=" + username + ", fullname=" + fullname
				+ ", password=" + password + ", phone=" + phone + ", avatar=" + avatar + ", roleid=" + roleid
				+ ", createdDate=" + createdDate + "]";
	}
	
}
