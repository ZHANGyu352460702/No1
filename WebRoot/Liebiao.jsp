<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">



<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
<title>女装批发,1号批发网,www.xiaopangniu.net</title>
<meta name="keywords" content="1号批发网,女装批发,批发网">
<meta name="description"
	content="女装批发,全国最大的电子商务批发平台,1号批发网www.xiaopangniu.net">
<link rel="stylesheet" href="css/style.css" type="text/css">
<script type="text/javascript" src="script/tools.js"></script>


<link rel="stylesheet" type="text/css" href="css/qingfeng.css">
<script src="script/current.js"></script>
<script src="./script/jquery-2.1.0.js"></script>

</head>
<body>
	<form action="/No1/products/products_queryProductsByPage.action"
		method="post">
		<div class="qfbody">
			<div class="w1000 bgfff">
				<div id="header">
					<div class="header_top wrap">
						<div class="logo flt">
							<a href="/"><img src="images/default_logo.png" border="0"></a>
						</div>
						<div class="top-right frt">
							<ul class="clearfix">
								<li><a href="/?page-helpcenter.html" type="page"
									target="_blank">帮助中心</a></li>
								<li><a href="/" class="fav">加入收藏</a></li>
								<li class="login">您好<span id="uname_322"></span>！ <span
									id="loginBar_322"> <a href="/?passport-login.html">[请登录]</a>&nbsp;&nbsp;
										<a href="/?passport-signup.html">[免费注册]</a>
								</span>

								</li>
							</ul>
							<div class="toptel">
								<div class="AdvBanner">
									<a href="/" target="_blank"> <img src="images/tel.gif"
										style="width:280px;height:30px;">
									</a>
								</div>
							</div>
						</div>
					</div>
					<div id="qfnav">
						<div class="qfnav_l flt">
							<ul class="MenuList">
								<li><a href="<%=basePath%>products/products_queryProduct.action">首页</a></li>
                                <li><a href="<%=basePath%>nanzhuang/nanzhuang_queryProducts.action" >春装批发</a></li>
                                <li><a href="<%=basePath%>nanzhuang/nanzhuang_queryProducts1.action">夏装批发</a></li>
                                <li><a href="<%=basePath%>nanzhuang/nanzhuang_queryProducts2.action">秋装批发</a></li>
                                <li><a href="<%=basePath%>nanzhuang/nanzhuang_queryProducts3.action">冬装批发</a></li>
								<li><a href="<%=basePath%>products/products_queryProductsByPage.action?currentPage=1">兑换赠品</a></li>
								<li><a href="<%=basePath%>products/products_queryProductsByPage.action?currentPage=1">会员中心</a></li>
								<li style="position:relative;z-index:65535;"
									class="wgt-menu-more" id="324_menu_base"
									onclick="if($('324_showMore').style.display=='none'){$('324_showMore').style.display='';}else{ $('324_showMore').style.display='none';}"><a
									class="wgt-menu-view-more" href="JavaScript:void(0)">更多</a>
									<div class="v-m-page"
										style="display: none; position: absolute; top: 25px; left: 0px; visibility: visible; zoom: 1; opacity: 0.8;"
										id="324_showMore">
										<div>
											<a href="/?page-helpcenter.html">帮助中心</a>
										</div>
										<div>
											<a href="/?cart.html">购物车</a>
										</div>
										<div>
											<a href="/?page-cominfo.html">公司简介</a>
										</div>
										<div>
											<a href="/?message.html">客户留言</a>
										</div>
										<div>
											<a href="/?link-showList.html">友情链接</a>
										</div>
									</div></li>
							</ul>
						</div>
						<div class="qfnav_r cut frt">
							<a href="/?gallery---1--1--grid.html" type="url" target="_blank">新品特卖</a>
							<a href="/?brand-showList.html" type="url" target="_blank">品牌专区</a>
						</div>
					</div>
					<div class="search">
						<div class="qfso flt">
							<form action="/?search-result.html" method="post"
								class="SearchBar">
								<table cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="search_label"><span>关键字：</span> <input
												name="search" size="10" value="${search }"
												class="inputstyle keywords" id="search"></td>
											<td><input type="submit" value="搜索" class="btn_search"
												onfocus="this.blur();" id="searchB"></td>
											<td><a
												href="<%=basePath%>products/products_searchFenye.action"
												class="btn_advsearch">高级搜索</a></td>
										</tr>
									</tbody>
								</table>

							</form>
						</div>
						<div class="qftags flt">
							<strong>热门：</strong>
							    <a href="<%=basePath%>nanzhuang/nanzhuang_queryProducts.action" type="url" target="_blank">春装批发</a> 
                                <a href="<%=basePath%>nanzhuang/nanzhuang_queryProducts1.action" type="url" target="_blank">夏装批发</a> 
                                <a href="<%=basePath%>nanzhuang/nanzhuang_queryProducts2.action" type="url" target="_blank">秋装批发</a> 
                                <a href="<%=basePath%>nanzhuang/nanzhuang_queryProducts3.action" type="url" target="_blank">冬装批发</a>
								<a href="/?gallery--n,%E9%9B%AA%E5%9C%B0%E9%9D%B4-grid.html"type="url" target="_blank">新款上市</a>
						</div>
						<div class="qfcart frt">
							<div class="ShopCartWrap">
								<a href="/?cart-index.html" class="cart-container">购物车中有<b
									class="cart-number"> <script>
										document.write(Cookie
												.get('S[CART_NUMBER]') ? Cookie
												.get('S[CART_NUMBER]') : 0);
									</script> 0
								</b>件商品
								</a> <a class="gocart" href="/?cart-index.html">去结算</a>
							</div>
						</div>
					</div>
				</div>

				<div id="main" class="wrap pushdown-2">
					<div class="Navigation">
						您当前的位置： <span><a href="/" alt="" title="">首页</a></span> <span>»</span>
						<span class="now">女装</span>
					</div>
					<div class="clearfix">
						<div class="wrap-s flt">
							<div class="qfbox7 " id="">
								<h3>全部商品分类</h3>
								<div class="bd">
									<div class="GoodsCategoryWrap">
										<ul>
											<li class="c-cat-depth-1 "><a href="<%=basePath%>nanzhuang/nanzhuang_queryProducts.action">春装</a>
												<table class="c-cat-depth-2">
													<tbody>
														<tr>
															 <td><a href="<%=basePath%>fenlei/fenlei_queryProducts.action">风衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts1.action">连衣裙</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts2.action">半身裙</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts3.action">小脚裤</a>
                                                                 <a href="<%=basePath%>fenlei/fenlei_queryProducts4.action">打底裤</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts5.action">牛仔裤</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts6.action">打底衫</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts7.action">情侣装</a>
                                                                 <a href="<%=basePath%>fenlei/fenlei_queryProducts8.action">棉衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts9.action">大衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts10.action">毛呢短裤</a> </td>
														</tr>
													</tbody>
												</table></li>
											<li class="c-cat-depth-1 "><a href="<%=basePath%>nanzhuang/nanzhuang_queryProducts1.action">夏装</a>
												<table class="c-cat-depth-2">
													<tbody>
														<tr>
															<td><a href="<%=basePath%>fenlei/fenlei_queryProducts.action">风衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts1.action">连衣裙</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts2.action">半身裙</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts3.action">小脚裤</a>
                             									<a href="<%=basePath%>fenlei/fenlei_queryProducts4.action">打底裤</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts5.action">牛仔裤</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts6.action">打底衫</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts7.action">情侣装</a>
                               									<a href="<%=basePath%>fenlei/fenlei_queryProducts8.action">棉衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts9.action">大衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts10.action">毛呢短裤</a> </td>
														</tr>
													</tbody>
												</table></li>
											<li class="c-cat-depth-1 "><a href="<%=basePath%>nanzhuang/nanzhuang_queryProducts2.action">秋装</a>
												<table class="c-cat-depth-2">
													<tbody>
														<tr>
															<td><a href="<%=basePath%>fenlei/fenlei_queryProducts.action">风衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts1.action">连衣裙</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts2.action">半身裙</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts3.action">小脚裤</a>
                             									<a href="<%=basePath%>fenlei/fenlei_queryProducts4.action">打底裤</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts5.action">牛仔裤</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts6.action">打底衫</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts7.action">情侣装</a>
                               									<a href="<%=basePath%>fenlei/fenlei_queryProducts8.action">棉衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts9.action">大衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts10.action">毛呢短裤</a> </td>
														</tr>
													</tbody>
												</table></li>
											<li class="c-cat-depth-1 last "><a href="<%=basePath%>nanzhuang/nanzhuang_queryProducts3.action">冬装</a>
												<table class="c-cat-depth-2">
													<tbody>
														<tr>
															<td><a href="<%=basePath%>fenlei/fenlei_queryProducts.action">风衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts1.action">连衣裙</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts2.action">半身裙</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts3.action">小脚裤</a>
                             									<a href="<%=basePath%>fenlei/fenlei_queryProducts4.action">打底裤</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts5.action">牛仔裤</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts6.action">打底衫</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts7.action">情侣装</a>
                               									<a href="<%=basePath%>fenlei/fenlei_queryProducts8.action">棉衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts9.action">大衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts10.action">毛呢短裤</a> </td>
														</tr>
													</tbody>
												</table></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="qfbox10 pushdown-2" id="">
								<div class="AdvBanner">
									<a href="/" target="_blank"> <img src="images/ad3.gif"
										style="width:195px;height:250px;">
									</a>
								</div>
							</div>
							<div class="qfbox9 hot pushdown-2" id="">
								<h3>
									<b></b>热销排行榜
								</h3>
								<div class="bd">
									<div class="RankingList">
										<ul>
											<li class="l1 dotsep" style="color:default;0"><span>1</span>&nbsp;<a
												href="/?product-80.html" target="_blank"
												title="（特价）2013夏季笑脸蝙蝠袖女士T恤 休闲宽松淑女装汗衫4006"
												style="color:default;"> （特价）2013夏季笑脸蝙...</a></li>
											<li class="l2 dotsep" style="color:default;0"><span>2</span>&nbsp;<a
												href="/?product-81.html" target="_blank"
												title="2013劲爆卡哇伊公主蝙蝠袖T恤 学院风休闲派4032" style="color:default;">
													2013劲爆卡哇伊公主蝙蝠...</a></li>
											<li class="l3 dotsep" style="color:default;0"><span>3</span>&nbsp;<a
												href="/?product-82.html" target="_blank"
												title="爆款2013夏季新款外贸短袖淑女T恤 娃娃领送腰带女式T恤衫4060"
												style="color:default;"> 爆款2013夏季新款外贸短...</a></li>
											<li class="l4 dotsep" style="color:default;0"><span>4</span>&nbsp;<a
												href="/?product-83.html" target="_blank"
												title="2013春夏韩版新款明星同款淑女式T恤 休闲打底衫4044" style="color:default;">
													2013春夏韩版新款明星同...</a></li>
											<li class="l5 dotsep" style="color:default;0"><span>5</span>&nbsp;<a
												href="/?product-84.html" target="_blank"
												title="2013外贸女式无袖T恤 雪纺T恤 外衣4063" style="color:default;">
													2013外贸女式无袖T恤...</a></li>
											<li class="l6 dotsep" style="color:default;0"><span>6</span>&nbsp;<a
												href="/?product-85.html" target="_blank"
												title="2013韩版新款淑女拼色假两件T恤 休闲打底衫 长袖女式T恤4045"
												style="color:default;"> 2013韩版新款淑女拼色假...</a></li>
											<li class="l7 dotsep" style="color:default;0"><span>7</span>&nbsp;<a
												href="/?product-86.html" target="_blank"
												title="2013外贸欧美as**同款淑女T恤 蝙蝠袖女式大码 中袖宽松女装4057"
												style="color:default;"> 2013外贸欧美as**同款淑...</a></li>
											<li class="l8 dotsep" style="color:default;0"><span>8</span>&nbsp;<a
												href="/?product-87.html" target="_blank"
												title="爆款-2013夏季韩版新款百皱女士短袖T恤 坠坠领T恤衫4049"
												style="color:default;"> 爆款-2013夏季韩版新款百...</a></li>
											<li class="l9 dotsep" style="color:default;0"><span>9</span>&nbsp;<a
												href="/?product-88.html" target="_blank"
												title="五色可选2012新款高领蕾丝花边淑女式T恤 休闲长袖打底衫4043"
												style="color:default;"> 五色可选2012新款高领蕾...</a></li>
											<li class="l10 dotsep" style="color:default;0"><span>10</span>&nbsp;<a
												href="/?product-89.html" target="_blank"
												title="外贸2013韩版珍珠雪纺女士短袖T恤 休闲塑身纯棉泡泡袖女装4053"
												style="color:default;"> 外贸2013韩版珍珠雪纺女...</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="qfbox9 pushdown-2" id="">
								<h3>最近浏览过的商品</h3>
								<div class="bd">
									<div class="GoodsBrowsed" id="box_351"></div>

									<div class="textright">
										<a class="lnk clearAll"
											onclick="if(broswerStore){broswerStore.remove('history');$('box_351').empty()}">清除列表</a>
										| <a class="lnk viewAll" href="/?tools-history.html">查看所有</a><span>&nbsp;&nbsp;</span>
									</div>
								</div>
							</div>
						</div>
						<div class="wrap-m frt">
							<div class="AdvBanner">
								<a href="/" target="_blank"> <img src="images/ad4.gif"
									style="width:773px;height:188px;">
								</a>
							</div>
							<div class="clear"></div>
							<div class="GoodsSearchWrap">
								<form method="post" action="/?search-result.html"
									id="selector-form" style="display: block;">
									<input type="hidden" name="filter" value=""> <input
										type="hidden" name="cat_id" value="44">
									<div class="GoodsSelector division boxGray"
										style="display: block;">
										<div class="division boxBrown" style="display: block;">
											<table>
												<tbody>
													<tr>
														<td class="textright"
															style="padding-right:6px; width:72px; white-space:nowrap">分类名称：</td>
														<td
															style="line-height:22px; white-space:normal; word-break:break-all">
															  <a href="<%=basePath%>fenlei/fenlei_queryProducts.action">风衣</a> 
                                							  <a href="<%=basePath%>fenlei/fenlei_queryProducts1.action">连衣裙</a> 
                                							  <a href="<%=basePath%>fenlei/fenlei_queryProducts2.action">半身裙</a> 
                                 							  <a href="<%=basePath%>fenlei/fenlei_queryProducts3.action">小脚裤</a>
                                							  <a href="<%=basePath%>fenlei/fenlei_queryProducts4.action">打底裤</a>
                                 							  <a href="<%=basePath%>fenlei/fenlei_queryProducts5.action">牛仔裤</a>
                                							  <a href="<%=basePath%>fenlei/fenlei_queryProducts6.action">打底衫</a>
                                 							  <a href="<%=basePath%>fenlei/fenlei_queryProducts7.action">情侣装</a>
                                							  <a href="<%=basePath%>fenlei/fenlei_queryProducts8.action">棉衣</a>
                                 							  <a href="<%=basePath%>fenlei/fenlei_queryProducts9.action">大衣</a>
                                							  <a href="<%=basePath%>fenlei/fenlei_queryProducts10.action">毛呢短裤</a>
                                						 </td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="division" id="selector_contents"
											style="display: none;">
											<table width="100%">
											</table>
										</div>
									</div>
								</form>

								<div class="search_total">
									总共找到<font color="red">88</font>个商品
								</div>
								<div class="title" id="gallerybar" style="width: auto;">
									<table width="100%" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<td><table class="pager">
														<tbody>
															<tr>
																<td><span class="pagecurrent" id="currentPages">${currentPage}</span>/
																	<span class="pageall" id="countss">${counts }</span></td>
																<td><input type="submit" value="上一页" id="pre" /> <!-- <span class="unprev" title="已经是第一页">已经是第一页</span> --></td>
																<td><input type="submit" value="下一页" id="next">
																	<input type="hidden" value="${currentPage}"
																	name="currentPage" id="currentPage"> <script
																		type="text/javascript">
																		var currentPage = "${currentPage}";
																		var counts = "${counts }";
																		if (currentPage == "") {
																			currentPage = 1;
																		}
																		currentPage = parseInt(currentPage);
																		$(
																				"#pre")
																				.click(
																						function() {

																							currentPage -= 1;
																							if (currentPage < 1) {
																								currentPage = 1;
																							}
																							$(
																									"#currentPage")
																									.val(
																											parseInt(currentPage));
																						});
																		$(
																				"#next")
																				.click(
																						function() {
																							currentPage += 1;
																							if (currentPage >= counts) {
																								currentPage = counts;
																							}
																							$(
																									"#currentPage")
																									.val(
																											parseInt(currentPage));
																						});
																		$(
																				"#searchB")
																				.click(
																						function() {
																							$(
																									"#currentPage")
																									.val(
																											1);
																						});
																		/*  $("#searchB").click(function(){
																		 var currentPage =$("#currentPage").text();
																		 var counts = $("#counts").text();
																		 var search= $("#search").val();
																		  $.ajax({
																				url: "/No1/products/products_queryProductsByPage.action",
																				data: {
																					currentPage: currentPage,
																					counts:counts,
																					search:search
																				},
																				type: "post",
																				success: function(data) {
																					/* 将响应得到的文本数据变成js对象 
																					debugger;
																					var array = eval(data);
																					alert(array.products.length);
																				}
																			});
																		 }); */
																	</script> <!-- <a href="/?gallery-44--0--2--index.html"
																class="next" onmouseover="this.className = 'onnext'"
																onmouseout="this.className = 'next'" title="下一页">下一页</a> -->
																</td>
															</tr>
														</tbody>
													</table></td>
												<td><div class="listmode">
														<a href="/?gallery-44--0--1--index.html" title="图文列表">
															<span class="list_index">图文列表</span>
														</a> <a href="/?gallery-44--0--1--grid.html" title="橱窗"> <span
															class="list_grid">橱窗</span>
														</a> <a href="/?gallery-44--0--1--text.html" title="文字"> <span
															class="list_text">文字</span>
														</a>
													</div></td>
												<td><div class="listorder">
														<a class="list_asc" href="/?gallery-44--4--1--index.html"><i>价格</i></a>
														<a class="list_desc" href="/?gallery-44--8--1--index.html"><i>销量</i></a>
														<a class="list_desc" href="/?gallery-44--6--1--index.html"><i>人气</i></a>
													</div></td>
												<td><div class="filtmode">
														<label>排序方式:</label> <select
															onchange="if(this.value!='_')window.location=this.value">
															<optgroup label="排序">
																<option value="?gallery-44--0--1--index.html"
																	class="selected" selected="selected">默认</option>
																<option value="?gallery-44--1--1--index.html">
																	按发布时间 新-&gt;旧</option>
																<option value="?gallery-44--2--1--index.html">
																	按发布时间 旧-&gt;新</option>
																<option value="?gallery-44--3--1--index.html">
																	按价格 从高到低</option>
																<option value="?gallery-44--4--1--index.html">
																	按价格 从低到高</option>
																<option value="?gallery-44--5--1--index.html">
																	访问周次数</option>
																<option value="?gallery-44--6--1--index.html">
																	总访问次数</option>
																<option value="?gallery-44--7--1--index.html">
																	周购买次数</option>
																<option value="?gallery-44--8--1--index.html">
																	总购买次数</option>
																<option value="?gallery-44--9--1--index.html">
																	评论次数</option>
															</optgroup>
														</select>
													</div></td>
											</tr>
										</tbody>
									</table>
								</div>
								<c:forEach items="${products }" var="p">
									<div class="ItemsWarp clearfix">

										<div class="items-list " product="258" id="pdt-258">
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tbody>
													<tr>
														<td class="goodpic" valign="middle" style=" width:160px;"><a
															target="_blank" style=" width:160px;height:160px;"
															href="/No1/productsDetail/productsDetail.action?pid=${p.pid }"> <img
																src="images/<c:forEach items="${p.pimgs }" var="pimgs">${pimgs.purl }</c:forEach>"
																alt="【2013早春新款】翻边小脚铅笔裤 夏季女装批发">
														</a></td>
														<%-- <td width="10px;">&nbsp;${p.pname }</td> --%>
														<td class="goodinfo"><h6>
																<a
																	href="/No1/productsDetail/productsDetail.action?pid=${p.pid }"
																	title="【2013早春新款】翻边小脚铅笔裤 夏季女装批发" class="entry-title"
																	target="_blank">${p.pname }</a>
															</h6></td>
														<td class="price_button" width="250"><ul>
																<li><span>价格:${p.price }</span></li>

																<!--<li class="intro rank-3">Rank 3</li>-->
															</ul>
															<ul class="button">
																<li class="addcart"><a
																	href="/?cart-258-addGoodsToCart.html" type="g"
																	buy="258" class="listact" target="_dialog_minicart"
																	title="加入购物车" rel="nofollow">加入购物车</a></li>
																<li title="" class="star-off"><a
																	href="/?passport-login.html" class="listact"
																	title="加入收藏" rel="nofollow">加入收藏</a></li>
																<li class="vdetail zoom"><a
																	title="【2013早春新款】翻边小脚铅笔裤 夏季女装批发"
																	href="/?product-258.html"
																	pic="/images/goods/20130515/2655cfb797bdef5e.jpg"
																	target="_blank" class="listact">查看详细</a></li>
																<li class="btncmp"><a href="javascript:void(0)"
																	onclick="gcompare.add({gid:'258',gname:'【2013早春新款】翻边小脚铅笔裤 夏季女装批发',gtype:'6'});"
																	class="btncmp" title="商品对比"> 商品对比 </a></li>
															</ul></td>
													</tr>
												</tbody>
											</table>
										</div>

									</div>
								</c:forEach>
								<div class="clearfix">
									<table class="pager floatRight">
										<tbody>
											<tr>
												<td><span class="unprev" title="已经是第一页">已经是第一页</span></td>
												<td class="pagernum"><strong class="pagecurrent">1</strong></td>
												<td style="padding-right:20px"><a
													href="/?gallery-44--0--2--index.html" class="next"
													onmouseover="this.className = 'onnext'"
													onmouseout="this.className = 'next'" title="下一页">下一页</a></td>
												<!-- <td>到第 <input type="text" class="pagenum"> 页</td>
    <td><input type="button" value="" class="go"></td> -->
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<script>
								window
										.addEvent(
												'domready',
												function() {
													/*关键字高亮*/
													try {
														(function(replace_str) {
															var replace = replace_str
																	.split("+");
															if (replace.length) {
																$ES(
																		'.entry-title')
																		.each(
																				function(
																						r) {
																					for (i = 0; i < replace.length; i++) {
																						if (replace[i]) {
																							if (replace[i] === '1') {
																								r
																										.setText(r
																												.get(
																														'text')
																												.replace(
																														/[^{]1/,
																														function() {
																															return "{0}"
																																	+ arguments[0]
																																	+ "{1}";
																														}));
																								continue;
																							} else if (replace[i] === '0') {
																								r
																										.setText(r
																												.get(
																														'text')
																												.replace(
																														/[^{]0/,
																														function() {
																															return "{0}"
																																	+ arguments[0]
																																	+ "{1}";
																														}));
																								continue;
																							}
																							;
																							var reg = new RegExp(
																									"("
																											+ replace[i]
																													.escapeRegExp()
																											+ ")",
																									"gi");
																							r
																									.setText(r
																											.get(
																													'text')
																											.replace(
																													reg,
																													function() {
																														return "{0}"
																																+ arguments[0]
																																+ "{1}";
																													}));
																						}
																					}
																					r
																							.set(
																									'html',
																									r
																											.get(
																													'text')
																											.format(
																													"<font color=red>",
																													"</font>"));
																				});
															}
														})('');
													} catch (e) {
													}

													if (window.ie6)
														return;

													// div id='gallerybar' 布局和排序区域dom定位
													var gallerybar = $('gallerybar'), gallerybarSize = gallerybar
															.getSize(), gallerybarPos = gallerybar
															.getPosition(), fixedStart = gallerybarSize.y
															+ gallerybarPos.y;

													var fixGalleryBar = function() {
														if (fixedStart < this
																.getScrollTop()) {
															gallerybar
																	.addClass(
																			'fixed')
																	.setStyles(
																			{
																				'width' : gallerybarSize.x
																			});
														} else {
															gallerybar
																	.removeClass(
																			'fixed')
																	.setStyles(
																			{
																				'width' : 'auto'
																			});
														}
													};

													window
															.addEvents({
																'resize' : fixGalleryBar,
																'scroll' : fixGalleryBar
															});

												});
							</script>
						</div>
					</div>
				</div>
				<div id="footer" class="wrap pushdown-2">
					<div class="line2"></div>
					<div class="helplist clearfix">
						<div class="flt help1">
							<div class="qfbox5 " id="">
								<h3>
									<i></i>新手上路
								</h3>
								<div class="TreeList">
									<div class="cat2">
										<a href="/?page-notice.html">顾客必读</a>
									</div>
									<div class="cat2">
										<a href="/?page-memberrank.html">会员等级折扣</a>
									</div>
									<div class="cat2">
										<a href="/?page-orderstatus.html">订单的几种状态</a>
									</div>
									<div class="cat2">
										<a href="/?page-scoreplan.html">积分奖励计划</a>
									</div>
									<div class="cat2">
										<a href="/?page-returngood.html">商品退货保障</a>
									</div>
								</div>
							</div>
						</div>
						<div class="flt help2">
							<div class="qfbox5 " id="">
								<h3>
									<i></i>购物指南
								</h3>
								<div class="TreeList">
									<div class="cat2">
										<a href="/?page-nonmember.html">非会员购物通道</a>
									</div>
									<div class="cat2">
										<a href="/?page-service.html">体贴的售后服务</a>
									</div>
									<div class="cat2">
										<a href="/?page-terms.html">网站使用条款</a>
									</div>
									<div class="cat2">
										<a href="/?page-disclaimer.html">网站免责声明</a>
									</div>
									<div class="cat2">
										<a href="/?page-process.html">简单的购物流程</a>
									</div>
								</div>
							</div>
						</div>
						<div class="flt help3">
							<div class="qfbox5 " id="">
								<h3>
									<i></i>支付方式
								</h3>
								<div class="TreeList">
									<div class="cat2">
										<a href="/?page-payment.html">支付方式</a>
									</div>
									<div class="cat2">
										<a href="/?page-shipping.html">配送方式</a>
									</div>
									<div class="cat2">
										<a href="/?page-orderinfo.html">订单何时出库？</a>
									</div>
									<div class="cat2">
										<a href="/?page-onlinepayment.html">网上支付小贴士</a>
									</div>
									<div class="cat2">
										<a href="/?page-shippinginfo.html">关于送货和验货</a>
									</div>
								</div>
							</div>
						</div>
						<div class="flt help4">
							<div class="qfbox5 " id="">
								<h3>
									<i></i>配送方式
								</h3>
								<div class="TreeList">
									<div class="cat2">
										<a href="/?page-payment.html">支付方式</a>
									</div>
									<div class="cat2">
										<a href="/?page-shipping.html">配送方式</a>
									</div>
									<div class="cat2">
										<a href="/?page-orderinfo.html">订单何时出库？</a>
									</div>
									<div class="cat2">
										<a href="/?page-onlinepayment.html">网上支付小贴士</a>
									</div>
									<div class="cat2">
										<a href="/?page-shippinginfo.html">关于送货和验货</a>
									</div>
								</div>
							</div>
						</div>
						<div class="flt help5">
							<div class="qfbox5 " id="">
								<h3>
									<i></i>购物条款
								</h3>
								<div class="TreeList">
									<div class="cat2">
										<a href="/?page-license.html">会员注册协议</a>
									</div>
									<div class="cat2">
										<a href="/?page-privacy.html">隐私保护政策</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="qfbottom">
			<div class="fboot w1000"></div>
			<div class="copyright wrap">
				<p>
					<a href="/?page-about.html" type="page" target="_blank">关于我们</a> |
					<a href="/?page-contact.html" type="page" target="_blank">联系我们</a>
					| <a href="/?page-method.html" type="page" target="_blank">付款方式</a>
					| <a href="http://www.weibo.com/hnqss" type="url" target="_blank">新浪博客</a>&nbsp;
					| <a href="/?sitemaps-view.html" type="url" target="_blank">网站地图</a>
					| <a href="/?link-showList.html" type="url" target="_blank">友情链接</a>
				</p>
				<p>Copyright © 2013&nbsp;深圳智鸿电子商务有限公司 All Rights Reserved.
					粤ICP备13020767号-1&nbsp;&nbsp;</p>
				<p>&nbsp;</p>
	</form>
</body>
</html>

