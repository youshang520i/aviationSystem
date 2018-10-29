package top.youshang520i.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import top.youshang520i.dao.F_adminDao;
import top.youshang520i.pojo.F_admin;
import top.youshang520i.service.F_adminServiceI;

import java.util.List;


@Transactional
@Service("fadminServiceI")
//@Repository(value = "fadminServiceI")
public class F_adminService implements F_adminServiceI {
    public F_adminService() {}

    @Autowired
    private F_adminDao f_adminDao;

    @Override
    public int insert(F_admin pojo) {
        return f_adminDao.insert(pojo);
    }

    @Override
    public int insertList(List<F_admin> pojo) {
        return f_adminDao.insertList(pojo);
    }

    @Override
    public List<F_admin> select(F_admin pojo) {
        return f_adminDao.select(pojo);
    }

    @Override
    public int update(F_admin pojo) {
        return f_adminDao.update(pojo);
    }
}
