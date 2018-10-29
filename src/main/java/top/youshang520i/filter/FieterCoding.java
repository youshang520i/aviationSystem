package top.youshang520i.filter;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

/**
 *  @Author:youshang520i
 *  @Date:$date  9:04
 *  @Description : 编码过滤器
 */
public class FieterCoding implements Filter {


    private String encoding = "UTF-8";
    /**
     *  @Author:youshang520i
     *  @Date:$date  9:10
     *  @Description : 销毁
     */
    @Override
    public void destroy() {
        // TODO Auto-generated method stub
        System.out.println("已销毁....");
     }
    /**
     *  @Author:youshang520i
     *  @Date:$date  9:11 
     *  @Description : 过滤器
     */
    @Override
     public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2) throws IOException, ServletException {
     // TODO Auto-generated method stub
            //进行降级
            HttpServletRequest request = (HttpServletRequest)arg0;
            HttpServletResponse response = (HttpServletResponse)arg1;
            //设置请求与回应的字符编码格式
            response.setCharacterEncoding(encoding);
            response.setContentType("html/text;charset="+encoding+"");
            //判断请求的提交方式是否是post提交方式
            if(request.getMethod().equalsIgnoreCase("post")) {
                 //如果是post提交方式,设置编码格式为encoding(UTF-8)
                request.setCharacterEncoding(encoding);
            }else {//否则(get)
                for (Map.Entry<String, String[]> map : request.getParameterMap().entrySet()) {
                    String[] value = map.getValue();
                    for (int i = 0; i < value.length; i++) {
                        value[i] = new String(value[i].getBytes("ISO-8859-1"), encoding);
                    }
                }
            }
            arg2.doFilter(arg0, arg1);
    }
    /**
     *  @Author:youshang520i
     *  @Date:$date  9:11
     *  @Description : 初始化(想要设置字符编码需要配置init,变量设置为：encoding)
     */
    @Override
    public void init(FilterConfig arg0) throws ServletException {
            // TODO Auto-generated method stub
            //获取到初始化的参数名为（encoding）
            String enco = arg0.getInitParameter("encoding");
            //判断是否为空，不为空就将它的字符编码设置为encoding的字符编码
            if(enco != null && !enco.trim().equals("")) {
                encoding = enco;
                }
    }
}
