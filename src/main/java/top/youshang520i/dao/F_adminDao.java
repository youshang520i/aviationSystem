package top.youshang520i.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import top.youshang520i.pojo.F_admin;

import java.util.List;

@Service("f_adminDao")
//@Repository(value = "f_adminDao")
public interface F_adminDao {

    int insert(@Param("pojo") F_admin pojo);

    int insertList(@Param("pojos") List<F_admin> pojo);

    List<F_admin> select(@Param("pojo") F_admin pojo);

    int update(@Param("pojo") F_admin pojo);

}
