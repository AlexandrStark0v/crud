package MyCRUD.service;

import MyCRUD.model.User;

import java.util.List;

public interface UserService {
    List<User> getAllUsers();
    User getUserById(Long id);
    void updateUser(User user);
    void deleteUser(Long id);
    void saveUser(User user);
}
