package vn.iotstar.dao;

import vn.iotstar.models.UserModel;

public interface UserDao {
	void insert(UserModel user);

	boolean checkExistEmail(String email);

	boolean checkExistUsername(String username);

	boolean checkExistPhone(String phone);
}
