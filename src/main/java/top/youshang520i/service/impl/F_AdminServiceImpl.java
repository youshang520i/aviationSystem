package top.youshang520i.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import top.youshang520i.pojo.F_Admin;
import top.youshang520i.dao.F_AdminDao;
import top.youshang520i.service.F_AdminServiceI;

@Service("fadminService")
public class F_AdminServiceImpl implements F_AdminServiceI{

    @Autowired
    private F_AdminDao fadminDao;

    @Override
    public int insert(F_Admin pojo) {
        return fadminDao.insert(pojo);
    }

    @Override
    public int insertList(List<F_Admin> pojo) {
        return fadminDao.insertList(pojo);
    }

    @Override
    public List<F_Admin> select(F_Admin pojo) {
        return fadminDao.select(pojo);
    }

    @Override
    public int update(F_Admin pojo) {
        return fadminDao.update(pojo);
    }
}
