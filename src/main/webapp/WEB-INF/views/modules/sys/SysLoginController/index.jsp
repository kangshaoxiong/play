<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<c:set var="PURL" value="${pageContext.request.contextPath}"></c:set>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="${PURL}/static/H-ui//favicon.ico" >
<LINK rel="Shortcut Icon" href="${PURL}/static/H-ui//favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="${PURL}/static/H-ui/lib/html5.js"></script>
<script type="text/javascript" src="${PURL}/static/H-ui/lib/respond.min.js"></script>
<script type="text/javascript" src="${PURL}/static/H-ui/lib/PIE_IE678.js"></script>
<![endif]-->
<link href="${PURL}/static/H-ui/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="${PURL}/static/H-ui/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="${PURL}/static/H-ui/lib/Hui-iconfont/1.0.6/iconfont.css" rel="stylesheet" type="text/css" />
<link href="${PURL}/static/H-ui/skin/default/skin.css" rel="stylesheet" type="text/css" id="skin" />
<link href="${PURL}/static/H-ui/css/style.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>后台管理</title>
<meta name="keywords" content="搜索关键字">
<meta name="description" content="收录备注">
</head>
<body>
<header class="Hui-header cl"> <a class="Hui-logo l" title="NET.KANGSHAO.PLAY" href="/">NET.KANGSHAO.PLAY</a> <a class="Hui-logo-m l" href="/" title="H-ui.admin">NET.KANGSHAO.PLAY</a> <span class="Hui-subtitle l">V1.0</span>
	<nav class="mainnav cl" id="Hui-nav">
		<ul>
			<li class="dropDown dropDown_click"><a href="javascript:;" aria-expanded="true" aria-haspopup="true" data-toggle="dropdown" class="dropDown_A"><i class="Hui-iconfont">&#xe600;</i> 新增 <i class="Hui-iconfont">&#xe6d5;</i></a>
				<ul class="dropDown-menu radius box-shadow">
					<li><a href="javascript:;" onclick="article_add('添加资讯','article-add.html')"><i class="Hui-iconfont">&#xe616;</i> 资讯</a></li>
					<li><a href="javascript:;" onclick="picture_add('添加资讯','picture-add.html')"><i class="Hui-iconfont">&#xe613;</i> 图片</a></li>
					<li><a href="javascript:;" onclick="product_add('添加资讯','product-add.html')"><i class="Hui-iconfont">&#xe620;</i> 产品</a></li>
					<li><a href="javascript:;" onclick="member_add('添加用户','member-add.html','','510')"><i class="Hui-iconfont">&#xe60d;</i> 用户</a></li>
				</ul>
			</li>
		</ul>
	</nav>
	<ul class="Hui-userbar">
		<li>超级管理员</li>
		<li class="dropDown dropDown_hover"><a href="#" class="dropDown_A">admin <i class="Hui-iconfont">&#xe6d5;</i></a>
			<ul class="dropDown-menu radius box-shadow">
				<li><a href="#">个人信息</a></li>
				<li><a href="#">切换账户</a></li>
				<li><a href="#">退出</a></li>
			</ul>
		</li>
		<li id="Hui-msg"> <a href="#" title="消息"><span class="badge badge-danger">1</span><i class="Hui-iconfont" style="font-size:18px">&#xe68a;</i></a> </li>
		<li id="Hui-skin" class="dropDown right dropDown_hover"><a href="javascript:;" title="换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
			<ul class="dropDown-menu radius box-shadow">
				<li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
				<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
				<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
				<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
				<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
				<li><a href="javascript:;" data-val="orange" title="绿色">橙色</a></li>
			</ul>
		</li>
	</ul>
	<a href="javascript:;" class="Hui-nav-toggle Hui-iconfont" aria-hidden="false">&#xe667;</a> </header>
<aside class="Hui-aside">
	<input runat="server" id="divScrollValue" type="hidden" value="" />
	<div class="menu_dropdown bk_2">
		<dl id="menu-system">
			<dt><i class="Hui-iconfont">&#xe62e;</i> 系统管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li>
						<dl id="menu-admin">
							<dt><i class="Hui-iconfont">&#xe62d;</i> 管理员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
							<dd>
								<ul>
									<li><a _href="admin-role.html" data-title="角色管理" href="javascript:void(0)">角色管理</a></li>
									<li><a _href="admin-permission.html" data-title="权限管理" href="javascript:void(0)">权限管理</a></li>
									<li><a _href="admin-list.html" data-title="管理员列表" href="javascript:void(0)">管理员列表</a></li>
								</ul>
							</dd>
						</dl>
					</li>
					<li><a _href="system-base.html" data-title="系统设置" href="javascript:void(0)">系统设置</a></li>
					<li><a _href="system-log.html" data-title="系统日志" href="javascript:void(0)">系统日志</a></li>
				</ul>
			</dd>
		</dl>
	</div>
</aside>
<div class="dislpayArrow"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<section class="Hui-article-box">
	<div id="Hui-tabNav" class="Hui-tabNav">
		<div class="Hui-tabNav-wp">
			<ul id="min_title_list" class="acrossTab cl">
				<li class="active"><span title="我的桌面" data-href="welcome.html">我的桌面</span><em></em></li>
			</ul>
		</div>
		<div class="Hui-tabNav-more btn-group"><a id="js-tabNav-prev" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a id="js-tabNav-next" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a></div>
	</div>
	<div id="iframe_box" class="Hui-article">
		<div class="show_iframe">
			<div style="display:none" class="loading"></div>
			<iframe scrolling="yes" frameborder="0" src="http://www.baidu.com"></iframe>
		</div>
	</div>
</section>
<script type="text/javascript" src="${PURL}/static/H-ui/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${PURL}/static/H-ui/lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="${PURL}/static/H-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="${PURL}/static/H-ui/js/H-ui.admin.js"></script> 
<script type="text/javascript">
/*资讯-添加*/
function article_add(title,url){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*图片-添加*/
function picture_add(title,url){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*产品-添加*/
function product_add(title,url){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*用户-添加*/
function member_add(title,url,w,h){
	layer_show(title,url,w,h);
}
</script> 
</body>
</html>