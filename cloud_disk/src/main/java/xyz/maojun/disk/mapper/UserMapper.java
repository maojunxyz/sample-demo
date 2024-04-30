package xyz.maojun.disk.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import xyz.maojun.disk.model.User;
import java.util.List;

public interface UserMapper extends  BaseMapper<User> {
    void insertUser(User user);
    List<User> selectUser();
}