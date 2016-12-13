<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
<title>1号批发网-潮流女装批发,品牌男装批发,优质包包批发,时尚鞋子批发,中国最专业的电子商务进货平台！</title>
<meta name="keywords" content="服装批发,女装批发,男装批发,外贸服装,包包货源,包包批发,鞋子批发,1号批发网">
<meta name="description" content="1号批发平台-www.xiaopangniu.net中国最专业的电子商务进货批发平台,批发各种品牌女装,品牌男装,潮流包包,时尚鞋子,让您进货更方便！">
<link rel="bookmark" href="/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="css/style.css" type="text/css">
<script type="text/javascript" src="script/tools.js"></script>
<link rel="stylesheet" type="text/css" href="css/qingfeng.css">
<script src="script/current.js"></script>

</head>
<body>
<div class="qfbody">
  <div class="w1000 bgfff">
    <div id="header">
      <div class="header_top wrap">
        <div class="logo flt"><a href="/"><img src="images/default_logo.png" border="0"></a></div>
        <div class="top-right frt">
          <ul class="clearfix">
            <li><a href="/?page-helpcenter.html" type="page" target="_blank">帮助中心</a></li>
            <li><a href="/" class="fav">加入收藏</a></li>
            <li class="login">您好<span id="uname_322"></span>！ <span id="loginBar_322"> <a href="登录页面.html">[请登录]</a>&nbsp;&nbsp; <a href="注册1号店.html">[免费注册]</a> </span>

            </li>
          </ul>
          <div class="toptel">
            <div class="AdvBanner"> <a href="/" target="_blank"> <img src="images/tel.gif" style="width:280px;height:30px;"> </a> </div>
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
            <li style="position:relative;z-index:65535;" class="wgt-menu-more" id="324_menu_base" onclick="if($('324_showMore').style.display=='none'){$('324_showMore').style.display='';}else{ $('324_showMore').style.display='none';}"><a class="wgt-menu-view-more" href="JavaScript:void(0)">更多</a>
              <div class="v-m-page" style="display: none; position: absolute; top: 25px; left: 0px; visibility: visible; zoom: 1; opacity: 0.8;" id="324_showMore">
                <div><a href="/?page-helpcenter.html">帮助中心</a></div>
                <div><a href="/?cart.html">购物车</a></div>
                <div><a href="/?page-cominfo.html">公司简介</a></div>
                <div><a href="/?message.html">客户留言</a></div>
                <div><a href="/?link-showList.html">友情链接</a></div>
              </div>
            </li>
          </ul>

        </div>
        <div class="qfnav_r cut frt"><a href="/?gallery---1--1--grid.html" type="url" target="_blank">新品特卖</a> <a href="/?brand-showList.html" type="url" target="_blank">品牌专区</a></div>
      </div>
      <div class="search">
        <div class="qfso flt">
          <form action="<%=basePath%>products/products_queryProductsByPage.action?currentPage=1" method="post" class="SearchBar">
            <table cellpadding="0" cellspacing="0">
              <tbody>
                <tr>
                  <td class="search_label"><span>关键字：</span>
                    <input name="search"  value="" x-webkit-speech="" style="height:30px;width:150px">
                  </td>
                  <td><!-- <input type="submit" value="搜索" class="btn_search" onfocus="this.blur();" > -->
                  <input type="submit" value="搜索"  onfocus="this.blur();" style="height:30px;width:80px;margin-left:10px;margin-right:10px; border: none;background-color:orange;border-radius:10px;font-size:17px;color: #FFF;letter-spacing:0.8em;padding-left:14px;font-famliy:'微软雅黑';font-weight:bolder" >
                  </td>
                  <td><a href="/?search-index.html" class="btn_advsearch">高级搜索</a> </td>
                </tr>
              </tbody>
            </table>
          </form>
        </div>
        <div class="qftags flt"><strong>热门：</strong>
                  <a href="<%=basePath%>nanzhuang/nanzhuang_queryProducts.action" type="url" target="_blank">春装批发</a> 
                  <a href="<%=basePath%>nanzhuang/nanzhuang_queryProducts1.action" type="url" target="_blank">夏装批发</a> 
                  <a href="<%=basePath%>nanzhuang/nanzhuang_queryProducts2.action" type="url" target="_blank">秋装批发</a> 
                  <a href="<%=basePath%>nanzhuang/nanzhuang_queryProducts3.action" type="url" target="_blank">冬装批发</a> 
                  <a href="/?gallery--n,%E9%9B%AA%E5%9C%B0%E9%9D%B4-grid.html" type="url" target="_blank">新款上市</a></div>
        <div class="qfcart frt">
          <div class="ShopCartWrap"> <a href="/?cart-index.html" class="cart-container">购物车中有<b class="cart-number">
            <script>document.write(Cookie.get('S[CART_NUMBER]')?Cookie.get('S[CART_NUMBER]'):0);</script>
            0</b>件商品</a> <a class="gocart" href="/?cart-index.html">去结算</a></div>
        </div>
      </div>
    </div>
    <div id="main" class="wrap pushdown-2">
      <div id="flashcontent_353">
     <img src="images/f1.jpg" width="980" height="250" />
      </div>
     
      <div id="index_top" class="pushdown-2 clearfix">
        <div class="catebox flt">
          <div class="qfbox2 " id="">
            <div class="hd">
              <h3>商品分类</h3>
            </div>
            <div class="bd">
              <div class="GoodsCategoryWrap">
                <ul>
                  <li class="c-cat-depth-1 "><a href="<%=basePath%>nanzhuang/nanzhuang_queryProducts.action">春装</a>
                    <table class="c-cat-depth-2">
                      <tbody>
                        <tr>
                             <td>
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
                  </li>
                  <li class="c-cat-depth-1 "><a href="<%=basePath%>nanzhuang/nanzhuang_queryProducts1.action">夏装</a>
                    <table class="c-cat-depth-2">
                      <tbody>
                        <tr>
                          <td><a href="<%=basePath%>fenlei/fenlei_queryProducts.action">风衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts1.action">连衣裙</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts2.action">半身裙</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts3.action">小脚裤</a>
                              <a href="<%=basePath%>fenlei/fenlei_queryProducts4.action">打底裤</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts5.action">牛仔裤</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts6.action">打底衫</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts7.action">情侣装</a>
                               <a href="<%=basePath%>fenlei/fenlei_queryProducts8.action">棉衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts9.action">大衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts10.action">毛呢短裤</a> </td>
                        </tr>
                      </tbody>
                    </table>
                  </li>
                  <li class="c-cat-depth-1 "><a href="<%=basePath%>nanzhuang/nanzhuang_queryProducts2.action">秋装</a>
                    <table class="c-cat-depth-2">
                      <tbody>
                        <tr>
                          <td><a href="<%=basePath%>fenlei/fenlei_queryProducts.action">风衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts1.action">连衣裙</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts2.action">半身裙</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts3.action">小脚裤</a>
                              <a href="<%=basePath%>fenlei/fenlei_queryProducts4.action">打底裤</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts5.action">牛仔裤</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts6.action">打底衫</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts7.action">情侣装</a>
                               <a href="<%=basePath%>fenlei/fenlei_queryProducts8.action">棉衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts9.action">大衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts10.action">毛呢短裤</a> </td>
                        </tr>
                      </tbody>
                    </table>
                  </li>
                  <li class="c-cat-depth-1 last "><a href="<%=basePath%>nanzhuang/nanzhuang_queryProducts3.action">冬装</a>
                    <table class="c-cat-depth-2">
                      <tbody>
                        <tr>
                        <td><a href="<%=basePath%>fenlei/fenlei_queryProducts.action">风衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts1.action">连衣裙</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts2.action">半身裙</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts3.action">小脚裤</a>
                              <a href="<%=basePath%>fenlei/fenlei_queryProducts4.action">打底裤</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts5.action">牛仔裤</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts6.action">打底衫</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts7.action">情侣装</a>
                               <a href="<%=basePath%>fenlei/fenlei_queryProducts8.action">棉衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts9.action">大衣</a> <a href="<%=basePath%>fenlei/fenlei_queryProducts10.action">毛呢短裤</a> </td>
                        </tr>
                      </tbody>
                    </table>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="news flt">
          <div class="qfbox3 " id="">
            <h3>网站公告</h3>
            <div class="bd">
              <div class="ArticleListWrap">
                <div class="ArticleList">
                  <ul>
                    <li> <img src="images/arrow_1.gif" path="icons"> <a href="/?article-28.html" title="1号批发网最新公告">1号批发网最新公告</a></li>
                    <li> <img src="images/arrow_1.gif" path="icons"> <a href="/?article-31.html" title="批发优惠规则">批发优惠规则</a></li>
                    <li> <img src="images/arrow_1.gif" path="icons"> <a href="/?article-32.html" title="男装批发规则">男装批发规则</a></li>
                    <li> <img src="images/arrow_1.gif" path="icons"> <a href="/?article-30.html" title="一号批发平台网店代发规则">一号批发平台网店代发规则</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="bt"></div>
          </div>
          <div class="qfbox1 pushdown-1" id="">
            <div class="AdvBanner"> <a href="http://www.hnqss.cn/" target="_blank"> <img src="images/ad1.gif" style="width:244px;height:85px;"> </a> </div>
          </div>
        </div>
      </div>
      <div id="index_mid" class="pushdown-2">
    
        <div class="goods_show pushdown-2">
          <div class="hd">
            <h3>
              <div class="qfbox1 " id="">
                <div class="AdvBanner"> <a href="/?gallery-44.html" style="color:default;font-weight: bold;font-size:16px;">时尚女装</a> </div>
              </div>
            </h3>
            <div class="navs frt"><a href="/?gallery-56.html" type="url" target="_blank">T.恤</a>|<a href="/?gallery-57.html" type="url" target="_blank">衬衫</a>|<a href="/?gallery-61.html" type="url" target="_blank">裤子</a>|<a href="/?gallery-66.html" type="url" target="_blank">连衣裙</a>|<a class="more" href="/?gallery-8-grid.html" type="url" target="_blank">更多</a></div>
          </div>
          <style> 
.itemsWrap{ *display:block; float:left; overflow:hidden; } 
</style>
          <input type="hidden" name="goods_num" id="goods_num" value="35">
          <div class="GoodsListWrap">
            <div class="GoodsList">
           
           <c:forEach items="${products }" var="p">
              <div class="itemsWrap " product="253" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;">
                  <a href="<%=basePath%>productsDetail/productsDetail.action?pid=${p.pid}" target="_blank" title="${p.pname }">
                   <c:forEach items="${p.pimgs }" var="pi">
                  <img src="images/${pi.purl }" title="${p.pname }">
                   </c:forEach>
                  </a>
                  </div>
                  <h6><a href="<%=basePath%>productsDetail/productsDetail.action" target="_blank" title="${p.pname }">${p.pname }</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥${p.price }</span></li>
                  </ul>
                </div>
              </div>
              
              </c:forEach>
              
            </div>
          </div>
        </div>
        <div class="goods_show pushdown-2">
          <div class="hd">
            <h3>
              <div class="AdvBanner"> <a href="/?gallery-45.html" style="color:default;font-weight: bold;font-size:16px;">风尚男装</a> </div>
            </h3>
            <div class="navs frt"><a href="/?gallery-76.html" type="url" target="_blank">休闲装</a>|<a href="/?gallery-77.html" type="url" target="_blank">运动装</a>|<a href="/?gallery-71.html" type="url" target="_blank">衬衫</a>|<a href="/?gallery-82.html" type="url" target="_blank">情侣装</a>|<a class="more" href="/?gallery-8-grid.html" type="url" target="_blank">更多</a></div>
          </div>
          <style> 
.itemsWrap{ *display:block; float:left; overflow:hidden; } 
</style>
          <input type="hidden" name="goods_num" id="goods_num" value="25">
          <div class="GoodsListWrap">
            <div class="GoodsList">
              <div class="itemsWrap " product="181" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-181.html" target="_blank" title="复古莱卡棉男式T恤衫 航海地图圆领短袖男式T恤A3631"><img src="images/f806fd36988c07c1.jpg" title="复古莱卡棉男式T恤衫 航海地图圆领短袖男式T恤A3631"></a></div>
                  <h6><a href="/?product-181.html" target="_blank" title="复古莱卡棉男式T恤衫 航海地图圆领短袖男式T恤A3631">复古莱卡棉男式T恤衫...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥36.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="179" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-179.html" target="_blank" title="青春版2013夏季T恤衫 时尚印花 男装休闲短袖圆领T恤批发A3633"><img src="images/409c903a0559a0e4.jpg" title="青春版2013夏季T恤衫 时尚印花 男装休闲短袖圆领T恤批发A3633"></a></div>
                  <h6><a href="/?product-179.html" target="_blank" title="青春版2013夏季T恤衫 时尚印花 男装休闲短袖圆领T恤批发A3633">青春版2013夏季T恤衫...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥36.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="178" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-178.html" target="_blank" title="新款男士都市摩登T恤男 舒适莱卡棉时尚印花圆领短袖T恤A3629"><img src="images/b35d58d65c0360a9.jpg" title="新款男士都市摩登T恤男 舒适莱卡棉时尚印花圆领短袖T恤A3629"></a></div>
                  <h6><a href="/?product-178.html" target="_blank" title="新款男士都市摩登T恤男 舒适莱卡棉时尚印花圆领短袖T恤A3629">新款男士都市摩登T恤男...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥36.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="177" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-177.html" target="_blank" title="夏季新款 男款字母卡莱棉短袖 青春休闲字母 V领T恤批发"><img src="images/bc6264f14d3c538c.jpg" title="夏季新款 男款字母卡莱棉短袖 青春休闲字母 V领T恤批发"></a></div>
                  <h6><a href="/?product-177.html" target="_blank" title="夏季新款 男款字母卡莱棉短袖 青春休闲字母 V领T恤批发">夏季新款...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥32.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap last" product="176" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-176.html" target="_blank" title="2013新款男士 时尚有型 舒适莱卡棉 圆领短袖T恤D3639"><img src="images/582d1b83080acf51.jpg" title="2013新款男士 时尚有型 舒适莱卡棉 圆领短袖T恤D3639"></a></div>
                  <h6><a href="/?product-176.html" target="_blank" title="2013新款男士 时尚有型 舒适莱卡棉 圆领短袖T恤D3639">2013新款男士 时尚有型...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥33.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="clear"></div>
              <div class="itemsWrap " product="175" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-175.html" target="_blank" title="2013新款男士 植绒个性时尚 莱卡棉圆领短袖T恤D3635"><img src="images/b0ca32a5caf7c3da.jpg" title="2013新款男士 植绒个性时尚 莱卡棉圆领短袖T恤D3635"></a></div>
                  <h6><a href="/?product-175.html" target="_blank" title="2013新款男士 植绒个性时尚 莱卡棉圆领短袖T恤D3635">2013新款男士...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥37.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="174" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-174.html" target="_blank" title="2013新款男士 个性脏染 立体植绒 莱卡棉 短袖T恤WT26111"><img src="images/a4450483bfe6da18.jpg" title="2013新款男士 个性脏染 立体植绒 莱卡棉 短袖T恤WT26111"></a></div>
                  <h6><a href="/?product-174.html" target="_blank" title="2013新款男士 个性脏染 立体植绒 莱卡棉 短袖T恤WT26111">2013新款男士 个性脏染...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥37.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="173" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-173.html" target="_blank" title="2013新款男士T恤 个性时尚生活型T恤 圆领短袖男T恤批发W3607"><img src="images/5961d23ec42fa055.jpg" title="2013新款男士T恤 个性时尚生活型T恤 圆领短袖男T恤批发W3607"></a></div>
                  <h6><a href="/?product-173.html" target="_blank" title="2013新款男士T恤 个性时尚生活型T恤 圆领短袖男T恤批发W3607">2013新款男士T恤...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥32.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="172" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-172.html" target="_blank" title="出游型时尚男式T恤批发 单反情怀休闲圆领男式短袖T恤W3605"><img src="images/d970a4d26349cb14.jpg" title="出游型时尚男式T恤批发 单反情怀休闲圆领男式短袖T恤W3605"></a></div>
                  <h6><a href="/?product-172.html" target="_blank" title="出游型时尚男式T恤批发 单反情怀休闲圆领男式短袖T恤W3605">出游型时尚男式T恤批发...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥32.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap last" product="171" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-171.html" target="_blank" title="爆款特殊工艺T恤批发男士 脏染做旧 舒适莱卡棉 V领短袖T恤WT2611"><img src="images/8755dbc6bd2462ce.jpg" title="爆款特殊工艺T恤批发男士 脏染做旧 舒适莱卡棉 V领短袖T恤WT2611"></a></div>
                  <h6><a href="/?product-171.html" target="_blank" title="爆款特殊工艺T恤批发男士 脏染做旧 舒适莱卡棉 V领短袖T恤WT2611">爆款特殊工艺T恤批发男...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥37.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="clear"></div>
              <div class="itemsWrap " product="170" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-170.html" target="_blank" title="欧美风精致T恤供应 时尚修身莱卡棉男T恤印花圆领T恤A3630"><img src="images/9e7a80e32b9fa166.jpg" title="欧美风精致T恤供应 时尚修身莱卡棉男T恤印花圆领T恤A3630"></a></div>
                  <h6><a href="/?product-170.html" target="_blank" title="欧美风精致T恤供应 时尚修身莱卡棉男T恤印花圆领T恤A3630">欧美风精致T恤供应...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥36.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="167" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-167.html" target="_blank" title="新款主推款T恤男装谷翼崎 脏染工艺 舒适莱卡棉 V领短袖T恤多色T2660"><img src="images/c72fd9e246b7f5f8.jpg" title="新款主推款T恤男装谷翼崎 脏染工艺 舒适莱卡棉 V领短袖T恤多色T2660"></a></div>
                  <h6><a href="/?product-167.html" target="_blank" title="新款主推款T恤男装谷翼崎 脏染工艺 舒适莱卡棉 V领短袖T恤多色T2660">新款主推款T恤男装谷翼...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥37.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="160" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-160.html" target="_blank" title="2013夏季新款 男士全棉 时尚休闲 简约品位 短袖T恤A3650"><img src="images/e3bb1a0dd8aec551.jpg" title="2013夏季新款 男士全棉 时尚休闲 简约品位 短袖T恤A3650"></a></div>
                  <h6><a href="/?product-160.html" target="_blank" title="2013夏季新款 男士全棉 时尚休闲 简约品位 短袖T恤A3650">2013夏季新款 男士全棉...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥38.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="158" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-158.html" target="_blank" title="2013新款男士 时尚有型 舒适莱卡棉 圆领短袖T恤D3638"><img src="images/a6e224b31c736768.jpg" title="2013新款男士 时尚有型 舒适莱卡棉 圆领短袖T恤D3638"></a></div>
                  <h6><a href="/?product-158.html" target="_blank" title="2013新款男士 时尚有型 舒适莱卡棉 圆领短袖T恤D3638">2013新款男士 时尚有型...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥36.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap last" product="156" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-156.html" target="_blank" title="新款字母高档印花T恤代理 舒适莱卡棉 圆领男士时尚短袖T恤"><img src="images/3e38b8cc6c096b87.jpg" title="新款字母高档印花T恤代理 舒适莱卡棉 圆领男士时尚短袖T恤"></a></div>
                  <h6><a href="/?product-156.html" target="_blank" title="新款字母高档印花T恤代理 舒适莱卡棉 圆领男士时尚短袖T恤">新款字母高档印花T恤代...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥32.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="clear"></div>
              <div class="itemsWrap " product="154" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-154.html" target="_blank" title="2013新款 时尚休闲V领T恤批发 拼色免烫短袖T恤"><img src="images/21016d691df8f1e4.jpg" title="2013新款 时尚休闲V领T恤批发 拼色免烫短袖T恤"></a></div>
                  <h6><a href="/?product-154.html" target="_blank" title="2013新款 时尚休闲V领T恤批发 拼色免烫短袖T恤">2013新款...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥37.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="152" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-152.html" target="_blank" title="谷翼崎欧美品质T恤 舒适卡莱棉短袖T恤 青春休闲印花短袖圆领T恤"><img src="images/157397e2c0e44ac2.jpg" title="谷翼崎欧美品质T恤 舒适卡莱棉短袖T恤 青春休闲印花短袖圆领T恤"></a></div>
                  <h6><a href="/?product-152.html" target="_blank" title="谷翼崎欧美品质T恤 舒适卡莱棉短袖T恤 青春休闲印花短袖圆领T恤">谷翼崎欧美品质T恤...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥32.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="150" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-150.html" target="_blank" title="形象款T恤 男士古典印花T恤 青春休闲男装 圆领短袖T恤"><img src="images/982a7290bf61874a.jpg" title="形象款T恤 男士古典印花T恤 青春休闲男装 圆领短袖T恤"></a></div>
                  <h6><a href="/?product-150.html" target="_blank" title="形象款T恤 男士古典印花T恤 青春休闲男装 圆领短袖T恤">形象款T恤...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥32.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="143" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-143.html" target="_blank" title="爆款POLO衫品位T恤 时尚插皮莱卡棉立领短袖T恤"><img src="images/bf47bb6f2862a84b.jpg" title="爆款POLO衫品位T恤 时尚插皮莱卡棉立领短袖T恤"></a></div>
                  <h6><a href="/?product-143.html" target="_blank" title="爆款POLO衫品位T恤 时尚插皮莱卡棉立领短袖T恤">爆款POLO衫品位T恤...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥45.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap last" product="141" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-141.html" target="_blank" title="爆款男装夏季2013新品 韩版弹力修身短袖T恤 男士V领纯色打底衫"><img src="images/dfdb1ca66c20570b.jpg" title="爆款男装夏季2013新品 韩版弹力修身短袖T恤 男士V领纯色打底衫"></a></div>
                  <h6><a href="/?product-141.html" target="_blank" title="爆款男装夏季2013新品 韩版弹力修身短袖T恤 男士V领纯色打底衫">爆款男装夏季2013新品...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥26.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="clear"></div>
              <div class="itemsWrap " product="139" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-139.html" target="_blank" title="2013新款男士 个性脏染 时尚立体植绒 圆领短袖T恤WT2605"><img src="images/aae29374b8c088b1.jpg" title="2013新款男士 个性脏染 时尚立体植绒 圆领短袖T恤WT2605"></a></div>
                  <h6><a href="/?product-139.html" target="_blank" title="2013新款男士 个性脏染 时尚立体植绒 圆领短袖T恤WT2605">2013新款男士 个性脏染...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥37.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="138" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-138.html" target="_blank" title="2013新款男士 多格图案个性脏染 莱卡棉 短袖T恤WT2608"><img src="images/9e76c5bb10bc33b1.jpg" title="2013新款男士 多格图案个性脏染 莱卡棉 短袖T恤WT2608"></a></div>
                  <h6><a href="/?product-138.html" target="_blank" title="2013新款男士 多格图案个性脏染 莱卡棉 短袖T恤WT2608">2013新款男士...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥37.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="137" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-137.html" target="_blank" title="GUEQI 2013新款男士 简约时尚 舒适莱卡棉 立领短袖T恤D3637"><img src="images/6ddc6e068cc2f0dd.jpg" title="GUEQI 2013新款男士 简约时尚 舒适莱卡棉 立领短袖T恤D3637"></a></div>
                  <h6><a href="/?product-137.html" target="_blank" title="GUEQI 2013新款男士 简约时尚 舒适莱卡棉 立领短袖T恤D3637">GUEQI 2013新款男士...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥42.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="136" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-136.html" target="_blank" title="时尚英伦风 V领字母免烫短袖T恤 男装T恤"><img src="images/6c454066780943ad.jpg" title="时尚英伦风 V领字母免烫短袖T恤 男装T恤"></a></div>
                  <h6><a href="/?product-136.html" target="_blank" title="时尚英伦风 V领字母免烫短袖T恤 男装T恤">时尚英伦风...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥38.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap last" product="123" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-123.html" target="_blank" title="短袖T恤 男士半袖优质棉 舒适透气 印花短袖体恤男休闲正品 1311"><img src="images/3a14ffacedaef6bb.jpg" title="短袖T恤 男士半袖优质棉 舒适透气 印花短袖体恤男休闲正品 1311"></a></div>
                  <h6><a href="/?product-123.html" target="_blank" title="短袖T恤 男士半袖优质棉 舒适透气 印花短袖体恤男休闲正品 1311">短袖T恤...</a></h6>
                  <ul>
                    <li><span class="price0">批发价:</span><span class="price1" style="color:default;">￥36.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="clear"></div>
              <div class="clear"></div>
            </div>
          </div>
        </div>
        <div class="goods_show pushdown-2">
          <div class="hd">
            <h3>
              <div class="AdvBanner"> <a href="/?gallery-46.html" style="color:default;font-weight: bold;font-size:16px;">潮流包包</a> </div>
            </h3>
            <div class="navs frt"><a href="/?gallery-83.html" type="url" target="_blank">单肩包</a>|<a href="/?gallery-84.html" type="url" target="_blank">手提包</a>|<a href="/?gallery-85.html" type="url" target="_blank">斜跨包</a>|<a href="/?gallery-86.html" type="url" target="_blank">双肩包</a>|<a class="more" href="/?gallery-8-grid.html" type="url" target="_blank">更多</a></div>
          </div>
        </div>
        <div class="qfbox1 " id="">
          <div class="GoodsListWrap GoodsList GoodsShow">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tbody>
                <tr valign="top">
                  <td id="item-242" width="20%;" class="item textcenter"><a target="_blank" href="/?product-242.html" style="width:160px;height:160px;" class="pic"> <img src="images/40daec7da7259589.jpg" alt="2013秋冬韩版新款流苏女包 兔毛手提斜挎包 顺滑复古毛毛小包包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-242.html" title="2013秋冬韩版新款流苏女包 兔毛手提斜挎包 顺滑复古毛毛小包包">2013秋冬韩版新款流苏女包 兔毛手提斜挎包 顺滑复古毛毛小包包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥24.00</em></div>
                      </div>
                    </div></td>
                  <td id="item-238" width="20%;" class="item textcenter"><a target="_blank" href="/?product-238.html" style="width:160px;height:160px;" class="pic"> <img src="images/eb963af714f59993.jpg" alt="2013新款帆布大包女包三用韩版包包单肩包斜挎手提包街头百搭包包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-238.html" title="2013新款帆布大包女包三用韩版包包单肩包斜挎手提包街头百搭包包">2013新款帆布大包女包三用韩版包包单肩包斜挎手提包街头百搭包包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥32.00</em></div>
                      </div>
                    </div></td>
                  <td id="item-235" width="20%;" class="item textcenter"><a target="_blank" href="/?product-235.html" style="width:160px;height:160px;" class="pic"> <img src="images/0b45e6285112475f.jpg" alt="2013新款女包 美国国旗图案单肩大包 购物袋 帆布袋" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-235.html" title="2013新款女包 美国国旗图案单肩大包 购物袋 帆布袋">2013新款女包 美国国旗图案单肩大包 购物袋 帆布袋</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥29.00</em></div>
                      </div>
                    </div></td>
                  <td id="item-233" width="20%;" class="item textcenter"><a target="_blank" href="/?product-233.html" style="width:160px;height:160px;" class="pic"> <img src="images/e3816eb75e607776.jpg" alt="2013狐狸尾车缝线单肩包休闲包手提包女包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-233.html" title="2013狐狸尾车缝线单肩包休闲包手提包女包">2013狐狸尾车缝线单肩包休闲包手提包女包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥43.00</em></div>
                      </div>
                    </div></td>
                  <td id="item-231" width="20%;" class="item textcenter"><a target="_blank" href="/?product-231.html" style="width:160px;height:160px;" class="pic"> <img src="images/700e612070c56de0.jpg" alt="欧美风抽带流苏包水桶包手提包单肩包女包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-231.html" title="欧美风抽带流苏包水桶包手提包单肩包女包">欧美风抽带流苏包水桶包手提包单肩包女包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥37.00</em></div>
                      </div>
                    </div></td>
                </tr>
                <tr valign="top">
                  <td id="item-225" width="20%;" class="item textcenter"><a target="_blank" href="/?product-225.html" style="width:160px;height:160px;" class="pic"> <img src="images/7c0dca3614d88d74.jpg" alt="2013新款欧美复古风休闲单肩手提包女包包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-225.html" title="2013新款欧美复古风休闲单肩手提包女包包">2013新款欧美复古风休闲单肩手提包女包包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥39.00</em></div>
                      </div>
                    </div></td>
                  <td id="item-223" width="20%;" class="item textcenter"><a target="_blank" href="/?product-223.html" style="width:160px;height:160px;" class="pic"> <img src="images/c6996c1246e8938e.jpg" alt="2013 新款韩版条纹单肩包斜跨包水桶包机车女包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-223.html" title="2013 新款韩版条纹单肩包斜跨包水桶包机车女包">2013 新款韩版条纹单肩包斜跨包水桶包机车女包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥26.00</em></div>
                      </div>
                    </div></td>
                  <td id="item-215" width="20%;" class="item textcenter"><a target="_blank" href="/?product-215.html" style="width:160px;height:160px;" class="pic"> <img src="images/8dd55b55eec38b97.jpg" alt="2013新款女包格纹百搭包包单肩包斜跨包手提包大容量帆布包休闲包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-215.html" title="2013新款女包格纹百搭包包单肩包斜跨包手提包大容量帆布包休闲包">2013新款女包格纹百搭包包单肩包斜跨包手提包大容量帆布包休闲包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥28.00</em></div>
                      </div>
                    </div></td>
                  <td id="item-213" width="20%;" class="item textcenter"><a target="_blank" href="/?product-213.html" style="width:160px;height:160px;" class="pic"> <img src="images/09676175c2f34e5c.jpg" alt="秋冬季韩版新款 经典款 千鸟格子手提包 波士顿包女包斜垮女包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-213.html" title="秋冬季韩版新款 经典款 千鸟格子手提包 波士顿包女包斜垮女包">秋冬季韩版新款 经典款 千鸟格子手提包 波士顿包女包斜垮女包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥42.00</em></div>
                      </div>
                    </div></td>
                  <td id="item-169" width="20%;" class="item textcenter"><a target="_blank" href="/?product-169.html" style="width:160px;height:160px;" class="pic"> <img src="images/b067655bb4c54858.jpg" alt="2013新款欧美时尚潮包B1511百魅铆钉单肩手提女式包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-169.html" title="2013新款欧美时尚潮包B1511百魅铆钉单肩手提女式包">2013新款欧美时尚潮包B1511百魅铆钉单肩手提女式包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥42.00</em></div>
                      </div>
                    </div></td>
                </tr>
                <tr valign="top">
                  <td id="item-168" width="20%;" class="item textcenter"><a target="_blank" href="/?product-168.html" style="width:160px;height:160px;" class="pic"> <img src="images/04b3c4b9cb69e3f6.jpg" alt="2013新款韩版女包韩版插扣OL复古通勤女包单肩包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-168.html" title="2013新款韩版女包韩版插扣OL复古通勤女包单肩包">2013新款韩版女包韩版插扣OL复古通勤女包单肩包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥38.00</em></div>
                      </div>
                    </div></td>
                  <td id="item-165" width="20%;" class="item textcenter"><a target="_blank" href="/?product-165.html" style="width:160px;height:160px;" class="pic"> <img src="images/96d968dd3efcd0fa.jpg" alt="2013 新款韩版女包柳钉包朋克女士包大包手提单肩斜挎包女包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-165.html" title="2013 新款韩版女包柳钉包朋克女士包大包手提单肩斜挎包女包">2013 新款韩版女包柳钉包朋克女士包大包手提单肩斜挎包女包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥39.00</em></div>
                      </div>
                    </div></td>
                  <td id="item-164" width="20%;" class="item textcenter"><a target="_blank" href="/?product-164.html" style="width:160px;height:160px;" class="pic"> <img src="images/f502def0eea1b10d.jpg" alt="欧美范大牌包高端包 闪闪惊艳亮片包链条包 单肩包手拎包斜挎包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-164.html" title="欧美范大牌包高端包 闪闪惊艳亮片包链条包 单肩包手拎包斜挎包">欧美范大牌包高端包 闪闪惊艳亮片包链条包 单肩包手拎包斜挎包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥40.00</em></div>
                      </div>
                    </div></td>
                  <td id="item-163" width="20%;" class="item textcenter"><a target="_blank" href="/?product-163.html" style="width:160px;height:160px;" class="pic"> <img src="images/e07fdfaa09ee80a8.jpg" alt="可爱泰迪熊包包2013秋冬新款棉布小熊翻盖大通勤包手提包单肩包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-163.html" title="可爱泰迪熊包包2013秋冬新款棉布小熊翻盖大通勤包手提包单肩包">可爱泰迪熊包包2013秋冬新款棉布小熊翻盖大通勤包手提包单肩包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥28.00</em></div>
                      </div>
                    </div></td>
                  <td id="item-161" width="20%;" class="item textcenter"><a target="_blank" href="/?product-161.html" style="width:160px;height:160px;" class="pic"> <img src="images/6517cee084e8eccc.jpg" alt="猫猫包袋2013新款包邮复古撞色印花包单肩手提包潮女包包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-161.html" title="猫猫包袋2013新款包邮复古撞色印花包单肩手提包潮女包包">猫猫包袋2013新款包邮复古撞色印花包单肩手提包潮女包包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥39.00</em></div>
                      </div>
                    </div></td>
                </tr>
                <tr valign="top">
                  <td id="item-159" width="20%;" class="item textcenter"><a target="_blank" href="/?product-159.html" style="width:160px;height:160px;" class="pic"> <img src="images/0c052b2286e0dbd3.jpg" alt="花心小铺2013新款女包英伦复古包欧美单肩斜挎包包女潮" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-159.html" title="花心小铺2013新款女包英伦复古包欧美单肩斜挎包包女潮">花心小铺2013新款女包英伦复古包欧美单肩斜挎包包女潮</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥33.00</em></div>
                      </div>
                    </div></td>
                  <td id="item-157" width="20%;" class="item textcenter"><a target="_blank" href="/?product-157.html" style="width:160px;height:160px;" class="pic"> <img src="images/d6d5ea186d22b5bd.jpg" alt="秋冬季新款韩版休闲帆布包 爆款手提时尚单肩韩版帆布女包批发" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-157.html" title="秋冬季新款韩版休闲帆布包 爆款手提时尚单肩韩版帆布女包批发">秋冬季新款韩版休闲帆布包 爆款手提时尚单肩韩版帆布女包批发</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥30.00</em></div>
                      </div>
                    </div></td>
                  <td id="item-155" width="20%;" class="item textcenter"><a target="_blank" href="/?product-155.html" style="width:160px;height:160px;" class="pic"> <img src="images/4466f5d1d1650f74.jpg" alt="小辣椒同款铆钉包手提包单肩包流苏大包包女包欧美复古通勤机车包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-155.html" title="小辣椒同款铆钉包手提包单肩包流苏大包包女包欧美复古通勤机车包">小辣椒同款铆钉包手提包单肩包流苏大包包女包欧美复古通勤机车包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥46.00</em></div>
                      </div>
                    </div></td>
                  <td id="item-153" width="20%;" class="item textcenter"><a target="_blank" href="/?product-153.html" style="width:160px;height:160px;" class="pic"> <img src="images/f28737b36bc4d273.jpg" alt="双箭头女包 简约邮差包 复古灯芯绒手提包 斜挎单肩包 女式潮包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-153.html" title="双箭头女包 简约邮差包 复古灯芯绒手提包 斜挎单肩包 女式潮包">双箭头女包 简约邮差包 复古灯芯绒手提包 斜挎单肩包 女式潮包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥38.00</em></div>
                      </div>
                    </div></td>
                  <td id="item-151" width="20%;" class="item textcenter"><a target="_blank" href="/?product-151.html" style="width:160px;height:160px;" class="pic"> <img src="images/2ae150cd79a57556.jpg" alt="欧美风菱格潮女百魅单肩大包包斜跨包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-151.html" title="欧美风菱格潮女百魅单肩大包包斜跨包">欧美风菱格潮女百魅单肩大包包斜跨包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥40.00</em></div>
                      </div>
                    </div></td>
                </tr>
                <tr valign="top">
                  <td id="item-149" width="20%;" class="item textcenter"><a target="_blank" href="/?product-149.html" style="width:160px;height:160px;" class="pic"> <img src="images/d74e61df90afa9cc.jpg" alt="新款秋冬包包韩版时尚潮褶皱菱格淑女包单肩手提斜挎包一件起批" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-149.html" title="新款秋冬包包韩版时尚潮褶皱菱格淑女包单肩手提斜挎包一件起批">新款秋冬包包韩版时尚潮褶皱菱格淑女包单肩手提斜挎包一件起批</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥48.00</em></div>
                      </div>
                    </div></td>
                  <td id="item-148" width="20%;" class="item textcenter"><a target="_blank" href="/?product-148.html" style="width:160px;height:160px;" class="pic"> <img src="images/e563986949d147c2.jpg" alt="外贸信封包手拿包夏季特价欧美白色小挎包复古单肩包女包包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-148.html" title="外贸信封包手拿包夏季特价欧美白色小挎包复古单肩包女包包">外贸信封包手拿包夏季特价欧美白色小挎包复古单肩包女包包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥30.00</em></div>
                      </div>
                    </div></td>
                  <td id="item-147" width="20%;" class="item textcenter"><a target="_blank" href="/?product-147.html" style="width:160px;height:160px;" class="pic"> <img src="images/53e29aa05876b256.jpg" alt="金粉世家正品品牌女士包包2013女包秋季新款包韩版潮手提斜挎包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-147.html" title="金粉世家正品品牌女士包包2013女包秋季新款包韩版潮手提斜挎包">金粉世家正品品牌女士包包2013女包秋季新款包韩版潮手提斜挎包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥52.00</em></div>
                      </div>
                    </div></td>
                  <td id="item-146" width="20%;" class="item textcenter"><a target="_blank" href="/?product-146.html" style="width:160px;height:160px;" class="pic"> <img src="images/d52bc290e4343829.jpg" alt="2013秋冬季新款欧美复古编织小包手包晚宴包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-146.html" title="2013秋冬季新款欧美复古编织小包手包晚宴包">2013秋冬季新款欧美复古编织小包手包晚宴包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥12.00</em></div>
                      </div>
                    </div></td>
                  <td id="item-117" width="20%;" class="item textcenter"><a target="_blank" href="/?product-117.html" style="width:160px;height:160px;" class="pic"> <img src="images/7a7c616adac553fa.jpg" alt="豹纹零钱袋手拿包一件代发批发女包" style="width:160px;height:160px;"> </a>
                    <div class="info">
                      <div class="gname" style="height:18px;line-height:18px;"> <a href="/?product-117.html" title="豹纹零钱袋手拿包一件代发批发女包">豹纹零钱袋手拿包一件代发批发女包</a> </div>
                      <div class="clearfix">
                        <div class="price textcenter">批发价:<em class="price1">￥9.00</em></div>
                      </div>
                    </div></td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
        <div class="goods_show " id="">
          <div class="hd">
            <h3>新鞋推荐</h3>
          </div>
          <style> 
.itemsWrap{ *display:block; float:left; overflow:hidden; } 
</style>
          <input type="hidden" name="goods_num" id="goods_num" value="15">
          <div class="GoodsListWrap">
            <div class="GoodsList">
              <div class="itemsWrap " product="180" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-180.html" target="_blank" title="蝴蝶结单鞋 2013秋季新品平底尖头女鞋子 复古平跟韩版瓢鞋公主鞋"><img src="images/8764e2b1506b555c.jpg" title="蝴蝶结单鞋 2013秋季新品平底尖头女鞋子 复古平跟韩版瓢鞋公主鞋"></a></div>
                  <h6><a href="/?product-180.html" target="_blank" title="蝴蝶结单鞋 2013秋季新品平底尖头女鞋子 复古平跟韩版瓢鞋公主鞋">蝴蝶结单鞋 2013秋季新品平底尖头女鞋子...</a></h6>
                  <ul>
                    <li><span class="price0">促销价:</span><span class="price1" style="color:default;">￥30.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="166" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-166.html" target="_blank" title="2013新款方扣水钻绸缎面平跟 凉鞋批发 女版欧美平底鞋女鞋"><img src="images/017e2b01e7eba00f.jpg" title="2013新款方扣水钻绸缎面平跟 凉鞋批发 女版欧美平底鞋女鞋"></a></div>
                  <h6><a href="/?product-166.html" target="_blank" title="2013新款方扣水钻绸缎面平跟 凉鞋批发 女版欧美平底鞋女鞋">2013新款方扣水钻绸缎面平跟 凉鞋批发 女版欧美平底鞋女鞋</a></h6>
                  <ul>
                    <li><span class="price0">促销价:</span><span class="price1" style="color:default;">￥24.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="162" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-162.html" target="_blank" title="2013新款松糕厚底凉鞋生产制造彩色双扣低帮装饰女凉批发"><img src="images/7b9f9258c845ef0a.jpg" title="2013新款松糕厚底凉鞋生产制造彩色双扣低帮装饰女凉批发"></a></div>
                  <h6><a href="/?product-162.html" target="_blank" title="2013新款松糕厚底凉鞋生产制造彩色双扣低帮装饰女凉批发">2013新款松糕厚底凉鞋生产制造彩色双扣低帮装饰女凉批发</a></h6>
                  <ul>
                    <li><span class="price0">促销价:</span><span class="price1" style="color:default;">￥28.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="145" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-145.html" target="_blank" title="洋气2013夏欧洲站新品夹趾平底平跟铆钉英伦街头凉鞋罗马鞋女鞋子"><img src="images/c2c687c18a3b8472.jpg" title="洋气2013夏欧洲站新品夹趾平底平跟铆钉英伦街头凉鞋罗马鞋女鞋子"></a></div>
                  <h6><a href="/?product-145.html" target="_blank" title="洋气2013夏欧洲站新品夹趾平底平跟铆钉英伦街头凉鞋罗马鞋女鞋子">洋气2013夏欧洲站新品夹趾平底平跟铆钉英伦街头凉鞋罗马鞋...</a></h6>
                  <ul>
                    <li><span class="price0">促销价:</span><span class="price1" style="color:default;">￥26.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap last" product="144" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-144.html" target="_blank" title="2013新款时尚性感撞色女鞋 女式气质尖头平底跟欧美英伦风单鞋"><img src="images/75206b34d408df0c.jpg" title="2013新款时尚性感撞色女鞋 女式气质尖头平底跟欧美英伦风单鞋"></a></div>
                  <h6><a href="/?product-144.html" target="_blank" title="2013新款时尚性感撞色女鞋 女式气质尖头平底跟欧美英伦风单鞋">2013新款时尚性感撞色女鞋 女式气质尖头平底跟欧美英伦风单鞋</a></h6>
                  <ul>
                    <li><span class="price0">促销价:</span><span class="price1" style="color:default;">￥22.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="clear"></div>
              <div class="itemsWrap " product="142" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-142.html" target="_blank" title="2013夏季新潮学生罗马凉鞋 坡跟撞色凉鞋"><img src="images/15f35c54e53ea39f.jpg" title="2013夏季新潮学生罗马凉鞋 坡跟撞色凉鞋"></a></div>
                  <h6><a href="/?product-142.html" target="_blank" title="2013夏季新潮学生罗马凉鞋 坡跟撞色凉鞋">2013夏季新潮学生罗马凉鞋 坡跟撞色凉鞋</a></h6>
                  <ul>
                    <li><span class="price0">促销价:</span><span class="price1" style="color:default;">￥24.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="140" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-140.html" target="_blank" title="新款 韩版侧拉链马丁靴宝蓝色尖头中跟短靴女式靴"><img src="images/e5394af1ea06b85b.jpg" title="新款 韩版侧拉链马丁靴宝蓝色尖头中跟短靴女式靴"></a></div>
                  <h6><a href="/?product-140.html" target="_blank" title="新款 韩版侧拉链马丁靴宝蓝色尖头中跟短靴女式靴">新款 韩版侧拉链马丁靴宝蓝色尖头中跟短靴女式靴</a></h6>
                  <ul>
                    <li><span class="price0">促销价:</span><span class="price1" style="color:default;">￥32.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="135" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-135.html" target="_blank" title="爆卖金色 欧美亮片平底鞋 休闲大码平跟单鞋女鞋子2013新款"><img src="images/d42c8ad8b13fcb01.jpg" title="爆卖金色 欧美亮片平底鞋 休闲大码平跟单鞋女鞋子2013新款"></a></div>
                  <h6><a href="/?product-135.html" target="_blank" title="爆卖金色 欧美亮片平底鞋 休闲大码平跟单鞋女鞋子2013新款">爆卖金色 欧美亮片平底鞋 休闲大码平跟单鞋女鞋子2013新款</a></h6>
                  <ul>
                    <li><span class="price0">促销价:</span><span class="price1" style="color:default;">￥22.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="134" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-134.html" target="_blank" title="2013新欧美潮学院金属装饰圆头平底平跟时装鞋女鞋单鞋批发"><img src="images/0bcb79bfbec19e55.jpg" title="2013新欧美潮学院金属装饰圆头平底平跟时装鞋女鞋单鞋批发"></a></div>
                  <h6><a href="/?product-134.html" target="_blank" title="2013新欧美潮学院金属装饰圆头平底平跟时装鞋女鞋单鞋批发">2013新欧美潮学院金属装饰圆头平底平跟时装鞋女鞋单鞋批发</a></h6>
                  <ul>
                    <li><span class="price0">促销价:</span><span class="price1" style="color:default;">￥26.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap last" product="131" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-131.html" target="_blank" title="2013新品上市 ,凉鞋裸色系平跟休闲女式凉鞋平底休闲凉鞋批发"><img src="images/a6e02e2ec2d885f3.jpg" title="2013新品上市 ,凉鞋裸色系平跟休闲女式凉鞋平底休闲凉鞋批发"></a></div>
                  <h6><a href="/?product-131.html" target="_blank" title="2013新品上市 ,凉鞋裸色系平跟休闲女式凉鞋平底休闲凉鞋批发">2013新品上市 ,凉鞋裸色系平跟休闲女式凉鞋平底休闲凉鞋批发</a></h6>
                  <ul>
                    <li><span class="price0">促销价:</span><span class="price1" style="color:default;">￥23.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="clear"></div>
              <div class="itemsWrap " product="127" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-127.html" target="_blank" title="2013春季新款高跟鞋批发 蕾丝爆款细跟浅口防水台单鞋女鞋批发"><img src="images/1682794ecad07f52.jpg" title="2013春季新款高跟鞋批发 蕾丝爆款细跟浅口防水台单鞋女鞋批发"></a></div>
                  <h6><a href="/?product-127.html" target="_blank" title="2013春季新款高跟鞋批发 蕾丝爆款细跟浅口防水台单鞋女鞋批发">2013春季新款高跟鞋批发 蕾丝爆款细跟浅口防水台单鞋女鞋批发</a></h6>
                  <ul>
                    <li><span class="price0">促销价:</span><span class="price1" style="color:default;">￥42.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="126" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-126.html" target="_blank" title="复古夏新品2013明星款小辣椒平跟大钻雪纺美拖鞋女鞋子批发"><img src="images/7aa7f4ffd1210bb5.jpg" title="复古夏新品2013明星款小辣椒平跟大钻雪纺美拖鞋女鞋子批发"></a></div>
                  <h6><a href="/?product-126.html" target="_blank" title="复古夏新品2013明星款小辣椒平跟大钻雪纺美拖鞋女鞋子批发">复古夏新品2013明星款小辣椒平跟大钻雪纺美拖鞋女鞋子批发</a></h6>
                  <ul>
                    <li><span class="price0">促销价:</span><span class="price1" style="color:default;">￥20.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="125" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-125.html" target="_blank" title="2012新款韩版小单鞋平跟平底鞋浅口尖头拼色撞色娃娃鞋女鞋批发"><img src="images/7c43f913b6412d8f.jpg" title="2012新款韩版小单鞋平跟平底鞋浅口尖头拼色撞色娃娃鞋女鞋批发"></a></div>
                  <h6><a href="/?product-125.html" target="_blank" title="2012新款韩版小单鞋平跟平底鞋浅口尖头拼色撞色娃娃鞋女鞋批发">2012新款韩版小单鞋平跟平底鞋浅口尖头拼色撞色娃娃鞋女鞋批发</a></h6>
                  <ul>
                    <li><span class="price0">促销价:</span><span class="price1" style="color:default;">￥20.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap " product="124" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-124.html" target="_blank" title="新春夏新款平跟凉鞋子女鞋串珠系带中跟罗马鞋小坡跟休闲鞋学生鞋"><img src="images/db0d4e4ee5875b44.jpg" title="新春夏新款平跟凉鞋子女鞋串珠系带中跟罗马鞋小坡跟休闲鞋学生鞋"></a></div>
                  <h6><a href="/?product-124.html" target="_blank" title="新春夏新款平跟凉鞋子女鞋串珠系带中跟罗马鞋小坡跟休闲鞋学生鞋">新春夏新款平跟凉鞋子女鞋串珠系带中跟罗马鞋小坡跟休闲鞋...</a></h6>
                  <ul>
                    <li><span class="price0">促销价:</span><span class="price1" style="color:default;">￥22.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="itemsWrap last " product="122" style="width:19%;">
                <div class="item">
                  <div class="goodsImg" style="overflow:hidden;text-align:center;vertical-align: middle;width:160px;height:160px;"><a href="/?product-122.html" target="_blank" title="2013新款坡跟凉鞋批发 女士凉鞋罗马鞋高跟夏季 新品婚鞋"><img src="images/4c759444a32b4ae0.jpg" title="2013新款坡跟凉鞋批发 女士凉鞋罗马鞋高跟夏季 新品婚鞋"></a></div>
                  <h6><a href="/?product-122.html" target="_blank" title="2013新款坡跟凉鞋批发 女士凉鞋罗马鞋高跟夏季 新品婚鞋">2013新款坡跟凉鞋批发 女士凉鞋罗马鞋高跟夏季 新品婚鞋</a></h6>
                  <ul>
                    <li><span class="price0">促销价:</span><span class="price1" style="color:default;">￥27.00</span></li>
                  </ul>
                </div>
              </div>
              <div class="clear"></div>
              <div class="clear"></div>
            </div>
            <div class="more clearfix"><a href="/?gallery-47,93,95,97,99,102,103,94,100,101,98,96-tp,4_b,_ANY__t,_ANY__p,0,200-0.html">更多...</a></div>
          </div>
        </div>
      </div>
      <div class="qfbox1 pushdown-2" id="">
        <div class="AdvBanner"> <a href="http://www.hnqss.cn/" target="_blank"> <img src="images/ad2.jpg" style="width:980px;height:156px;"> </a> </div>
      </div>
      <div class="influence pushdown-2">
        <div class="influ_l flt cut">
          <div class="AdvBanner"> <a href="/?product-10.html" target="_blank"> <img src="images/ad3.jpg" style="width:250px;height:255px;"> </a> </div>
        </div>
        <div class="influ_m flt">
          <div class="qfbox2 " id="">
            <div class="hd">
              <h3>最新评论</h3>
            </div>
            <div class="bd">
              <div class="Comment">
                <ul>
                  <li>
                    <h6><a href="/index.php?product-94.html" target="_blank">给力2013新款韩版女式短袖T恤 休闲女士运动衫t恤批发4018</a></h6>
                    <a href="/index.php?product-94.html" target="_blank" class="cmt_item" title="不错···支持！！！">不错···支持！！！</a> <span class="cmt_member">qianxiaozx</span> <span class="cmt_time">2013-05-14</span> </li>
                  <li>
                    <h6><a href="/index.php?product-97.html" target="_blank">王菲同款编织手提包 2013新款韩版斜跨女包单肩包复古包包网店包</a></h6>
                    <a href="/index.php?product-97.html" target="_blank" class="cmt_item" title="这款包，还不错我们商城进货回去卖的还不错，就是希望您下次发货的时候把赠品分开放！理货员对货单的时候容易搞混，谢谢。">这款包，还不错我们商城进货回去卖的还不错，就是希望您下次发货的时候把赠品分开放！理货员对货单的时候容易搞混，谢谢。</a> <span class="cmt_member">qianxiaozx</span> <span class="cmt_time">2013-05-14</span> </li>
                   
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="influ_r flt">
          <div class="qfbox2 " id="">
            <div class="hd">
              <h3>热门资讯</h3>
            </div>
            <div class="bd">
              <div class="ArticleListWrap">
                <div class="ArticleList">
                  <ul>
                    <li> <a href="/?article-28.html" title="1号批发网最新公告">1号批发网最新公告</a></li>
                    <li> <a href="/?article-31.html" title="批发优惠规则">批发优惠规则</a></li>
                    <li> <a href="/?article-32.html" title="男装批发规则">男装批发规则</a></li>
                    <li> <a href="/?article-30.html" title="一号批发平台网店代发规则">一号批发平台网店代发规则</a></li>
                  </ul>
                  <div class="more clearfix"><a href="/?artlist-100.html">更多...</a></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <script>
window.addEvent("domready",function(e){
	/*分类去最末一个的边线*/
	if(cIA=$('index_top').getElements(".c-cat-depth-1")){
		cIA[cIA.length-1].addClass('last');
	};
	/*分类高亮*/
	var cateactive = new fn($('index_top').getElements(".catebox .c-cat-depth-1"));
	cateactive.fnClassToggle();
	/*产品高亮*/
	var goodsactive = new fn($('index_mid').getElements(".GoodsList .itemsWrap"));
	goodsactive.fnClassToggle();
});
</script>
    </div>
    <div id="footer" class="wrap pushdown-2">
      <div class="line2"></div>
      <div class="helplist clearfix">
        <div class="flt help1">
          <div class="qfbox5 " id="">
            <h3><i></i>新手上路</h3>
            <div class="TreeList">
              <div class="cat2"><a href="/?page-notice.html">顾客必读</a></div>
              <div class="cat2"><a href="/?page-memberrank.html">会员等级折扣</a></div>
              <div class="cat2"><a href="/?page-orderstatus.html">订单的几种状态</a></div>
              <div class="cat2"><a href="/?page-scoreplan.html">积分奖励计划</a></div>
              <div class="cat2"><a href="/?page-returngood.html">商品退货保障</a></div>
            </div>
          </div>
        </div>
        <div class="flt help2">
          <div class="qfbox5 " id="">
            <h3><i></i>购物指南</h3>
            <div class="TreeList">
              <div class="cat2"><a href="/?page-nonmember.html">非会员购物通道</a></div>
              <div class="cat2"><a href="/?page-service.html">体贴的售后服务</a></div>
              <div class="cat2"><a href="/?page-terms.html">网站使用条款</a></div>
              <div class="cat2"><a href="/?page-disclaimer.html">网站免责声明</a></div>
              <div class="cat2"><a href="/?page-process.html">简单的购物流程</a></div>
            </div>
          </div>
        </div>
        <div class="flt help3">
          <div class="qfbox5 " id="">
            <h3><i></i>支付方式</h3>
            <div class="TreeList">
              <div class="cat2"><a href="/?page-payment.html">支付方式</a></div>
              <div class="cat2"><a href="/?page-shipping.html">配送方式</a></div>
              <div class="cat2"><a href="/?page-orderinfo.html">订单何时出库？</a></div>
              <div class="cat2"><a href="/?page-onlinepayment.html">网上支付小贴士</a></div>
              <div class="cat2"><a href="/?page-shippinginfo.html">关于送货和验货</a></div>
            </div>
          </div>
        </div>
        <div class="flt help4">
          <div class="qfbox5 " id="">
            <h3><i></i>配送方式</h3>
            <div class="TreeList">
              <div class="cat2"><a href="/?page-payment.html">支付方式</a></div>
              <div class="cat2"><a href="/?page-shipping.html">配送方式</a></div>
              <div class="cat2"><a href="/?page-orderinfo.html">订单何时出库？</a></div>
              <div class="cat2"><a href="/?page-onlinepayment.html">网上支付小贴士</a></div>
              <div class="cat2"><a href="/?page-shippinginfo.html">关于送货和验货</a></div>
            </div>
          </div>
        </div>
        <div class="flt help5">
          <div class="qfbox5 " id="">
            <h3><i></i>购物条款</h3>
            <div class="TreeList">
              <div class="cat2"><a href="/?page-license.html">会员注册协议</a></div>
              <div class="cat2"><a href="/?page-privacy.html">隐私保护政策</a></div>
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
    <p><a href="/?page-about.html" type="page" target="_blank">关于我们</a> | <a href="/?page-contact.html" type="page" target="_blank">联系我们</a> | <a href="/?page-method.html" type="page" target="_blank">付款方式</a> | <a href="http://www.weibo.com/hnqss" type="url" target="_blank">新浪博客</a>&nbsp; | <a href="/?sitemaps-view.html" type="url" target="_blank">网站地图</a> | <a href="/?link-showList.html" type="url" target="_blank">友情链接</a></p>
    <p>Copyright © 2013&nbsp;深圳智鸿电子商务有限公司 All Rights Reserved. 粤ICP备13020767号-1&nbsp;&nbsp;</p>
    <p>&nbsp;</p>
</div>
</div>


   
</body>
</html>
