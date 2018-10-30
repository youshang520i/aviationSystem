package top.youshang520i.dao;

import org.apache.ibatis.annotations.Param;
import java.util.List;

import org.springframework.stereotype.Service;
import top.youshang520i.pojo.F_Admin;
@Service("fadminDao")
public interface F_AdminDao {

    int insert(@Param("pojo") F_Admin pojo);

    int insertList(@Param("pojos") List< F_Admin> pojo);

    List<F_Admin> select(@Param("pojo") F_Admin pojo);

    int update(@Param("pojo") F_Admin pojo);

}
