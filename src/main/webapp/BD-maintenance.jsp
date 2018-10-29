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
		<!--  <link rel="stylesheet" href="font/css/font-awesome.min.css" />-->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>
		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<!-- page specific plugin scripts -->

		<script src="assets/layer/layer.js" type="text/javascript" ></script>
		<script type="text/javascript"  src="js/jquery-2.1.1.js"></script>
		<title>基础数据维护</title>
		</head>
		<style>
.btn_search:hover {
	cursor: pointer;
}
.add_menber li .label_name, .member_content li .label_name{ width:70px;}
.page-content li {
	width: 33% !important;
}
.add_menber li .add_name{ margin-left:2px !important;}
</style>
		<body>
<div class="page-content clearfix ">
          <div class="d_Confirm_Order_style">
    <form class="search_style">
              <ul class="search_content clearfix">
        <li>
                  <label class="l_f">部门：</label>
                  <select name="queryType" style="width:130px">
                  <option value="1" name="queryType">航空公司</option>
                  <option value="2" name="queryType">飞机信息</option>
                  <option value="3" name="queryType">机场数据</option>
                  <option value="4" name="queryType">安检通道</option>
                  <option value="5" name="queryType">值机柜台</option>
                  <option value="6" name="queryType">登机口</option>
                  <option value="7" name="queryType">旅客属性信息</option>
                  <option value="8" name="queryType">旅客航班流水信息</option>
                  <option value="9" name="queryType">异常原因</option>
                  <option value="10" name="queryType">廊桥数据</option>
                  <option value="11" name="queryType">跑道数据</option>
                  <option value="12" name="queryType">机位数据</option>
                  <option value="13" name="queryType">航班任务</option>
                  <option value="14" name="queryType">航站楼数据</option>
                  <option value="15" name="queryType">行李转盘</option>
                  </select>
                </li>
      </ul>
            </form>
    <div class="border clearfix"> <span class="l_f"> <a href="javascript: " id="member_add" class="btn btn-warning"><i class="icon-plus" ></i>添加数据</a> </span> </div>
    <div class="table_menu_list">
      <table class="table table-striped table-bordered table-hover" id="div1">
        <thead>
                  <tr>
            <th width="25"><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></th>
            <th  >英文简称</th>
            <th  >二字码</th >
			<th >公司属性</th>
            <th  >中文简称</th>
            <th >首飞时间</th>
            <th width="180">操作</th>
          </tr>
                </thead>
        <tbody >
                  <tr>
            <td><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></td>
            <td>NC</td>
			<td>DH</td>
            <td> 国内</td>
            <td>南航</td>
            <td>2014-6-11 14:21</td>
            <td class="td-manage"><a title="编辑" onclick="member_edit('550')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a></td>
          </tr>
		  <tr>
            <td><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></td>
            <td>NC</td>
			<td>DH</td>
            <td> 国内</td>
            <td>南航</td>
            <td>2014-6-11 14:21</td>
            <td class="td-manage"><a title="编辑" onclick="member_edit('550')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a></td>
          </tr>
		  <tr>
            <td><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></td>
            <td>NC</td>
			<td>DH</td>
            <td> 国内</td>
            <td>南航</td>
            <td>2014-6-11 14:21</td>
            <td class="td-manage"><a title="编辑" onclick="member_edit('550')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a></td>
          </tr>
                
      </table>
	   <table class="table table-striped table-bordered table-hover" id="div2" style="display:none;">
        <thead>
                  <tr>
            <th width="25"><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></th>
            <th  >机号</th>
            <th  >机型</th >
			<th >飞机属性</th>
            <th  >二字码</th>
            <th >航空(分)公司</th>
            <th width="180">操作</th>
          </tr>
                </thead>
        <tbody >
                  <tr>
            <td><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></td>
            <td>BD101</td>
			<td>DE333</td>
            <td>国内</td>
            <td>ES</td>
            <td>南航</td>
            <td class="td-manage"><a title="编辑" onclick="member_edit('550')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a></td>
          </tr>
		   
		 
      </table>
       <table class="table table-striped table-bordered table-hover" id="div3" style="display:none;">
        <thead>
                  <tr>
            <th width="25"><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></th>
            <th  >三字码</th>
            <th  >机场属性</th >
			<th >中文简称</th>
            <th >航线简称</th>
            <th >英文简称</th>
			<th>所在省市</th>
            <th width="180">操作</th>
          </tr>
                </thead>
        <tbody >
                  <tr>
            <td><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></td>
            <td>SDF</td>
			<td>国内</td>
            <td>南昌机场</td>
            <td>N</td>
            <td>NC</td>
			<td>江西南昌</td>
            <td class="td-manage"><a title="编辑" onclick="member_edit('550')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a></td>
          </tr>
		   
		 
      </table>
	  <table class="table table-striped table-bordered table-hover" id="div4" style="display:none;">
        <thead>
                  <tr>
            <th width="25"><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></th>
            <th  >安检通道编号</th>
            <th  >属性</th >
			<th >对应区域</th>
            <th  >安检口状态</th>
            <th width="180">操作</th>
          </tr>
                </thead>
        <tbody >
                  <tr>
            <td><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></td>
            <td>D2321</td>
			<td>国际</td>
            <td>D3</td>
            <td>开启</td>    
            <td class="td-manage"><a title="编辑" onclick="member_edit('550')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a></td>
          </tr>
		   
		 
      </table>
	  <table class="table table-striped table-bordered table-hover" id="div5" style="display:none;">
        <thead>
                  <tr>
            <th width="25"><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></th>
            <th  >值机柜台编号</th>
            <th  >所属航空公司</th >
			<th >对应区域</th>
            <th  >所属航站楼</th>
            <th >属性</th>
			<th >类别</th>
			<th >状态</th>
            <th width="180">操作</th>
          </tr>
                </thead>
        <tbody >
                  <tr>
            <td><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></td>
            <td>E241</td>
			<td>南航</td>
            <td>F12</td>
            <td>T1</td>
            <td>国内</td>
			<td>A</td>
			<td>启用</td>
            <td class="td-manage"><a title="编辑" onclick="member_edit('550')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a></td>
          </tr>
		   
		 
      </table>
	  <table class="table table-striped table-bordered table-hover" id="div6" style="display:none;">
        <thead>
                  <tr>
            <th width="25"><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></th>
            <th  >登机口编号</th>
            <th  >名称</th >
			<th >属性</th>
            <th  >类型</th>
            <th >对应机位</th>
			<th >对应航站楼</th>
			<th >状态</th>
            <th width="180">操作</th>
          </tr>
                </thead>
        <tbody >
                  <tr>
            <td><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></td>
            <td>S321</td>
			<td>南昌1号口</td>
			<td>国内</td>
            <td>近</td>
            <td>S7</td>
            <td>T2</td>
			<td>正在登机</td>
            <td class="td-manage"><a title="编辑" onclick="member_edit('550')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a></td>
          </tr>
		   
		 
      </table>
	  <table class="table table-striped table-bordered table-hover" id="div7" style="display:none;">
        <thead>
                  <tr>
            <th width="25"><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></th>
            <th  >姓名</th>
            <th  >身份证号(护照)</th >
			<th >电话</th>
            <th  >性别</th>
            <th >是否是贵宾</th>
			<th >最后一次起飞时间</th>
			<th >最后一次起飞航班号</th>
            <th width="180">操作</th>
          </tr>
                </thead>
        <tbody >
                  <tr>
            <td><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></td>
            <td>李嘉旺</td>
			<td>421852199802651234</td>
            <td>13694987625</td>
            <td>男</td>
            <td>是</td>
			<td>2017-2-28</td>
			<td>B3-S371</td>
            <td class="td-manage"><a title="编辑" onclick="member_edit('550')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a></td>
          </tr>
		   
		 
      </table>
	   <table class="table table-striped table-bordered table-hover" id="div8" style="display:none;">
        <thead>
                  <tr>
            <th width="25"><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></th>
            <th  >姓名</th>
            <th  >航班号</th >
			<th >座位号</th>
            <th  >舱位</th>
			<th  >舱程</th>
			<th  >值机时间</th>
            <th >值机柜台</th>
			<th >安检时间</th>
			<th >安检通道</th>
			<th >登机时间</th>
			<th >同行旅客</th>
			<th >目的地</th>
            <th width="180">操作</th>
          </tr>
                </thead>
        <tbody >
                  <tr>
            <td><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></td>
            <td>李嘉旺</td>
			<td>B3-S342</td>
            <td>F2</td>
            <td>1</td>
            <td>3</td>
			<td>2017-2-28 12:15:00</td>
			<td>G23</td>
			<td>2017-2-28 12:30:00</td>
			<td>D32</td>
			<td>2017-2-28 12:45:00</td>
			<td>P1213</td>
			<td>南昌</td>
            <td class="td-manage"><a title="编辑" onclick="member_edit('550')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a></td>
          </tr>
		   
		 
      </table>
	   <table class="table table-striped table-bordered table-hover" id="div9" style="display:none;">
        <thead>
                  <tr>
            <th width="25"><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></th>
            <th  >编码</th>
            <th  >中文描述</th >
			<th >英文描述</th>
            <th width="180">操作</th>
          </tr>
                </thead>
        <tbody >
                  <tr>
            <td><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></td>
            <td>01</td>
			<td>天气</td>
            <td>weather</td>
            <td class="td-manage"><a title="编辑" onclick="member_edit('550')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a></td>
          </tr>
		     <tr>
            <td><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></td>
            <td>0101</td>
			<td>雾天</td>
            <td>foggy</td>
            <td class="td-manage"><a title="编辑" onclick="member_edit('550')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a></td>
          </tr>
		   
		 
      </table>
	   <table class="table table-striped table-bordered table-hover" id="div10" style="display:none;">
        <thead>
                  <tr>
            <th width="25"><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></th>
            <th  >廊桥编号</th>
            <th  >对应机位	</th >
			<th >所属航站楼</th>
            <th width="180">操作</th>
          </tr>
                </thead>
        <tbody >
                  <tr>
            <td><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></td>
            <td>L431</td>
			<td>S201</td>
            <td>T2</td>
            <td class="td-manage"><a title="编辑" onclick="member_edit('550')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a></td>
          </tr>
		   
		 
      </table>
	   <table class="table table-striped table-bordered table-hover" id="div11" style="display:none;">
        <thead>
                  <tr>
            <th width="25"><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></th>
            <th  >跑道编号</th>
            <th  >跑道长度</th >
			<th >跑道方向</th>
            <th  >跑道属性</th>
            <th width="180">操作</th>
          </tr>
                </thead>
        <tbody >
                  <tr>
            <td><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></td>
            <td>A231</td>
			<td>5公里</td>
            <td>北</td>
            <td>国际</td>
            <td class="td-manage"><a title="编辑" onclick="member_edit('550')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a></td>
          </tr>
		   
		 
      </table>
	   <table class="table table-striped table-bordered table-hover" id="div12" style="display:none;">
        <thead>
                  <tr>
            <th width="25"><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></th>
            <th  >机位号</th>
            <th  >机位属性</th >
			<th >停靠属性</th>
            <th  >机位长</th>
            <th >机位宽</th>
			<th >机位类型</th>
			<th >机位状态</th>
            <th width="180">操作</th>
          </tr>
                </thead>
        <tbody >
                  <tr>
            <td><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></td>
            <td>S7328</td>
			<td>国内</td>
            <td>靠廊桥</td>
            <td>500m</td>
            <td>300m</td>
			<td>1</td>
			<td>启用</td>
            <td class="td-manage"><a title="编辑" onclick="member_edit('550')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a></td>
          </tr>
		   
		 
      </table>
	   <table class="table table-striped table-bordered table-hover" id="div13" style="display:none;">
        <thead>
                  <tr>
            <th width="25"><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></th>
            <th  >任务代码</th>
            <th  >任务简称</th >
			<th >任务排序</th>
            <th  >中文名称</th>
            <th >英文名称</th>
            <th width="180">操作</th>
          </tr>
                </thead>
        <tbody >
                  <tr>
            <td><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></td>
            <td>W/Z</td>
			<td>正班</td>
            <td>00</td>
            <td>正班飞行</td>
            <td>zhengbanfeixing</td>
            <td class="td-manage"><a title="编辑" onclick="member_edit('550')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a></td>
          </tr>
		   
		 
      </table>
	   <table class="table table-striped table-bordered table-hover" id="div14" style="display:none;">
        <thead>
                  <tr>
            <th width="25"><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></th>
            <th  >航站楼编号</th>
            <th  >航站楼属性</th >
			<th >状态</th>
            <th  >所属航空公司</th>
            <th width="180">操作</th>
          </tr>
                </thead>
        <tbody >
                  <tr>
            <td><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></td>
            <td>T1</td>
			<td>国际</td>
            <td>启用</td>
            <td>南航</td>
            <td class="td-manage"><a title="编辑" onclick="member_edit('550')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a></td>
          </tr>
		   
		 
      </table>
	   <table class="table table-striped table-bordered table-hover" id="div15" style="display:none;">
        <thead>
                  <tr>
            <th width="25"><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></th>
            <th  >行李转盘编码</th>
            <th  >属性</th >
			<th >状态</th>
            <th  >所属航空公司</th>
            <th >所属航站楼</th>
            <th width="180">操作</th>
          </tr>
                </thead>
        <tbody >
                  <tr>
            <td><label>
                <input type="checkbox" class="ace">
                <span class="lbl"></span></label></td>
            <td>E3423</td>
			<td>国内</td>
            <td>启用</td>
            <td>南航</td>
            <td>T2</td>
            <td class="td-manage"><a title="编辑" onclick="member_edit('550')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a></td>
          </tr>
		   
		 
      </table>
            </div>
  </div>
        </div>
		<form id="form1" >
<div class="add_menber" id="add_menber_style1" style="display:none">
          <ul class=" page-content">
    <li>
              <label class="label_name">二字码：</label>
              <span class="add_name">
      <input value="" name="二字码" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">三字码：</label>
              <span class="add_name">
      <input value="" name="三字码" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
            <label class="l_f">公司性质：</label>
            <select name="" style=" width:110px">
              <option>国际</option>
              <option>国内</option>
            </select>
          </li>
			<li>
              <label class="label_name">代理标志：</label>
              <span class="add_name">
      <input value="" name="代理标志" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
            <label class="l_f">航站楼：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>T1</option>
			  <option>T2</option>
			  <option>T3</option>
			  <option>T4</option>
            </select>
          </li>
			<li>
              <label class="label_name">公司总机：</label>
              <span class="add_name">
      <input value="" name="公司总机" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">中文简称：</label>
              <span class="add_name">
      <input value="" name="中文简称" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">英文简称：</label>
              <span class="add_name">
      <input value="" name="英文简称" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">中文名称：</label>
              <span class="add_name">
      <input value="" name="中文名称" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">英文名称：</label>
              <span class="add_name">
      <input value="" name="英文名称" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">公司签派：</label>
              <span class="add_name">
      <input value="" name="公司签派" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">办事处：</label>
              <span class="add_name">
      <input value="" name="办事处" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">主页地址：</label>
              <span class="add_name">
      <input value="" name="主页地址" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">公司描述：</label>
              <span class="add_name">
      <input value="" name="公司描述" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">首飞时间：</label>
              <span class="add_name">
      <input value="" name="首飞时间" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">母公司ID：</label>
              <span class="add_name">
      <input value="" name="母公司ID" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
  </ul>
  </div>
        </form>
		<form id="form2">
<div class="add_menber" id="add_menber_style2" style="display:none">
          <ul class=" page-content">
    <li>
              <label class="label_name">机号：</label>
              <span class="add_name">
      <input value="" name="机号" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">机型：</label>
              <span class="add_name">
      <input value="" name="机型" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			
			<li>
              <label class="label_name">最大起飞全重：</label>
              <span class="add_name">
      <input value="" name="最大起飞全重" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			
			<li>
              <label class="label_name">业载：</label>
              <span class="add_name">
      <input value="" name="业载" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">最大座位数：</label>
              <span class="add_name">
      <input value="" name="最大座位数" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">飞机类型：</label>
              <span class="add_name">
       <input name="radio2" type="radio" checked="checked" class="ace">
      <span class="lbl">宽体</span>
	   <input name="radio2" type="radio" class="ace">
      <span class="lbl">普体</span></label>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
            <label class="l_f">飞机属性：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>国际飞机</option>
			  <option>国内飞机</option>
            </select>
          </li>
			<li>
              <label class="label_name">二字码：</label>
              <span class="add_name">
      <input value="" name="二字码" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">三字码：</label>
              <span class="add_name">
      <input value="" name="三字码" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">内部代码：</label>
              <span class="add_name">
      <input value="" name="内部代码" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">航空(分)公司：</label>
              <span class="add_name">
      <input value="" name="航空(分)公司" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">开始时间：</label>
              <span class="add_name">
      <input value="" name="开始时间" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">结束时间：</label>
              <span class="add_name">
      <input value="" name="结束时间" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">变动标记：</label>
            <input name="change2" type="radio" checked="checked" class="ace">
      <span class="lbl">已变动</span>
	   <input name="change2" type="radio" class="ace">
      <span class="lbl">未变动</span>
              <div class="prompt r_f"></div>
            </li>
  </ul>
  </div>
        </form>
		<form id="form3">
<div class="add_menber" id="add_menber_style3" style="display:none">
          <ul class=" page-content">
    <li>
              <label class="label_name">三字码：</label>
              <span class="add_name">
      <input value="" name="三字码" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">四字码：</label>
              <span class="add_name">
      <input value="" name="四字码" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
            <label class="l_f">机场属性：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>国际机场</option>
			  <option>国内机场</option>
            </select>
          </li>
			<li>
              <label class="label_name">航线距离：</label>
              <span class="add_name">
      <input value="" name="航线距离" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			
			<li>
              <label class="label_name">中文简称：</label>
              <span class="add_name">
      <input value="" name="中文简称" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">航线简称：</label>
              <span class="add_name">
      <input value="" name="航线简称" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">英文简称：</label>
              <span class="add_name">
      <input value="" name="英文简称" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">中文全称：</label>
              <span class="add_name">
      <input value="" name="中文全称" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">英文全称：</label>
              <span class="add_name">
      <input value="" name="英文全称" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
            <label class="l_f">机场等级：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>1</option>
			  <option>2</option>
			  <option>3</option>
			  <option>4</option>
            </select>
          </li>
		  <li>
              <label class="label_name">候机楼面积：</label>
              <span class="add_name">
      <input value="" name="候机楼面积" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">所在省市：</label>
              <span class="add_name">
      <input value="" name="所在省市" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">机场总机：</label>
              <span class="add_name">
      <input value="" name="机场总机" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">机场站调：</label>
              <span class="add_name">
      <input value="" name="机场站调" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">指挥中心：</label>
              <span class="add_name">
      <input value="" name="指挥中心" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">机场海拔：</label>
              <span class="add_name">
      <input value="" name="机场海拔" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">机场传真：</label>
              <span class="add_name">
      <input value="" name="机场传真" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">邮政地址：</label>
              <span class="add_name">
      <input value="" name="邮政地址" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">邮政编码：</label>
              <span class="add_name">
      <input value="" name="邮政编码" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">电子邮箱：</label>
              <span class="add_name">
      <input value="" name="电子邮箱" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">主页地址：</label>
              <span class="add_name">
      <input value="" name="主页地址" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">通航标志：</label>
              <span class="add_name">
      <input value="" name="通航标志" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">机场描述：</label>
              <span class="add_name">
      <input value="" name="机场描述" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
  </ul>
  </div>
        </form>
		<form id="form4">
<div class="add_menber" id="add_menber_style4" style="display:none">
          <ul class=" page-content">
    <li>
              <label class="label_name">安检通道编号：</label>
              <span class="add_name">
      <input value="" name="安检通道编号" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			
			<li>
            <label class="l_f">安检通道属性：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>国际通道</option>
			  <option>国内通道</option>
            </select>
          </li>
		  <li>
            <label class="l_f">对应区域：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>A</option>
			  <option>B</option>
			  <option>C</option>
			  <option>D</option>
            </select>
          </li>
			<li>
              <label class="label_name">安检口状态：</label>
            <input name="change2" type="radio" checked="checked" class="ace">
      <span class="lbl">启用</span>
	   <input name="change2" type="radio" class="ace">
      <span class="lbl">停用</span>
              <div class="prompt r_f"></div>
            </li>
  </ul>
  </div>
        </form>
		<form id="form5">
<div class="add_menber" id="add_menber_style5" style="display:none">
          <ul class=" page-content">
    <li>
              <label class="label_name">值机柜台编号：</label>
              <span class="add_name">
      <input value="" name="值机柜台编号" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			
			<li>
            <label class="l_f">所属航空公司：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>南航</option>
			  <option>东航</option>
            </select>
          </li>
		  <li>
            <label class="l_f">对应区域：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>A</option>
			  <option>B</option>
			  <option>C</option>
			  <option>D</option>
            </select>
          </li>
		  <li>
            <label class="l_f">所属航站楼：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>T1</option>
			  <option>T2</option>
			  <option>T3</option>
			  <option>T4</option>
            </select>
          </li>
		   <li>
            <label class="l_f">属性：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>国内</option>
			  <option>国际</option>
            </select>
          </li>
		   <li>
            <label class="l_f">类别：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>A</option>
			  <option>B</option>
			  <option>C</option>
			  <option>D</option>
            </select>
          </li>

			<li>
              <label class="label_name">状态：</label>
            <input name="change2" type="radio" checked="checked" class="ace">
      <span class="lbl">启用</span>
	   <input name="change2" type="radio" class="ace">
      <span class="lbl">停用</span>
              <div class="prompt r_f"></div>
            </li>
  </ul>
  </div>
        </form>
		<form id="form6">
<div class="add_menber" id="add_menber_style6" style="display:none">
          <ul class=" page-content">
			<li>
              <label class="label_name">登机口编号：</label>
              <span class="add_name">
      <input value="" name="登机口编号" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">名称</label>
              <span class="add_name">
      <input value="" name="名称" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>	
			<li>
            <label class="l_f">属性：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>远</option>
			  <option>近</option>
            </select>
          </li>
		  <li>
            <label class="l_f">类型：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>A</option>
			  <option>B</option>
			  <option>C</option>
			  <option>D</option>
            </select>
          </li>
		  <li>
            <label class="l_f">对应机位：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>S1</option>
			  <option>S2</option>
			  <option>S3</option>
			  <option>S4</option>
            </select>
          </li>
		   <li>
            <label class="l_f">所属航站楼：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>T1</option>
			  <option>T2</option>
			  <option>T3</option>
			  <option>T4</option>
            </select>
          </li>
		  <li>
              <label class="label_name">条屏显示</label>
              <span class="add_name">
      <input value="" name="条屏显示" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>

			<li>
              <label class="label_name">状态：</label>
            <input name="change2" type="radio" checked="checked" class="ace">
      <span class="lbl">启用</span>
	   <input name="change2" type="radio" class="ace">
      <span class="lbl">停用</span>
              <div class="prompt r_f"></div>
            </li>
  </ul>
  </div>
        </form>
		<form id="form7">
<div class="add_menber" id="add_menber_style7" style="display:none">
          <ul class=" page-content">
			<li>
              <label class="label_name">姓名：</label>
              <span class="add_name">
      <input value="" name="姓名" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">身份证号</label>
              <span class="add_name">
      <input value="" name="身份证号" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>	
			<li>
              <label class="label_name">电话</label>
              <span class="add_name">
      <input value="" name="电话" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>	
			<li>
              <label class="label_name">性别：</label>
            <input name="sex1" type="radio" checked="checked" class="ace">
      <span class="lbl">男</span>
	   <input name="sex1" type="radio" class="ace">
      <span class="lbl">女</span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">邮箱</label>
              <span class="add_name">
      <input value="" name="邮箱" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>	
			<li>
            <label class="l_f">是否是贵宾：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>是</option>
			  <option>否</option>
            </select>
          </li>
		  
		  <li>
              <label class="label_name">最后一次起飞时间</label>
              <span class="add_name">
      <input value="" name="最后一次起飞时间" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">最后一次起飞航班号</label>
              <span class="add_name">
      <input value="" name="最后一次起飞航班号" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
  </ul>
  </div>
        </form>
		<form id="form8">
<div class="add_menber" id="add_menber_style8" style="display:none">
          <ul class=" page-content">
			<li>
              <label class="label_name">关联ID：</label>
              <span class="add_name">
      <input value="" name="关联ID" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">航班号</label>
              <span class="add_name">
      <input value="" name="航班号" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>	
			<li>
              <label class="label_name">姓名</label>
              <span class="add_name">
      <input value="" name="姓名" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>	
			<li>
              <label class="label_name">座位号</label>
              <span class="add_name">
      <input value="" name="座位号" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>	
			<li>
              <label class="label_name">舱位</label>
              <span class="add_name">
      <input value="" name="舱位" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>	
			<li>
              <label class="label_name">航程</label>
              <span class="add_name">
      <input value="" name="航程" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>	
			<li>
              <label class="label_name">值机时间</label>
              <span class="add_name">
      <input value="" name="值机时间" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
		  <li>
              <label class="label_name">值机柜台</label>
              <span class="add_name">
      <input value="" name="值机柜台" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">安检时间</label>
              <span class="add_name">
      <input value="" name="安检时间" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">安检通道</label>
              <span class="add_name">
      <input value="" name="安检通道" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">登机时间</label>
              <span class="add_name">
      <input value="" name="登机时间" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">同行旅客</label>
              <span class="add_name">
      <input value="" name="同行旅客" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">目的地</label>
              <span class="add_name">
      <input value="" name="目的地" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
  </ul>
  </div>
        </form>
		<form id="form9">
<div class="add_menber" id="add_menber_style9" style="display:none">
          <ul class=" page-content">
			<li>
              <label class="label_name">原因代码：</label>
              <span class="add_name">
      <input value="" name="原因代码" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">中文描述</label>
              <span class="add_name">
      <input value="" name="中文描述" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>	
			<li>
              <label class="label_name">英文描述</label>
              <span class="add_name">
      <input value="" name="英文描述" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>	
  </ul>
  </div>
        </form>
		<form id="form10">
<div class="add_menber" id="add_menber_style10" style="display:none">
          <ul class=" page-content">
			<li>
              <label class="label_name">廊桥编码：</label>
              <span class="add_name">
      <input value="" name="廊桥编码" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
            <label class="l_f">对应机位：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>S1</option>
			  <option>S2</option>
			  <option>S3</option>
			  <option>S4</option>
            </select>
          </li>
		   <li>
            <label class="l_f">所属航站楼：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>T1</option>
			  <option>T2</option>
			  <option>T3</option>
			  <option>T4</option>
            </select>
          </li>
  </ul>
  </div>
        </form>
		<form id="form11">
<div class="add_menber" id="add_menber_style11" style="display:none">
          <ul class=" page-content">
			<li>
              <label class="label_name">跑道编号：</label>
              <span class="add_name">
      <input value="" name="跑道编号" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">跑道长度</label>
              <span class="add_name">
      <input value="" name="跑道长度" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>	
			<li>
              <label class="label_name">跑道方向</label>
              <span class="add_name">
      <input value="" name="跑道方向" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
            <label class="l_f">跑道属性：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>国际</option>
			  <option>国内</option>
            </select>
          </li>
  </ul>
  </div>
        </form>
		<form id="form12">
<div class="add_menber" id="add_menber_style12" style="display:none">
          <ul class=" page-content">
			<li>
              <label class="label_name">机位号：</label>
              <span class="add_name">
      <input value="" name="机位号" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
            <label class="l_f">机位属性：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>国际</option>
			  <option>国内</option>
            </select>
          </li>
		  <li>
            <label class="l_f">停靠属性：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>靠廊桥</option>
			  <option>不靠廊桥</option>
            </select>
          </li>
			<li>
              <label class="label_name">机位长</label>
              <span class="add_name">
      <input value="" name="机位长" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>	
			<li>
              <label class="label_name">机位宽</label>
              <span class="add_name">
      <input value="" name="机位宽" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
            <label class="l_f">机位类型：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>类型1</option>
			  <option>类型2</option>
            </select>
          </li>
		  <li>
              <label class="label_name">左机位编码</label>
              <span class="add_name">
      <input value="" name="左机位编码" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">右机位编码</label>
              <span class="add_name">
      <input value="" name="右机位编码" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
            <label class="l_f">机位状态：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>启用</option>
			  <option>停用</option>
            </select>
          </li>
  </ul>
  </div>
        </form>
		<form id="form13">
<div class="add_menber" id="add_menber_style13" style="display:none">
          <ul class=" page-content">
			<li>
              <label class="label_name">任务代码：</label>
              <span class="add_name">
      <input value="" name="任务代码" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">任务简称：</label>
              <span class="add_name">
      <input value="" name="任务简称" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">任务排序</label>
              <span class="add_name">
      <input value="" name="任务排序" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>	
			<li>
              <label class="label_name">中文名称</label>
              <span class="add_name">
      <input value="" name="中文名称" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
              <label class="label_name">英文名称</label>
              <span class="add_name">
      <input value="" name="英文名称" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
  </ul>
  </div>
        </form>
		<form id="form14">
<div class="add_menber" id="add_menber_style14" style="display:none">
          <ul class=" page-content">
			<li>
              <label class="label_name">航站楼编码：</label>
              <span class="add_name">
      <input value="" name="航站楼编码" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
            <label class="l_f">航站楼属性：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>国际</option>
			  <option>国内</option>
            </select>
          </li>
		  <li>
            <label class="l_f">航站楼状态：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>启用</option>
			  <option>停用</option>
            </select>
          </li>
		  <li>
            <label class="l_f">所属航空公司：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>东航</option>
			  <option>南航</option>
            </select>
          </li>
			
  </ul>
  </div>
        </form>
		<form id="form15">
<div class="add_menber" id="add_menber_style15" style="display:none">
          <ul class=" page-content">
			<li>
              <label class="label_name">行李装盘编码：</label>
              <span class="add_name">
      <input value="" name="行李装盘编码" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			<li>
            <label class="l_f">属性：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>国际</option>
			  <option>国内</option>
            </select>
          </li>
		  <li>
            <label class="l_f">状态：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>启用</option>
			  <option>停用</option>
            </select>
          </li>
		  <li>
            <label class="l_f">所属航空公司：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>东航</option>
			  <option>南航</option>
            </select>
          </li>
		   <li>
            <label class="l_f">所属航站楼：</label>
            <select name="" style=" width:110px">
              <option>--选择--</option>
              <option>T1</option>
			  <option>T2</option>
            </select>
          </li>
		  <li>
              <label class="label_name">条屏显示：</label>
              <span class="add_name">
      <input value="" name="条屏显示" type="text"  class="text_add"/>
      </span>
              <div class="prompt r_f"></div>
            </li>
			
  </ul>
  </div>
        </form>
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
</body>
</html>
<script> 


	$("select[name='queryType']").change(function(){ 
$div = $("#div"+$(this).val());//选择的div 
$div.parent().children("table").hide(); //让其他所有div隐藏
$div.show();  
});


/*-添加*/
 $('#member_add').on('click', function(){
    layer.open({
        type: 1,
        title: '添加基础数据',
		maxmin: true, 
		shadeClose: true, //点击遮罩关闭层
        area : ['800px' , '400px'],
        content:$('#add_menber_style'+$("select[name='queryType']").val()),
		btn:['提交','取消'],
		yes:function(index,layero){	
		 var num=0;
		 var str="";
     $(".add_menber input[type$='text']").each(function(n){
          if($(this).val()=="")
          {
               
			   layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
                title: '提示框',				
				icon:0,								
          }); 
		    num++;
            return false;            
          } 
		 });
		  if(num>0){  return false;}	 	
          else{
			  $("#form"+$("select[name='queryType']").val()).submit();  
			  layer.alert('添加成功！',{
               title: '提示框',				
			icon:1,		
			  });
			   layer.close(index);
			   
		  }				     				
		}
    });
});
/*-编辑*/
function member_edit(id){
	  layer.open({
        type: 1,
        title: '修改基础数据',
		maxmin: true, 
		shadeClose:false, //点击遮罩关闭层
        area : ['800px' , '400px'],
        content:$('#add_menber_style'+$("select[name='queryType']").val()),
		btn:['提交','取消'],
		yes:function(index,layero){	
		 var num=0;
		 var str="";
     $(".add_menber input[type$='text']").each(function(n){
          if($(this).val()=="")
          {
               
			   layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
                title: '提示框',				
				icon:0,								
          }); 
		    num++;
            return false;            
          } 
		 });
		  if(num>0){  return false;}	 	
          else{
			  $("#form"+$("select[name='queryType']").val()).submit();
			  layer.alert('编辑成功！',{
               title: '提示框',				
			icon:1,		
			  });
			   layer.close(index);	
		  }		  		     				
		}
    });
}


/*-删除*/
function member_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		$(obj).parents("tr").remove();
		layer.msg('已删除!',{icon:1,time:1000});
	});
}



</script>