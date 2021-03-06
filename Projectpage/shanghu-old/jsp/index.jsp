<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>鸿小搜管理中心</title>
		<meta name="renderer" content="webkit|ie-comp|ie-stand">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
		<meta http-equiv="Cache-Control" content="no-siteapp" />

		<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
		<link rel="stylesheet" href="../css/font.css">
		<link rel="stylesheet" href="../css/xadmin.css">
		<script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
		<script src="../lib/layui/layui.js" charset="utf-8"></script>
		<script type="text/javascript" src="../js/xadmin.js"></script>
	</head>

	<body>
		<!-- 顶部开始 -->
		<div class="container">
			<div class="logo">
				<a>鸿小搜管理中心</a>
			</div>
			<div class="left_open">
				<i title="展开左侧栏" class="iconfont">&#xe699;</i>
			</div>
			<ul class="layui-nav right" lay-filter="">
				
				<li class="layui-nav-item">
					<a href="javascript:;"> 尊敬的  < ${userName } > 欢迎使用!</a>
					<dl class="layui-nav-child">
						<!-- 二级菜单 -->
						<dd>
							<a href="${pageContext.request.contextPath }/logout">退出</a>
						</dd>
					</dl>
				</li>

			</ul>

		</div>
		<!-- 顶部结束 -->
		<!-- 中部开始 -->
		<!-- 左侧菜单开始 -->
		<div class="left-nav">
			<div id="side-nav">
				<ul id="nav">
					<li class="open">
						<a href="javascript:;">
							<i class="iconfont">&#xe6b8;</i>
							<cite>收银</cite>
							<i class="iconfont nav_right">&#xe697;</i>
						</a>
						<ul class="sub-menu" style="display: block;">
							<li>
								<a _href="${pageContext.request.contextPath }/sy-liushui">
									<i class="iconfont">&#xe6a7;</i>
									<cite>流水查询</cite>
								</a>
							</li>
							<li>
								<a _href="${pageContext.request.contextPath }/sy-shujubiao">
									<i class="iconfont">&#xe6a7;</i>
									<cite>数据统计</cite>
								</a>
							</li>
							<li>
								<a _href="${pageContext.request.contextPath }/sy-mendian">
									<i class="iconfont">&#xe6a7;</i>
									<cite>门店管理</cite>
								</a>
							</li>
							<li>
								<a _href="${pageContext.request.contextPath }/sy-yingyeyuan">
									<i class="iconfont">&#xe6a7;</i>
									<cite>营业员管理</cite>
								</a>
							</li>
							<li>
								<a _href="${pageContext.request.contextPath }/takeout">
									<i class="iconfont">&#xe6a7;</i>
									<cite>外卖流水</cite>
								</a>
							</li>
							<li>
								<a _href="${pageContext.request.contextPath }/sy-peizhi">
									<i class="iconfont">&#xe6a7;</i>
									<cite>参数配置</cite>
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<!-- 左侧菜单结束 -->
		<!-- 右侧主体开始 -->
		<div class="page-content">
			<div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
				<ul class="layui-tab-title">
					<li>首页</li>
				</ul>
				<div class="layui-tab-content">
					<div class="layui-tab-item layui-show">
						<iframe src='${pageContext.request.contextPath }/welcome' frameborder="0" scrolling="no" class="x-iframe"></iframe>
					</div>
				</div>
			</div>
		</div>
		<div class="page-content-bg"></div>
		<!-- 右侧主体结束 -->
	</body>

</html>