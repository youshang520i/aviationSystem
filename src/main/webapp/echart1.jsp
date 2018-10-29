<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<link rel="stylesheet" href="css/style.css"/>
<link rel="stylesheet" href="assets/css/ace.min.css" />
<script src="assets/dist/echarts.js"></script>
<script src="js/jquery-2.1.1.js"></script>

<title>无标题文档</title>

</head>
<script>

 jQuery(document).ready(function(){ 
    $(document).on('click','.iframeurl',function(){
                var cid = $(this).attr("name");
                $("#iframe").attr("src",cid).ready();				
      });	
}); 
 
</script>
<body>
<div  style="height:auto; width:100%; border-bottom:1px solid #DDD; ">
<form id="search_form1">
    <div class="search_style">
      <ul class="search_content clearfix" >
        <li>
          <label class="l_f">起始时间：</label> 
          <input id="J-xl"  type="text"   style=" margin-left:10px;">
        </li>
        <li>
          <label class="l_f">结束时间：</label>
          <input class=" "  type="text"   style=" margin-left:10px;">
        </li>
        <li style="width:90px;">
          <button type="button" class="btn_search" onclick="search_flight1()"><i class="icon-search"></i>查询</button>
        </li>
        <li style="width:130px;">
          <button type="button" class="btn-warning btn"> &nbsp;打印图表数据</button>
        </li>	
      </ul>
    </div>
    <div class="search_style">
      <ul class="search_content clearfix" >
       <li>
            <label class="l_f">任务性质：</label>
            <select name="" style="width:90px">
                      <option>--所有--</option>
                      <option>训练</option>
                      <option>正班</option>
                      <option>返航</option>
                      <option>加班</option>
                    </select>
          </li>
           <li>
            <label class="l_f">国内/外航班：</label>
            <select name="" style="width:110px"> 
                      <option>国内航班</option>
                      <option>国外航班</option>
                    </select>
          </li>
        <li>
            <label class="l_f">始发/非始发航班：</label>
            <select name="" style="width:110px">
                      <option>始发航班</option>
                      <option>非始发航班</option>
                    </select>
          </li>
      	
      </ul>
    </div> 
    </form>
</div>
<div style="margin-top:10px;">
<p style=" display:inline-block; width:50%; font-size:16px; font-weight:bolder; line-height:30px; margin-bottom:20px; float:left;"> 航班总架次：<span style=" color:#06C; font-style:italic;">1234次</span><p>
<p style=" display:inline-block; width:50%; font-size:16px; font-weight:bolder; line-height:30px; margin-bottom:20px;">延误次架：<span style=" color:#06C; font-style:italic;">1234次</span></p>
<div id="main1" style="height:300px; overflow:hidden; width:50%; overflow:auto; float:left;" ></div>
      <div id="main2" style="height:300px; overflow:hidden; width:50%; overflow:auto; float:left;" ></div>
      </div>
</body> 
		
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
/*查询*/
function search_flight1(){
	$("#search_form1").submit();
}

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
