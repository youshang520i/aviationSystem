package top.youshang520i.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import top.youshang520i.pojo.F_admin;
import top.youshang520i.service.F_adminServiceI;

import javax.annotation.Resource;
import java.util.List;

/**
 * @actuor youshang520i
 * @create 2018-10-25 19:23
 * @desc index的Controller
 */
@RequestMapping("/web")
@Controller
public class IndexController {
   private static Logger logger = LogManager.getLogger(IndexController.class);
   // private static Logger logger = Logger.getLogger(IndexController.class);
    @Resource
    private F_adminServiceI fadminServiceI;

    @Resource
    private F_admin fadmin;

    @RequestMapping("/index")
    public String index(){
        List<F_admin> select = fadminServiceI.select(fadmin);

        for (F_admin f:select
             ) {
            logger.info("进入controller"+f);
        }
        return "success";
    }

}
