<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
 <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/style.css"/>       
        <link rel="stylesheet" href="assets/css/ace.min.css" />
        <!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="js/jquery-1.9.1.min.js"></script>  <script src="assets/dist/echarts.js"></script>
        <script src="js/lrtk.js" type="text/javascript" ></script>	
<title>经营分析统计</title>
</head>

<body>
<div class=" clearfix" id="advertising">
       <div id="scrollsidebar" class="left_Treeview">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="widget-box side_content" >
    <div class="side_title"><a title="隐藏" class="close_btn"><span></span></a></div>
     <div class="side_list">
      <div class="widget-header header-color-green2">
          <h4 class="lighter smaller">分类</h4>
      </div>
      <div class="widget-body">
         <ul class="b_P_Sort_list"> 
         <li> <a href="#">1. 航班生产数据</a></li>
                <li> <a href="#">2. 各航空公司数据占比</a></li>
                <li> <a href="#">3. 基地航空公司生产数据占比</a></li>
                <li> <a href="#">4. 始发航班生产数据占比</a></li> 
                <li> <a href="#">5. 航线数量统计</a></li>
                <li> <a href="#">6. 通航城市统计</a></li>
                <li> <a href="#">7. 备降航班统计</a></li> 
         </ul>
  </div>
  </div>
  </div>  
  </div><div class="Ads_list">
   <form class="search_style">
          <ul class="search_content clearfix" >
            <li>
              <label class="l_f">起始时间：</label>
              <input name="" type="text"   placeholder=" "  >
            </li>
            <li>
              <label class="l_f">结束时间：</label>
              <input class=" "  type="text"   style=" margin-left:10px;">
            </li>
             <li>
              <label class="l_f">航班号：</label>
              <input class=" "  type="text" placeholder="输入航班号"  style=" margin-left:10px;">
            </li>
           
          </ul>
        </form>
             <form class="search_style">
        <ul class="search_content clearfix">
           
          <li>
            <label class="l_f">国内/外航班：</label>
            <select name="" > 
              <option>国内航班</option>
              <option>国外航班</option>
            </select>
          </li>
          <li>
            <label class="l_f">进/出港：</label>
            <select name="" style="width:90px;">
              <option>进港</option>
              <option>出港</option>
            </select>
          </li> <li>
            <label class="l_f">延误/非延误航班：</label>
            <select name="">
              <option>延误航班</option>
              <option>非延误航班</option>
            </select>
          </li>
           <li style="width:90px;">
              <button type="button" class="btn_search"><i class="fa fa-search"></i>查询</button>
            </li>
        </ul>
      </form>
     <div class="">
               <div id="main1" style="height:300px; overflow:hidden; width:50%; overflow:auto; float:left;" ></div> 
                <div id="main2" style="height:300px; overflow:hidden; width:50%; overflow:auto; float:left;" ></div>      
              </div> 
</div> 
 </div>
</div>
 
</body>
</html>
<script>
//初始化宽度、高度  
 $(".widget-box").height($(window).height()); 
 $(".Ads_list").width($(window).width()-220);
  //当文档窗口发生改变时 触发  
    $(window).resize(function(){
	$(".widget-box").height($(window).height());
	 $(".Ads_list").width($(window).width()-220);
	});
	$(function() { 
	$("#advertising").fix({
		float : 'left',
		//minStatue : true,
		skin : 'green',	
		durationTime :false,
		stylewidth:'220',
		spacingw:30,//设置隐藏时的距离
	    spacingh:250,//设置显示时间距
		set_scrollsidebar:'.Ads_style',
		table_menu:'.Ads_list'
	});
});
</script>

 <script type="text/javascript">
        require.config({
            paths: {
                echarts: './assets/dist'
            }
        });
        require(
            [
                'echarts',
                'echarts/chart/pie',   // 按需加载所需图表，如需动态类型切换功能，别忘了同时加载相应图表
                'echarts/chart/funnel'
            ],
            function (ec) {
                var myChart = ec.init(document.getElementById('main1'));
			
			option = {
    title : {
        text: '航班正常性统计',
        subtext: '',
        x:'center'
    },
    tooltip : {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
    legend: {
        orient : 'vertical',
        x : 'left',
        data:['正常航班','非正常航班']
    },
    toolbox: {
        show : false,
       
    },
    calculable : true,
    series : [
        {
           
            type:'pie',
            radius : '55%',
            center: ['50%', '60%'],
            data:[
                {value:335, name:'正常航班'},
                {value:210, name:'非正常航班'},

            ]
        }
    ]
};
   myChart.setOption(option);
			}
);
</script><script>


   require.config({
            paths: {
                echarts: './assets/dist'
            }
        });
        
        // 使用
        require(
            [
                'echarts',
                'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
            ],
            function (ec) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById('main2')); 
                
                var option = {
    title : {
        text: '旅行不正常原因占比',
        subtext: ' '
    },
    tooltip : {
        trigger: 'axis'
    },
   
   
    calculable : true,
    xAxis : [
        {
            type : 'category',
            data : ['天气','公司','旅客','军事' ]
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'旅行不正常原因占比',
            type:'bar',
            data:[20, 49, 70, 23 ],
            markPoint : {
                data : [
                    {type : 'max', name: '最大值'} 
                ]
            },
            markLine : {
                data : [
                    {type : 'average', name: '平均值'}
                ]
            }
        },
        
    ]
};
                // 为echarts对象加载数据 
                myChart.setOption(option); 
            }
        );

</script>