﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]--><script src="js/jquery-1.9.1.min.js"></script><script src="js/lrtk.js" type="text/javascript" ></script>
        
<title>航班正常性</title>
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
            <li><a  href="javascript:void(0)" name="echart1.jsp"  class="iframeurl" >1. 机场放行统计</a></li>
            <li> <a  href="javascript:void(0)" name="echart2.jsp"  class="iframeurl" >2. 航班延误统计</a></li>
            <li> <a  href="javascript:void(0)" name="echart3.jsp"  class="iframeurl" >3. 各航空公司机场放行统计</a></li>
            <li> <a  href="javascript:void(0)" name="echart4.jsp"  class="iframeurl" >4. 各航空公司航班延误统计</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="Ads_list">
    <iframe id="iframe"  scrolling="auto" style="border:0; min-height:740px;width:100%;background-color:#FFF;"name="iframe" frameborder="0"  src="echart1.jsp"	> </iframe>
  </div>
</div>
</body>
</html>
<script> 

 
 jQuery(document).ready(function(){ 
    $(document).on('click','.iframeurl',function(){
                var cid = $(this).attr("name");
                $("#iframe").attr("src",cid).ready();				
      });	
});


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