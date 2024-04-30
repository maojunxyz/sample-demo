package xyz.maojun.disk.mapper;

import xyz.maojun.disk.model.User;
import java.util.List;

public interface UserMapper {
    void insertUser(User user);
    List<User> selectUser();
}