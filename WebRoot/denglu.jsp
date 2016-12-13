<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="./1号店登录_files/pc_login_new.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript" src="./1号店登录_files/pc_login_new.js"></script>
</head>

<body>
	<div class="regist_header clearfix">
		<div class="wrap">
			<a href="http://www.yhd.com/" class="logo"><img
				src="./1号店登录_files/loginlogo.jpg" height="55" alt="1号店"></a>
			<div class="regist_header_right clearfix">
				<!--<a href="#" class="english_edition" id="edition" style="display:none">English</a>-->
				<div class="help_wrap">
					<a class="hd_menu"
						href="http://www.yhd.com/cms/view.do?topicId=18942"><s
						class="help_ico"></s>帮助中心</a>
					<div class="hd_menu_list">
						<ul>
							<li><a href="http://my.yhd.com/order/myOrder.do">包裹跟踪</a></li>
							<li><a href="http://www.yhd.com/cms/view.do?topicId=18991">常见问题</a></li>
							<li><a href="http://my.yhd.com/return/returnApplyList.do">在线退换货</a></li>
							<li><a href="http://my.yhd.com/opinion/opinionList.do">在线投诉</a></li>
							<li><a
								href="http://www.yhd.com/deliveryinfo/deliveryInfo.do">配送范围</a></li>
						</ul>
					</div>
				</div>
				<span class="fr"><a
					href="/No1/customer/customer_loginout.action" id="nickName"></a>&nbsp;欢迎光临1号店！
					<a href="denglu.jsp" id="login" class="blue_link"></a></span>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var no3wUrl = "yhd.com";
		var currSiteId = 1;
		var URLPrefix = {
			"passport_statics" : "https://passport.yhd.com/front-passport/passport",
			"yhd_domain" : ".yhd.com",
			"yaowang" : "http://www.111.com.cn",
			"sam_captcha_host" : "https://security.samsclub.cn",
			"sam_passport_statics" : "https://security.samsclub.cn/front-passport/passport",
			"my" : "http://my.yhd.com",
			"sam_domain" : ".samsclub.cn",
			"passportother" : "https://passport.1mall.com",
			"mymall" : "http://my.1mall.com",
			"yhd_login_url" : "https://passport.yhd.com/passport/login_input.do",
			"sam_captcha_js_url" : "https://security.samsclub.cn/captcha/js/api.js",
			"yiwangauth" : "http://mall.yiwang.cn",
			"hk_passport_statics" : "https://passport.yihaodian.com.hk/front-passport/passport",
			"yhd_captcha_host" : "https://captcha.yhd.com",
			"tracker" : "tracker.yhd.com",
			"passport" : "https://passport.yhd.com",
			"sam_login_url" : "https://security.samsclub.cn/customer/login_input.do",
			"central" : "http://www.yhd.com",
			"sam_passport_host" : "https://security.samsclub.cn",
			"validCodeShowUrl" : "https://captcha.yhd.com/public/validcode.do",
			"yhd_passport_host" : "https://passport.yhd.com",
			"sam_request_namespace" : "/customer",
			"mall" : "http://www.1mall.com"
		};
		var yhdUrl = "http://www.yhd.com";
		var yhdPassportUrl = "https://passport.yhd.com";
		var ywPassportUrl = "https://passport.111.com.cn";
		var loli = window['loli'] || {};
		var valid_code_service_flag = "1";
	</script>
	<script type="text/javascript" src="./1号店登录_files/jquery.cookie.js"></script>


	<input type="hidden" id="isAutoLogin" value="0">
	<input type="hidden" id="autoLoginFlag" value="1">
	<input type="hidden" id="uuid">
	<div class="login_wrap">
		<div class="wrap clearfix">
			<div class="mod_login_wrap">
				<div class="login_pc">
					<p id="error_tips" class="error_tips" style="display:none">您填写的账户名不存在请核对后重新填写</p>
					<div class="clearfix">
						<h3>1号店用户登录</h3>
						<a href="zhuce.jsp" class="regist_new blue_link">注册新账号</a>
					</div>
					<form action="/No1/customer/customer_login.action"
						onsubmit="return check()" method="post">
						<div class="login_form">
							<input id="login_source" type="hidden" value="1"> <input
								id="login_pc_home_page" type="hidden" value="1">
							<div class="form_item_wrap">
								<div class="form_item">
									<label class="user_ico">&nbsp;</label> <input id="un"
										type="text" name="customer.cname" spellcheck="false"
										tabindex="1" class="ipt ipt_username gay_text"
										style="outline: none;" value="">
								</div>
								<div class="form_item">
									<label class="paswd_ico">&nbsp;</label> <input id="pwd"
										type="password" oncopy="return false" onpaste="return false"
										oncut="return false" oncontextmenu="return false"
										name="customer.password" tabindex="2"
										class="ipt ipt_password gay_text" placeholder="密码 "
										style="outline: none;">
								</div>
								<div id="vcd_div" class="verify_code clearfix"
									style="display: none;">
									<input id="validateSig" type="hidden">
									<div class="form_item cur_right">
										<label class="verify_ico">&nbsp;</label> <input id="vcd"
											type="text" name="validCode" maxlength="4" tabindex="1"
											value="验证码" class="ipt ipt_code gay_text"
											onblur="javascript: jsLoginValidatCode.checkValidCodeOnBlur()"
											onkeyup="javascript: jsLoginValidatCode.login_param_validate();">
										<span tabindex="-1" class="code_right" id="code_right"></span>
										<span tabindex="-1" class="code_wrong" id="code_wrong"></span>
									</div>
									<a class="verify_code_box"
										onclick="jsLoginValidatCode.passport_refresh_valid_code();return false;"
										href="https://passport.yhd.com/passport/login_input.do?tp=1.1.150.0.1.LQC9DhI-10-8ld`8&ti=J95N0h#">
										<img id="valid_code_pic" name="valid_code_pic"> <i
										tabindex="-1" class="btn_change">换一张</i>
									</a>
								</div>
								<div>
									<input type="text" name="checkCode" class="text" size="10"
										style="width:65px;height:30px" id="checkCode"> <font color="red"
										size="2" id="tips"></font> <img
										src="/No1/customer/customer_WriteCode.action" alt=""
										align="absmiddle" style="position:relative;top:-2px;" id="img" />
									<a href="" onclick="return false;" style="color:#999;"
										id="invisible">看不清，换一张</a>

								</div>
								<div class="auto_login clearfix">
									<p class="clearfix">
										<a id="check_agreement"
											href="https://passport.yhd.com/passport/login_input.do?tp=1.1.150.0.1.LQC9DhI-10-8ld`8&ti=J95N0h#"
											class="uncheck_agreement">自动登录</a> <input id="autoLoginCheck"
											type="hidden"> <span id="agreement_tips"
											class="auto_tips" style="display: none;">请勿在公用电脑上启用</span>
									</p>
									<p class="service_agreement" style="">
										点击登录，表示您同意1号店<a
											href="http://cms.yhd.com/cms/view.do?topicId=24110"
											class="blue_link" target="_blank">《服务协议》</a>
									</p>
									<a href="queryCustomer.jsp" target="_blank" class="forget_pswd"
										tabindex="-1">忘记密码？</a>
								</div>

								<input type="submit" id="login_button" class="login_btn"
									value="登录">
							</div>
					</form>
					<div class="joint_landing_wrap">
						<p>更多合作网站账号登录</p>
						<div class="clearfix">
							<ul class="account_list clearfix">
								<li><a href="https://passport.yhd.com/qq/login.do"
									target="_blank" class="iconfont" title="QQ"></a></li>
								<li><a href="https://passport.yhd.com/sina/login.do"
									target="_blank" class="iconfont" title="新浪微博"></a></li>
								<li><a href="https://passport.yhd.com/alipay/login.do"
									target="_blank" class="iconfont" title="支付宝"></a></li>
								<li><a href="https://passport.yhd.com/wechat/login.do"
									target="_blank" class="iconfont" title="微信"></a></li>
							</ul>
							<a href="javascript:void(0);" class="unfold" title="展开">更多合作网站<i></i></a>

						</div>
						<ul class="more_landing clearfix">
							<li style="display: none;"><a
								href="https://passport.yhd.com/netease/login.do" target="_blank"><i
									class="iconfont"></i>网易</a></li>
							<li style="display: none;"><a
								href="https://passport.yhd.com/baidu/login.do" target="_blank"><i
									class="iconfont"></i>百度</a></li>
							<li style="display: none;"><a
								href="javascript:alert('现已终止与139邮箱合作，请您采用其他方式登录。已绑定手机用户可通过手机号和密码登录。账号相关问题可致电客服电话400-007-1111。给您带来不便，表示抱歉！');"><i
									class="iconfont"></i>中国移动</a></li>
							<li style="display: none;"><a
								href="https://passport.yhd.com/kaixin/login.do" target="_blank"><i
									class="iconfont"></i>开心网</a></li>
							<li style="display: none;"><a
								href="https://passport.yhd.com/renren/login.do" target="_blank"><i
									class="iconfont"></i>人人网</a></li>
							<li style="display: none;"><a
								href="https://passport.yhd.com/wanlitong/login.do"
								target="_blank"><i class="iconfont"></i>平安万里通</a></li>
							<li style="display: none;"><a
								href="https://passport.yhd.com/mogujie/login.do" target="_blank"><i
									class="iconfont"></i>蘑菇街</a></li>
						</ul>
					</div>
					<!--
					-->
				</div>
			</div>
			<!--login code-20160613-zhangqian7-S-->
			<div class="login_code">
				<div class="login_code_title">
					用<a
						href="https://passport.yhd.com/passport/login_input.do?tp=1.1.150.0.1.LQC9DhI-10-8ld`8&ti=J95N0h#">1号店APP</a>登录
				</div>
				<div class="login_code_pic">
					<div class="picture_code" id="login_code_pic">
						<!--  <img width="180" height="180"  id="login_code_pic"> -->
					</div>
					<div class="shade"></div>
					<div class="meg_error">
						<h5>二维码已经过期</h5>
						<a
							href="https://passport.yhd.com/passport/login_input.do?tp=1.1.150.0.1.LQC9DhI-10-8ld`8&ti=J95N0h#"
							onclick="codeScan.refreshFunc()" class="refresh_btn">请刷新二维码</a>
					</div>
				</div>
				<div class="login_code_success">
					<img src="./1号店登录_files/codeSuccess.jpg" alt="yhd" width="209"
						height="182">
					<p>扫描成功！</p>
					<h5>请在手机上确认登录</h5>
				</div>
				<div class="login_code_handle">
					<a
						href="https://passport.yhd.com/passport/login_input.do?tp=1.1.150.0.1.LQC9DhI-10-8ld`8&ti=J95N0h#"
						onclick="codeScan.refreshFunc()">刷新二维码</a> <em>|</em> <a
						href="https://passport.yhd.com/passport/login_input.do?tp=1.1.150.0.1.LQC9DhI-10-8ld`8&ti=J95N0h#"
						class="use_help"> <span>使用帮助</span> <span class="tips"><i></i>扫描不上，版本过低？</span>
					</a>
				</div>
			</div>
			<!--login code-E-->


			<div class="login_switch">
				<em></em> <a href="javascript:;" class="two_dimension_code"></a> <a
					href="javascript:;" class="static_pc"></a>
			</div>
		</div>
		<div class="mod_left_banner">
			<a id="imgLink" target="_blank"
				href="http://cms.yhd.com/sale/ENawexnRnXJ?ref=ad.19022_39183187_1"><img
				id="img" src="./1号店登录_files/ChEi3Vetfg6ANHwcAAC9pORaVMk22400.jpg"></a>
		</div>
	</div>
	</div>

	<div class="mod_login_bindmb_point"></div>


	<div id="simplefooter">
		<a href="http://www.miibeian.gov.cn/" target="_blank">沪ICP备13044278号</a>|<a>合字B1.B2-20130004</a>|<a
			href="http://d7.yihaodianimg.com/N01/M04/14/0D/CgQCr1KgLjGAM5w3AAQiJTyDkdw48000.jpg"
			data-ref="YHD_Footer_Licence" target="_blank">营业执照</a>
		<p>Copyright © 1号店网上超市 2007-2016，All Rights Reserved</p>
	</div>
	<div>
		<span style="color: #FFFFFF"> 71!$ 37%&amp; 17#@ 10!$ , </span> <span
			style="color: #FFFFFF">1657222</span>
	</div>
	<script type="text/javascript" src="./1号店登录_files/global_tracker.js"></script>


	<script type="text/javascript" src="./1号店登录_files/api.js"></script>


	<script>
		pageInit();

		$(document)
				.ready(
						function() {
							var isIE = !!window.ActiveXObject;
							var isIE6 = isIE && !window.XMLHttpRequest;
							if (isIE6) {
								$(".login_switch").hide();
							}
							if (1 == 0) {
								$(".login_switch").hide();
							}

							jsLoginFed.loadImageUrl("1",
									"Passport_Login_Ad_Click");

							var host = window.location.host;
							var reg_host = /([a-z0-9_-]+\.)*(yhd|yihaodian|1mall|111)\.(com\.hk)$/;
							if (reg_host.test(host)) {
								var requestUrl = URLPrefix.passport
										+ "/passport/cookie_rurl_synchronization.do";
								cookie_sync
										.cookieRURLSynchronization(requestUrl);

								if (window.addEventListener) {
									window.addEventListener("message",
											handMessage, false);
								} else {
									window
											.attachEvent("onmessage",
													handMessage);
								}

								$(".login_switch").hide();
							}
						});

		function handMessage(event) {
			event = event || window.event;
			if (event.origin === 'https://passport.yhd.com') {
				var obj = eval('(' + event.data + ')');
				window.location = obj.returnUrl;
			}
		}
	</script>
	<script type="text/javascript">
		var nickName = "${userInfo.cname }";
		if (nickName != "") {
			$("#nickName").text(nickName);
			$("#login").text("");
		} else {
			$("#nickName").text("");
			$("#login").text("[登录]");
		}
	</script>

	<script type="text/javascript" src="/No1/js/jquery-2.1.0.js"></script>
	<script type="text/javascript">
		var chCode=false;
		$("#invisible")
				.click(
						function() {
							var num = parseInt(Math.random() * 500);
							$("#img")[0].src = "/No1/customer/customer_WriteCode.action?num="
									+ num;
						});

		$("#checkCode").blur(function() {
			debugger;
			var checkCode = $("#checkCode").val();
			$.ajax({

				type : "get",
				url : "/No1/customer/customer_checkCode.action",
				async : true,
				data : {
					checkCode : checkCode
				},

				success : function(data) {

					var type = data.type;
					if (type != "1") {
						$("#tips").text("验证码不正确");
						chCode = false;
					} else {
						$("#tips").text("验证码正确");
						chCode = true;
					}
				}
			});
		});

		function check() {
			if (chCode) {
				return true;
			} else {
				return false;
			}
		}
	</script>


</body>
</html>
