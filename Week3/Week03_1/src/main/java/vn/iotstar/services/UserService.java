package vn.iotstar.services;

import vn.iotstar.models.UserModel;

public interface UserService {
	void insert(UserModel user);
	
	boolean register(String username, String password, String email, String fullname, String phone);
	
	boolean checkExistEmail(String email);
	
	boolean checkExistUsername(String username);
	
	boolean checkExistPhone(String phone);
}
