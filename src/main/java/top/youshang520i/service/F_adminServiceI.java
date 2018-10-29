package top.youshang520i.service;

import org.apache.ibatis.annotations.Param;
import top.youshang520i.pojo.F_admin;

import java.util.List;

/**
 * @actuor youshang520i
 * @create 2018-10-25 21:46
 * @desc service接口
 */
public interface F_adminServiceI {

    int insert(@Param("pojo") F_admin pojo);

    int insertList(@Param("pojos") List<F_admin> pojo);

    List<F_admin> select(@Param("pojo") F_admin pojo);

    int update(@Param("pojo") F_admin pojo);
}
