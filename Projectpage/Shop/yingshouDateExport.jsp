<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>分类管理</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />

	<link rel="shortcut icon" href="${basePath}/configuration/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" href="${basePath}/configuration/css/font.css">
	<link rel="stylesheet" href="${basePath}/configuration/fonts/icon/iconfonts.css" />
	<link rel="stylesheet" href="${basePath}/configuration/css/xadmin.css">
	<link rel="stylesheet" href="${basePath}/configuration/css/style.css">
	<link rel="stylesheet" href="${basePath}/configuration/css/style-baobiao.css">
	<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="${basePath}/configuration/lib/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="${basePath}/configuration/js/xadmin.js"></script>
	<style>
	.x-iframe {
		width: 100%;
		height: 100%;
	}
</style>
</head>
<body>
	<div class="">
		<div class="demoTable">
			<div class="layui-row">
				<form class="layui-form layui-col-md11 layui-col-sm11 layui-col-xs11 x-so" id="yingxiaodate" action="${basePath }/yingshou/goyingshouDateExport" method="post">
					<input type="hidden" id="meituan" value="${list[0].meituan}">
					<input type="hidden" id="elema" value="${list[0].elema}">
					<input type="hidden" id="ecount" value="${list[0].EatCount}">
					<input type="hidden" id="tcount" value="${list[0].TakeoutCount}">
					
					<div class="layui-input-inline" style="width: auto;padding: 0 15px;">
						<a onclick="getYestoday()"> &lt; 前一日</a>
					</div>
					<div class="layui-input-inline">
						<input type="text" name=""  autocomplete="off" class="layui-input" id="startTime" onchange="seldate(this)" value="${pd.startTime }">
					</div>
					<div class="layui-input-inline" style="width: auto;padding: 0 15px;">
						<a onclick="getNextday()">后一日 &gt;</a>
					</div>
					
					<div class="layui-input-inline">
						<button class="layui-btn" id="btn" lay-submit="" lay-filter="sreach" title="搜索"><i class="layui-icon">&#xe615;</i></button>
					</div>
				</form>
			</div>
		</div>
		<div class="layui-row layui-col-space30 baobiao">
			<div class="layui-col-md6 layui-col-sm6 layui-col-xs6">
				<div class="baobiaolist">
					<p class="baobiaolistitle">实收金额</p>
					<p class="baobiaolistct" >${list[0].AmountCollected }元</p>
				</div>
				<div class="lyaui-row">
					<div class="layui-col-md6 layui-col-sm6 layui-col-xs6 baobiaod">
						<div class="baobiaodc dnsj">
							<div></div>
							<p>${list[0].Eat }元</p>
						</div>
					</div>
					<div class="layui-col-md6 layui-col-sm6 layui-col-xs6 baobiaod">
						<div class="baobiaodc wmsj">
							<div></div>
							<p>${list[0].Takeout }元</p>
						</div>
					</div>
				</div>
			</div>
			<div class="layui-col-md6 layui-col-sm6 layui-col-xs6">
				<div class="baobiaolist">
					<p class="baobiaolistitle">订单数</p>
					<p class="baobiaolistct">${list[0].OrderCount}单</p>
				</div>
				<div class="lyaui-row">
					<div class="layui-col-md6 layui-col-sm6 layui-col-xs6 baobiaod">
						<div class="baobiaodc dnsj">
							<div></div>
							<p>${list[0].EatCount}单</p>
						</div>
					</div>
					<div class="layui-col-md6 layui-col-sm6 layui-col-xs6 baobiaod">
						<div class="baobiaodc wmsj">
							<div></div>
							<p>${list[0].TakeoutCount}单</p>
						</div>
					</div>
				</div>
			</div>
			<div class="layui-col-md6 layui-col-sm6 layui-col-xs6 baobiaotu">
				<div class="baobiaotulist">
					<div id="jiucan" style="width: 80%;height:400px;margin: 0 auto;"></div>
				</div>
			</div>
			<div class="layui-col-md6 layui-col-sm6 layui-col-xs6 baobiaotu">
				<div class="baobiaotulist">
					<div id="dingdan" style="width: 80%;height:400px;margin: 0 auto;"></div>
				</div>
			</div>
		</div>

	</div>
	<script src="//cdn.bootcss.com/echarts/3.3.2/echarts.min.js" charset="utf-8"></script>
	<script src="//cdn.bootcss.com/echarts/3.3.2/extension/bmap.min.js" type="text/javascript"></script>
	<script src="${basePath}/configuration/js/biao/xiaoshou.js" type="text/javascript" charset="utf-8"></script>
	<script src="${basePath}/configuration/js/biao/jiucan.js" type="text/javascript" charset="utf-8"></script>
	<script src="${basePath}/configuration/js/biao/dingdan.js" type="text/javascript" charset="utf-8"></script>
	<script src="${basePath}/configuration/js/biao/cpfenlei.js" type="text/javascript" charset="utf-8"></script>
	<script src="${basePath}/configuration/js/biao/cpxiaoshou.js" type="text/javascript" charset="utf-8"></script>
	<script src="${basePath}/configuration/js/biao/dnshoukuan.js" type="text/javascript" charset="utf-8"></script>
	<script>
	
		function getNextday() {
			var today = document.getElementById("startTime").value;
			var today = zhuan(today);
			var now = new Date();
			if(today==now){
				// 优化
			}else{
				var t = new Date(Date.parse(today.replace(/-/g, "/")));

				var tm = new Date(t.getFullYear(), t.getMonth(), t.getDate() + 1);

				var m = '0' + (tm.getMonth() + 1);
				var d = '0' + tm.getDate()
				var todate = tm.getFullYear() + '-'
				+ m.substr(m.length - 2) + '-' + d.substr(d.length - 2);
				document.getElementById("startTime").value = todate;
				window.location.href="${basePath}/yingshou/goyingshouDateExport?startTime="+todate+"&endTime="+todate;
			}
		}

		//前一天
		function getYestoday(date) {
			var date = document.getElementById("startTime").value;
			var t = new Date(Date.parse(date.replace(/-/g, "/")));
			var yesterday_milliseconds = t.getTime() - 1000 * 60 * 60 * 24;
			var yesterday = new Date();
			yesterday.setTime(yesterday_milliseconds);
			var strYear = yesterday.getFullYear();
			var strDay = yesterday.getDate();
			var strMonth = yesterday.getMonth() + 1;
			if (strMonth < 10) {
				strMonth = "0" + strMonth;
			}
			if (strDay < 10) {
				strDay = "0" + strDay
			}
			datastr = strYear + "-" + strMonth + "-" + strDay;
			document.getElementById("startTime").value = datastr;

			window.location.href="${basePath}/yingshou/goyingshouDateExport?startTime="+datastr;
		}
		function seldate(obj){
			window.location.href="${basePath}/yingshou/goyingshouDateExport?startTime="+obj.value;
		}
		var nowTime = new Date().valueOf();
		layui.use('laydate', function() {
			var laydate = layui.laydate;
			
		//初始赋值
		  laydate.render({
		    elem: '#startTime'
		    ,max: nowTime
		    ,value: $("#staratTime").val()
		  });
		 });
		// 基于准备好的dom，初始化echarts实例
		var myChart = echarts.init(document.getElementById('jiucan'));
		// 指定图表的配置项和数据
		var option = {
			title : {
				text : '就餐类型占比'
			},
			tooltip : {
				trigger : 'item',
				formatter : '{b}: {c} 元'
			},
			legend : {
				orient : 'vertical',
				left : 'right',
				data : [ '店内', '外卖' ]
			},
			series : [ {
				type : 'pie',
				radius : '55%',
				center : [ '50%', '60%' ],
				label : {
					normal : {
						show : true,
						formatter : '{b}: {c} 元'
					}
				},
				data : [ {
					value : $("#ecount").val(),
					itemStyle : {
						normal : {
							color : 'rgb(255,144,35)'
						}
					},
					name : '店内'
				}, {
					value : $("#tcount").val(),
					itemStyle : {
						normal : {
							color : 'rgb(252,192,31)'
						}
					},
					name : '外卖'
				} ],
				itemStyle : {
					emphasis : {
						shadowBlur : 10,
						shadowOffsetX : 0,
						shadowColor : 'rgba(0, 0, 0, 0.5)'
					}
				}
			} ]
		};
		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);

		// 基于准备好的dom，初始化echarts实例
		var myChart = echarts.init(document.getElementById('dingdan'));
		// 指定图表的配置项和数据
		var option = {
			title : {
				text : '订单来源占比'
			},
			tooltip : {
				trigger : 'item',
				formatter : '{b}: {c} 单'
			},
			legend : {
				orient : 'vertical',
				x : 'right',
				data : [ '美团', '饿了么' ]
			},
			series : [ {
				type : 'pie',
				radius : '55%',
				center : [ '50%', '60%' ],
				label : {
					normal : {
						show : true,
						formatter : '{b}: {c} 单'
					}
				},
				data : [ {
					value : $("#meituan").val(),
					itemStyle : {
						normal : {
							color : 'rgb(46,143,217)'
						}
					},
					name : '美团'
				}, {
					value : $("#elema").val(),
					itemStyle : {
						normal : {
							color : 'rgb(49,188,173)'
						}
					},
					name : '饿了么'
				} ],
				itemStyle : {
					emphasis : {
						shadowBlur : 10,
						shadowOffsetX : 0,
						shadowColor : 'rgba(0, 0, 0, 0.5)'
					}
				}
			} ]
		};
		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	</script>
</body>
</html>