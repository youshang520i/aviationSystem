<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="css/style.css"/>
		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<script src="js/jquery-1.9.1.min.js"></script>  <script src="assets/dist/echarts.js"></script>
<title>无标题文档</title>

</head>

<body>
<div  style="height:70px; width:100%; width:100%; border-bottom:1px solid #DDD;">
<form id="search_form3">
    <div class="search_style">
      <ul class="search_content clearfix" >
        
         <li>
          <label class="l_f">开始时间：</label>
          <input class=" "  type="text"   style=" margin-left:10px;width:120px">
        </li>
		 <li>
          <label class="l_f">结束时间：</label>
          <input class=" "  type="text"   style=" margin-left:10px;width:120px">
        </li>
        <li style="width:70px; margin-right:0 !important;">
          <button type="button" class="btn_search" onclick="search_flight3()"><i class="icon-search"></i>查询</button>
        </li>
        	
      </ul>
    </div>
    
    </form>
</div>
<div class="table_menu_list">
        <table class="table table-striped table-bordered table-hover" id="sample-table">
                  <thead>
            <tr> 
                      <th >排名</th>
                      <th >航空公司</th>
                      <th >实际执行</th>
					  <th>总架次</th>
                      <th >正常</th>
                      <th >不正常</th>
                      <th >放行正常率</th> 
                      <th >放行不正常率</th> 
                    </tr>
          </thead>
                  <tbody>
            <tr>
                     
                      <td>1</td>
                      <td> 江西南昌航空公司</td>
                      <td>aa</td>
                      <td>10</td>
					  <td>1000</td>
                      <td>1</td>
                      <td >10%</td>
					  <td>90%</td>
                    </tr>
                    <tr>
                     
                      <td>2</td>
                      <td> 航空公司2</td>
                      <td>aa</td>
                      <td>10</td>
					  <td>1000</td>
                      <td>2</td>
                      <td >20%</td> 
					  <td>80%</td>
                    </tr>
            <tr>
                     
                     
                      <td>2</td>
                      <td> 航空公司2</td>
                      <td>aa</td>
                      <td>10</td>
					  <td>1000</td>
                      <td>2</td>
                      <td >20%</td> 
					  <td>80%</td>
                    </tr> <tr>
                     
                      
                      <td>2</td>
                      <td> 航空公司2</td>
                      <td>aa</td>
                      <td>10</td>
					  <td>1000</td>
                      <td>2</td>
                      <td >20%</td> 
					  <td>80%</td>
                    </tr> <tr>
                     
                      <td>2</td>
                      <td> 航空公司2</td>
                      <td>aa</td>
                      <td>10</td>
					  <td>1000</td>
                      <td>2</td>
                      <td >20%</td> 
					  <td>80%</td>
                    </tr>
          </tbody>
                </table>
                <div style=" float:right; margin-right:20px;">
          <nav aria-label="Page navigation">
            <ul class="pagination">
              <li> <a href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span> </a> </li>
              <li class="active" ><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li> <a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span> </a> </li>
            </ul>
          </nav>
        </div>
      </div>
</body>
</html>
<script type="text/javascript">
function search_flight3() {
	$("#search_form3").submit();
}

</script>