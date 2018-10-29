<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
 <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
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
<title>用户组</title>
</head>

<body>
<div class="margin clearfix">
 <div class="Shops_Audit"> 
  <div class="border clearfix"> <span class="l_f"> <a href="javascript:" id="member_add" class="btn btn-warning"><i class="icon-plus"></i>添加用户</a> </span> <span class="r_f">共：<b>2345</b>条</span> </div>
   <!--申请列表-->
   <div class="audit_list">
     <table class="table table-striped table-bordered table-hover" id="sample-table">
       <thead>
		 <tr>
          <th width="25">
          <label><input type="checkbox" class="ace">
            <span class="lbl"></span></label></th>
            <th  >用户组编号</th>
            <th  >用户组名称</th>
            <th  >用户组状态</th>             
            <th  >操作</th>
			</tr>
		</thead>
        <tbody>
        <tr>
         <td><label>
                          <input type="checkbox" class="ace">
                          <span class="lbl"></span></label></td>
         <td>001</td>
         <td>普通用户</td> 
         <td class="td-status"><span class="label label-success radius">正常</span></td>
          <td class="td-manage">
          <a onClick="member_stop(this,'10001')"  href="javascript:;" title="停用"  class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>
           <a title="用户组详情" href="user-group-list.jsp" class="btn btn-xs btn-info Refund_detailed">用户组详情</a>        
           <a title="修改权限" href="javascript:;"  onclick="member_edit('550')" class="btn btn-xs btn-warning">修改权限</a>
           
          </td>
        </tr>
         <tr>
         <td><label>
                          <input type="checkbox" class="ace">
                          <span class="lbl"></span></label></td>
         <td>002</td>
         <td>管理员</td> 
         <td class="td-status"><span class="label label-success radius">正常</span></td>
          <td class="td-manage">
          <a onClick="member_stop(this,'10001')"  href="javascript:;" title="停用"  class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>
           <a title="用户组详情" href="user-group-list.jsp" class="btn btn-xs btn-info Refund_detailed">用户组详情</a>        
           <a title="修改权限" href="javascript:;"  onclick="member_edit('550')" class="btn btn-xs btn-warning">修改权限</a>
           
          </td>
        </tr>
         <tr>
         <td><label>
                          <input type="checkbox" class="ace">
                          <span class="lbl"></span></label></td>
         <td>003</td>
         <td>超级管理员</td> 
         <td class="td-status"><span class="label label-success radius">正常</span></td>
          <td class="td-manage">
          <a onClick="member_stop(this,'10001')"  href="javascript:;" title="停用"  class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>
           <a title="用户组详情" href="user-group-list.jsp" class="btn btn-xs btn-info Refund_detailed">用户组详情</a>        
           <a title="修改权限" href="javascript:;"  onclick="member_edit('550')" class="btn btn-xs btn-warning">修改权限</a>
           
          </td>
        </tr>
        </tbody>
        </table>
   
   </div>
 </div>
</div>


<!--添加用户图层-->
<form class="add_menber" id="add_menber_style" style="display:none">
<ul class=" page-content">
          <li>
    <label class="label_name" style="width:100px !important">用户组编号：</label>
    <span class="add_name">
            <input value="" name="用户组编号" type="text"  class="text_add"/>
            </span>
    <div class="prompt r_f"></div>
  </li>
         
          <li>
    <label class="label_name"  style="width:100px !important"> 用户组名称：</label>
    <span class="add_name">
            <input name="用户组名称" type="text"  class="text_add"/>
            </span>
    <div class="prompt r_f"></div>
  </li>  
        </ul>
</form>

<!--修改权限图层-->
<form class="member_edit" id="member_edit_style" style="display:none">
 <div class="Assign_style">
      <div class="Select_Competence">
      <dl class="permission-list">
		<dt><label class="middle"><input name="user-Character-0" class="ace" type="checkbox" id="id-disable-check"><span class="lbl">产品管理</span></label></dt>
		<dd>
		 <dl class="cl permission-list2">
		 <dt><label class="middle"><input type="checkbox" value="" class="ace"  name="user-Character-0-0" id="id-disable-check"><span class="lbl">产品列表</span></label></dt>
         <dd>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-0"><span class="lbl">添加</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-1"><span class="lbl">修改</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-2"><span class="lbl">删除</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-3"><span class="lbl">查看</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-4"><span class="lbl">审核</span></label>
		</dd>
		</dl>
	     <dl class="cl permission-list2">
		  <dt><label class="middle"><input type="checkbox" value="" class="ace"  name="user-Character-0-1" id="user-Character-0-1"> <span class="lbl">品牌管理</span></label></dt>
		  <dd>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-0"><span class="lbl">添加</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-1"><span class="lbl">修改</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-2"><span class="lbl">删除</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-3"><span class="lbl">查看</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-4"><span class="lbl">审核</span></label>
		 </dd>
		</dl>
        <dl class="cl permission-list2">
		  <dt><label class="middle"><input type="checkbox" value="" class="ace"  name="user-Character-0-1" id="user-Character-0-1"> <span class="lbl">分类管理</span></label></dt>
		  <dd>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-0"><span class="lbl">添加</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-1"><span class="lbl">修改</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-2"><span class="lbl">删除</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-3"><span class="lbl">查看</span></label>
		 </dd>
		</dl>
		</dd>
	    </dl> 
      
	   
        </dd>
	    </dl> 
        <!--交易管理--> 
        <dl class="permission-list">
		<dt><label class="middle"><input name="user-Character-0" class="ace" type="checkbox" id="id-disable-check"><span class="lbl">数据管理</span></label></dt>
		<dd>
		 <dl class="cl permission-list2">
		 <dt><label class="middle"><input type="checkbox" value="" class="ace"  name="user-Character-0-0" id="id-disable-check"><span class="lbl">操作信息</span></label></dt>
         <dd>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-0"><span class="lbl">添加</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-1"><span class="lbl">修改</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-2"><span class="lbl">删除</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-3"><span class="lbl">查看</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-4"><span class="lbl">审核</span></label>
		</dd>
		</dl>
	     
             
        </dd>
		</dl> 
        
          <!--会员管理--> 
        <dl class="permission-list">
		<dt><label class="middle"><input name="user-Character-0" class="ace" type="checkbox" id="id-disable-check"><span class="lbl">用户管理</span></label></dt>
		<dd>
		 <dl class="cl permission-list2">
		 <dt><label class="middle"><input type="checkbox" value="" class="ace"  name="user-Character-0-0" id="id-disable-check"><span class="lbl">用户信息</span></label></dt>
         <dd>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-0"><span class="lbl">添加</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-1"><span class="lbl">修改</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-2"><span class="lbl">删除</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-3"><span class="lbl">查看</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-4"><span class="lbl">审核</span></label>
		</dd>
		</dl>
	     <dl class="cl permission-list2">
		  <dt><label class="middle"><input type="checkbox" value="" class="ace"  name="user-Character-0-1" id="user-Character-0-1"> <span class="lbl">登记管理</span></label></dt>
		  <dd>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-0"><span class="lbl">添加</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-1"><span class="lbl">修改</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-2"><span class="lbl">删除</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-3"><span class="lbl">查看</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-4"><span class="lbl">审核</span></label>
		 </dd>
		</dl> 
             <dl class="cl permission-list2">
		  <dt><label class="middle"><input type="checkbox" value="" class="ace"  name="user-Character-0-1" id="user-Character-0-1"> <span class="lbl">会员积分</span></label></dt>
		  <dd>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-0"><span class="lbl">添加</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-1"><span class="lbl">修改</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-2"><span class="lbl">删除</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-3"><span class="lbl">查看</span></label>
		   <label class="middle"><input type="checkbox" value="" class="ace" name="user-Character-0-0-0" id="user-Character-0-0-4"><span class="lbl">审核</span></label>
		 </dd>
		</dl>  
        </dd>
		</dl> 
      </form>
</div>
</body>
</html>
<script>

/*按钮选择*/
$(function(){
	$(".permission-list dt input:checkbox").click(function(){
		$(this).closest("dl").find("dd input:checkbox").prop("checked",$(this).prop("checked"));
	});
	$(".permission-list2 dd input:checkbox").click(function(){
		var l =$(this).parent().parent().find("input:checked").length;
		var l2=$(this).parents(".permission-list").find(".permission-list2 dd").find("input:checked").length;
		if($(this).prop("checked")){
			$(this).closest("dl").find("dt input:checkbox").prop("checked",true);
			$(this).parents(".permission-list").find("dt").first().find("input:checkbox").prop("checked",true);
		}
		else{
			if(l==0){
				$(this).closest("dl").find("dt input:checkbox").prop("checked",false);
			}
			if(l2==0){
				$(this).parents(".permission-list").find("dt").first().find("input:checkbox").prop("checked",false);
			}
		}
		
	});
});

/*用户组-编辑*/
function member_edit(id){
	  layer.open({
        type: 1,
        title: '修改用户组权限',
		maxmin: true, 
		shadeClose:false, //点击遮罩关闭层
        area : ['800px' , ''],
        content:$('#member_edit_style'),
		btn:['提交','取消'],
		yes:function(index,layero){	
		 var num=0;
		 var str="";
     $(".member_edit input[type$='text']").each(function(n){
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
			  $('#member_edit_style').submit();
			  layer.alert('修改成功！',{
               title: '提示框',				
			icon:1,		
			  });
			   layer.close(index);	
		  }		  		     				
		}
    });
}
/*用户组-添加*/
 $('#member_add').on('click', function(){
    layer.open({
        type: 1,
        title: '添加用户组',
		maxmin: true, 
		shadeClose: true, //点击遮罩关闭层
        area : ['800px' , '300px'],
        content:$('#add_menber_style'),
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
			  $('#add_menber_style').submit();
			  layer.alert('添加成功！',{
               title: '提示框',				
			icon:1,		
			  });
			   layer.close(index);	
		  }		  		     				
		}
    });
});
   
/*用户组-停用*/
function member_stop(obj,id){
	layer.confirm('确认要停用吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="icon-ok  bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
		$(obj).remove();
		layer.msg('已停用!',{icon: 5,time:1000});
	});
	
}

/*用户组-启用*/
function member_start(obj,id){
	layer.confirm('确认要启用吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="icon-ok bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
		$(obj).remove();
		layer.msg('已启用!',{icon: 6,time:1000});
	});
} 
</script>
