package dao;

import domain.User;

public interface UserDao {
	 /**
     * @param userId
     * @return User
     */
    public User selectUserById(Integer userId);
}
