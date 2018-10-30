package top.youshang520i.controller;
import com.google.gson.Gson;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import redis.clients.jedis.Jedis;
import top.youshang520i.pojo.F_Admin;
import top.youshang520i.service.F_AdminServiceI;
import top.youshang520i.util.RedisUtils;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @actuor youshang520i
 * @create 2018-10-25 19:23
 * @desc index的Controller
 */

@Controller
public class IndexController {
   private static Logger logger = LogManager.getLogger(IndexController.class);
    @Resource
    private F_AdminServiceI fAdminServiceI;
    @Resource
    private F_Admin fadmin;
    @Resource
    private RedisUtils redisUtils;
    @Resource
    private Gson gson;

    @RequestMapping("/index")
    public String index(HttpSession session){
        Jedis jedis = redisUtils.getResource();
        String key ="top.youshang520i.service.impl.F_AdminServiceImpl";
        logger.info("得到的 Redis:"+jedis);
        String s = jedis.get(key);
        logger.info("得到的缓存数据："+s);
        String s1 = "";
        if (s==null){
            List<F_Admin> select = fAdminServiceI.select(fadmin);
            s1 = gson.toJson(select);
            Long setnx = jedis.setnx(key, s1);
        }else{
            s1 = gson.toJson(s);
        }
        session.setAttribute("json",s1);
        logger.info(s1);
        return "success";
    }

}

