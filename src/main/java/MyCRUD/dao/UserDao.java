package MyCRUD.dao;

import MyCRUD.model.User;

import java.util.List;

public interface UserDao {
    List<User> getAllUser();
    void saveUser(User user);
    void updateUser(User user);
    void deleteUser(Long id);
    User getUserById(Long id);
}
