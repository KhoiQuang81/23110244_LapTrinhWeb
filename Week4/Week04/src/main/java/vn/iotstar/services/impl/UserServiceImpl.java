package vn.iotstar.services.impl;

import vn.iotstar.models.UserModel;
import vn.iotstar.services.UserService;
import vn.iotstar.dao.UserDao;
import vn.iotstar.dao.impl.UserDaoImpl;

public class UserServiceImpl implements UserService {

	UserDao userDao = new UserDaoImpl();

	@Override
	public UserModel login(String username, String password) {
		UserModel user = this.findByUsername(username);
		if (user != null && password.equals(user.getPassWord())) {
			return user;
		}
		
		return null;
	}

	@Override
	public UserModel findByUsername(String username) {

		return userDao.findByUsername(username);
	}
}
