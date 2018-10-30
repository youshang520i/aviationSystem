package top.youshang520i.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import top.youshang520i.pojo.F_Admin;

import java.util.List;

public interface F_AdminServiceI {

    int insert(@Param("pojo") F_Admin pojo);

    int insertList(@Param("pojos") List<F_Admin> pojo);

    List<F_Admin> select(@Param("pojo") F_Admin pojo);

    int update(@Param("pojo") F_Admin pojo);

}
