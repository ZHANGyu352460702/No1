if(Request.JSONP == undefined) {Request.JSONP=new Class({Implements:[Chain,Events,Options],options:{onRequest:function(a){this.options.log&&(window.console&&console.log)&&console.log("JSONP retrieving script with url:"+a)},onError:function(a){this.options.log&&(window.console&&console.warn)&&console.warn("JSONP "+a+" will fail in Internet Explorer, which enforces a 2083 bytes length limit on URIs")},url:"",callbackKey:"callback",injectScript:document.head,data:"",link:"ignore",timeout:0,log:!1},initialize:function(a){this.setOptions(a)},
send:function(a){if(!Request.prototype.check.call(this,a))return this;this.running=!0;var b=typeof a;if("string"==b||"element"==b)a={data:a};a=$merge(this.options,a||{});b=a.data;switch(typeof b){case "element":b=document.id(b).toQueryString();break;case "object":case "hash":b=Object.toQueryString(b)}var c=this.index=Request.JSONP.counter++,b=a.url+(a.url.test("\\?")?"&":"?")+a.callbackKey+"=Request.JSONP.request_map.request_"+c+(b?"&"+b:"");2083<b.length&&this.fireEvent("error",b);Request.JSONP.request_map["request_"+
c]=function(){this.success(arguments,c)}.bind(this);var d=this.getScript(b).inject(a.injectScript);this.fireEvent("request",[b,d]);a.timeout&&this.timeout.delay(a.timeout,this);return this},getScript:function(a){this.script||(this.script=new Element("script",{type:"text/javascript",async:!0,src:a}));return this.script},success:function(a){this.running&&this.clear().fireEvent("complete",a).fireEvent("success",a).callChain()},cancel:function(){this.running&&this.clear().fireEvent("cancel");return this},
isRunning:function(){return!!this.running},clear:function(){this.running=!1;this.script&&(this.script.destroy(),this.script=null);return this},timeout:function(){this.running&&(this.running=!1,this.fireEvent("timeout",[this.script.get("src"),this.script]).fireEvent("failure").cancel());return this}});Request.JSONP.counter=0;Request.JSONP.request_map={};}

(function() {
    String.prototype.trim = function(){
        return this.replace(/(^\s*)|(\s*$)/g, ""); 
    };

	var win = window,
		doc = document,
		ptype,
		spapi = 'http://rs.weishangye.com/shop/info',
		sendurl = 'http://statv.shopex.cn/'
		qqurl = 'http://ec.pingtcss.qq.com/pingd';
	EcJS = {
		setCookie: function(key, value, options) {
			options || (options = {});
			if(options.encode) value = encodeURIComponent(value);
			if(options.domain) value += '; domain=' + options.domain;
			if(options.path) value += '; path=' + options.path;
			if(options.duration) {
				var date = new Date();
				date.setTime(date.getTime() + options.duration * 24 * 60 * 60 * 1000);
				value += '; expires=' + date.toGMTString();
			}
			if(options.secure) value += '; secure';
			document.cookie = key + '=' + value;
		},
		escapeRegExp: function(str) {
			return str.replace(/([-.*+?^${}()|[\]\/\\])/g, '\\$1');
		},
		getCookie: function(key) {
			var value = document.cookie.match('(?:^|;)\\s*' + this.escapeRegExp(key) + '=([^;]*)');
			return(value) ? decodeURIComponent(value[1]) : null;
		},
		disposeCookie: function(key, options) {
			options || (options = {});
			options.duration = -1;
			this.setCookie(key, '', options);
		},
		getRandom: function(str){
			str = str||'';
			return str+(Math.round((Math.random()||0.5) * 2147483647) * (+new Date())) % 10000000000
		},
		getInfoData: function(cdata){
			var info = EcJS.getCookie(cdata),
				arr = info?info.split('|'):[],
				item = {},
				poo = [],
				goo = [],
				list = [],
				reg = /,/;

			if( !info )return '';

			if( cdata =='cinfo' ){
				var c = arr[0].split(reg);
				return 'cinfo=' + Cookie.read('cinfo').split(',')[0] + ':' + c[1] + '.' + c[2] + ';';
			}

			for (var i = arr.length - 1; i >= 0; i--) {
				var c = arr[i].split(reg);
				poo.push( c[0] );
				goo.push( c[1]+'.'+c[2] )
			};
			for (var i = poo.length - 1; i >= 0; i--) {
				if( item[poo[i]] instanceof Array )
					item[poo[i]].push(goo[i]);
				else{
					item[poo[i]] = [];
					item[poo[i]].push(goo[i]);
				}
			};
			for (var i in item){
				list.push(i + ':' + item[i].join('.'))
			};
			return 'einfo=' + list.join('|') + ';';
		},
		getBrowser: function(qq) {
			var ua = navigator.userAgent.toLowerCase(),
				platform = navigator.platform.toLowerCase(),
				UA = ua.match(/(opera|ie|firefox|chrome|mqqbrowser|version)[\s\/:]([\w\d\.]+)?.*?(safari|version[\s\/:]([\w\d\.]+)|$)/) || [null, 'unknown', 0],
				mode = UA[1] == 'ie' && document.documentMode,
				nav = navigator.plugins['Shockwave Flash'],
				version;
			try {
				version = nav ? nav.description : new ActiveXObject('ShockwaveFlash.ShockwaveFlash').GetVariable('$version');
			} catch(e) {}
			version = (version || '0 r0').match(/\d+/g);

			if( doc.body.addBehavior )
				doc.body.addBehavior('#default#clientCaps');

			var flash = Number(version[0] || '0.' + version[1]) || 0,
				name = (UA[1] == 'version') ? UA[3] : UA[1],
				platform = ua.match(/ip(?:ad|od|hone)/) ? 'ios' : (ua.match(/(?:webos|android)/) || platform.match(/mac|win|linux/) || ['other'])[0],
				browser = mode || parseFloat((UA[1] == 'opera' && UA[4]) ? UA[4] : UA[2]),
				language = navigator.language ? navigator.language : navigator.browserLanguage,
				charset = doc.charset || doc.characterSet,
				jsVersion = '1.0',
				domain = doc.domain,
				pathname = doc.location.pathname.split('?')[0],
				currentTime = new Date().format("yyyy-MM-dd hh:mm:ss"),
				timezone = new Date().getTimezoneOffset()/60*-1,

				referrerInfo = this.get_ref_info(doc.referrer),
				keyword = referrerInfo.keyword,
				searchEngineName = referrerInfo.type,
				rdomain = referrerInfo.url ? referrerInfo.url.split('/')[2] : '',
				rurl = referrerInfo.url ? ( referrerInfo.url.split(rdomain)[1].split('?')[0] ) : '',
				rarg = referrerInfo.url ? ('&rarg=' + encodeURIComponent(referrerInfo.url.substring(referrerInfo.url.lastIndexOf('/')+1))) : '',//
				arg = location.search ? ('&arg='+encodeURIComponent(location.search.split('?')[1])) : '',

				winScreen = win.screen,
				screen = winScreen ? winScreen.width + "x" + winScreen.height : '-',
				connectType = doc.body.connectionType ? ('&ct='+doc.body.connectionType) : '',
				colorDepth = winScreen ? winScreen.colorDepth + "-bit" : '-',
				javaEnabled = navigator && navigator.javaEnabled() ? 1 : 0;

			this.getCookie('pvi') ? this.getCookie('pvi') :
				this.setCookie('pvi', this.getRandom(), {duration:30});
			this.getCookie('si') ? this.getCookie('si') :
				this.setCookie('si', this.getRandom('s'));

			var browserData = '';
			browserData += '&dm=' + domain + '&pvi=' + this.getCookie('pvi') + '&si=' + this.getCookie('si') + '&url=' + pathname + '&rdm=' + rdomain + '&rurl=' + rurl + '&scr=' + screen + '&scl=' + colorDepth + '&pf=' + platform + '&fl=' + flash + connectType + '&lg=' + language + '&jv=' + javaEnabled + '&tz=' + timezone + '&vr=' + jsVersion + '&r4=128' + arg + rarg;
			browserData += '&scv=' + jsVersion + '&sfv=' + flash + '&sbv=' + (name + browser) + '&sje=' + javaEnabled + '&sos=' + platform + '&ssc=' + screen + '&scd=' + colorDepth + '&sch=' + charset + '&svt=' + currentTime + '&sl=' + language + '&sre=' + rurl + '&srt=' + searchEngineName + '&srk=' + keyword;

			return browserData;
		},
		get_ref_info: function(url) {
			if(!url) {
				return {
					url: null,
					type: null,
					keyword: null
				};
			}
			var r = url.split("?");
			if(r[0].indexOf(doc.location.hostname) != -1) {
				return {
					url: url,
					type: null,
					keyword: null
				};
			}
			var index = 0,
				_type = "",
				_keyword = "";
			for(var i = 0; i < bf.sengin.length; i++) {
				if(url.indexOf(bf.sengin[i]) != -1) {
					index = i;
					_type = bf.sengin[i];
					var key = bf.sword[index] + "=";
					if(url.split(key).length > 1) {
						break;
					}
				} else {
					_type = encodeURIComponent("null");
					_keyword = null;
				}
			}
			var key = bf.sword[index] + "=";
			if(!url.split(key)[1]) {
				return {
					url: url,
					type: _type,
					keyword: _keyword
				};
			}
			_keyword = decodeURIComponent(url.split(key)[1].split("&")[0]);
			return {
				url: url,
				type: _type,
				keyword: _keyword
			};
		},
		init: function(url, param, callback) {}
	};
	var bind = function(obj) {
			return function(name, aO, fn) {
				obj[name] = function() {
					return fn.apply(obj, arguments)
				};
				return fn;
			}
		};
	var bf = {
		sengin: ["baidu.com", "baidu.com", "google.com.hk", "google.cn", "google.com", "sogou.com", "zhongsou.com", "search.yahoo.com", "one.cn.yahoo.com", "soso.com", "114search.118114.cn", "search.live.com", "youdao.com", "gougou.com", "bing.com"],
		sword: ["word", "wd", "q", "q", "q", "query", "w", "p", "p", "w", "kw", "q", "q", "search", "q"]
	};

	function Send() {
		var _this = this;
	};
	Send.prototype = {
		send: function(url) {
			this.sendByImage(url);
		},
		sendByImage: function(src, fn) {
			var img = new Image(1, 1);
			img.onload = img.onerror = function() {
				img.onload = null;
				img.onerror = null;
				fn && fn();
			};
			img.src = src;
		}
	};
	Date.prototype.format = function(format) {
		var o = {
			"M+": this.getMonth() + 1,
			"d+": this.getDate(),
			"h+": this.getHours(),
			"m+": this.getMinutes(),
			"s+": this.getSeconds(),
			"q+": Math.floor((this.getMonth() + 3) / 3),
			"S": this.getMilliseconds()
		};
		if(/(y+)/.test(format)) {
			format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
		}
		for(var k in o) {
			if(new RegExp("(" + k + ")").test(format)) {
				format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
			}
		}
		return format;
	};
	var data = {},
		dataStr = '',
		dataClone = '',
		dataList = [],
		dataExt = {
			'oid':[],
			'total':[],
			'gid':[],
			'buy':[],
			'pay':[],
			'qu':[],
			'sku':[],
			'fav':[],
			'shopcart':[],
			'ssk':[],
			'ssr':[],
			'tvc':[],
			'uid':[],
			'price':[]
		};
	function EcData() {
		var _this = this;
		_this.referrer = doc.referrer;
		function isValue(key, a5) {
			var temp = a5;
			while(key[temp]) {
				temp += ' ';
			}
			return temp;
		}
		function addParam(name, key, a7, fn, fns) {
			var a5 = a5 || "|";

			_this[name] = function() {
				if(fn) {
					if(fn.apply(window, arguments) === true) {
						return
					}
				}
				var bf = [];
				var bb = fns ? fns.apply(window, arguments) : arguments;
				
				switch(key){
					case 'sg':
						if(ptype == '485-goodsdetail'){
							var uprid = $$("input[name^=goods[goods_id]").length ? $$("input[name^=goods[goods_id]")[0].get('value') : null,
								ubrid = $$(".goodsprops a[href*=brand]").length ? $$(".goodsprops a[href*=brand]")[0].getID('brand') : '',
								ucid = bb[0],
								uprice = !!$("goods-viewer") ? $("goods-viewer").getElements('.price1')[0].get('html').trim().substring(1).split('-')[0] : '';
							_ecq.push(['$setProductInfo', uprid, ucid, ubrid, uprice]);
						}
						break;
					case 'sor':
						dataExt['oid'].push(bb[0]);
						dataExt['total'].push(bb[1]);
						dataExt['pay'].push(0);//下單頁未支付寫死
						break;
					case 'sod':
						dataExt['oid'].push(bb[0]);
						dataExt['total'].push(bb[1]);
						dataExt['pay'].push(bb[6]);
						break;
					case 'sog':
						dataExt['buy'].push(bb[1]);
						dataExt['qu'].push(bb[4]);
						dataExt['price'].push(bb[3]);
						break;
					case 'soi':
						if( bb[6]=='goods' ){
							dataExt['buy'].push(bb[1]);
							dataExt['qu'].push(bb[2]);
							dataExt['sku'].push(bb[3]);
						}else
							dataExt['gid'].push(bb[1]);
						break;
					case 'sse':
						dataExt['ssk'].push(bb[0]);
						dataExt['ssr'].push(bb[1]);
						break;
					case 'opr':
						dataExt['oid'].push(bb[0]);
						dataExt['total'].push(bb[1]);
						dataExt['pay'].push(bb[2] == 'succ' ? 1 : 0);
						//从下单页cookie取数据
						if(!!Cookie.read('rnf')){
							var _oinfo = Cookie.read('rnf').split('#'),
								norder = [];
							Array.each(_oinfo, function(item){
								if(bb[0] == item.split('|')[0]){
									dataExt['buy'] = item.split('|')[1].split(',');
									dataExt['qu'] = item.split('|')[2].split(',');
									dataExt['price'] = item.split('|')[3].split(',');
								}
								else{
									norder.push(item.toString());
								}
							});
							norder = norder.join('#');
							Cookie.write('rnf', norder.toString());
						}
						break;
				}
				
				for(var bd = 0, ba = bb.length; bd < ba; bd++) {
					try {
						bf[bd] = bb[bd] == null ? null : (bb[bd] + "").replace(/\|/g, " ")
					} catch(bg) {}
				}
				var be = bf.join(a5);
				var bc = isValue(data, key);
				dataList.push(bc);
				data[bc] = encodeURIComponent(be);
			}
		}
		addParam("$appendBrand", "sbr");
		addParam("$appendCat", "scate");
		addParam("$appendGoods", "sg");
		addParam("$appendCartItem", "scg", 0);
		addParam("$appendCartPac", "scp", 0);
		addParam("$appendCartPacItem", "scpg", 0);
		addParam("$appendCartGift", "scgift", 0);
		addParam("$appendOrder", "sor", 0);
		addParam("$appendOrderPac", "sop", 0);
		addParam("$appendOrderPacGoods", "sopg", 0);
		addParam("$appendOrderDetail", "sod");
		addParam("$appendOrderItems", "soi");
		addParam("$appendItem", "sog", 0);
		addParam("$appendOrderGift", "sogift", 0);
		addParam("$appendSearchResult", "sse");
		addParam("$appendCompareItem", "scog", 0);
		addParam("$appendFavItem", "sgf", 0);
		addParam("$appendGift", "sgift", 0);
		addParam("$appendHistory", "sh", 0);
		addParam("$appendRecentPurchase", "srog");
		addParam("$appendToCart", "atc");
		addParam("$appendToFav", "atf");
		addParam("$orderPayResult", "opr");
	};
	EcData.prototype = {
		send: function(qq, param) {
			var src = sendurl,
				pageinfo = this.getPageInfo(1),
				_this = this;
			src += '?' + (param ? param : '') + pageinfo;
			var request = new Send();
			request.send(src.replace('?&','?'));
			if( qq ){
				if(!Cookie.read('txac') && doc.getElementById('related-goods-widget') ){
					dataClone = dataStr;
					return;
				}
				Cookie.dispose('txac');
				this._sendtx(1);
			}
		},
		_sendtx: function(ex){
			if(ptype == "485-ordercreate" || ptype == "485-orderPayResult"){
				//判断是否第一次生成订单
				if(!!Cookie.read('odf')){
					if(dataExt.oid.toString().length){
						var _od = Cookie.read('odf').split(',');
						if(ptype == "485-ordercreate" && _od.indexOf(dataExt.oid.toString()) == -1){//order create
							_od.push(dataExt.oid.toString());
							Cookie.write('odf', _od);
						}
						else if(ptype == "485-orderPayResult" && _od.indexOf(dataExt.oid.toString()) != -1){//payresult
							var dx = _od.indexOf(dataExt.oid.toString());
							_od.splice(dx, 1);
							Cookie.write('odf', _od);
						}
						else
							return;
					}
					else
						return;
				}
				else{
					if(ptype == "485-ordercreate")
						Cookie.write('odf', dataExt.oid.toString())
					else if(ptype == "485-orderPayResult")
						Cookie.write('odf', dataExt.oid.toString()+'d')
				}
			}
			else if(ptype == 'paycenter_order')
				return;
			var url = qqurl + '?' + this.getPageInfo(ex);
				url += this.getPageInfoExt();
				new Send().send(url.replace('?&','?'));
				EcJS.disposeCookie('einfo');
				EcJS.disposeCookie('cinfo');
		},
		getPageInfo: function(ex) {
			var title = encodeURIComponent(document.title),
				str = ex ? dataStr : dataClone;
			str += "&spt=" + title + "&sti=" + title;
			var browser = EcJS.getBrowser();
			str += browser;
			return str;
		},
		getPageInfoExt: function(){
			//set uid
			if(!!Cookie.read('S[MEMBER]'))
				dataExt['uid'] = [(Cookie.read('S[MEMBER]').split('-')[0])];
			//set tvc
			if(!Cookie.read('tvc')){
				//EcJS.writeCookie('tvc', new Date().getTime(), {duration:1});
				var date = new Date().getTime() + 86400000;
				var nd = new Date(date);
				nd.setHours(0);nd.setMinutes(0);nd.setSeconds(0);
				document.cookie = 'tvc=' + new Date().getTime() + '; expire=' + new Date(nd).toGMTString();
			}
			dataExt['tvc'] = [Cookie.read('tvc')];

			
			var flag = false,
				str = '',
				s = '';
			for (var i in dataExt){
				if( dataExt[i].length ){
					s += i + '=' + dataExt[i].join('|') + ';';
					flag = true;
				}
			}

			var einfo = EcJS.getInfoData('einfo');
			var cinfo = EcJS.getInfoData('cinfo');

			if( einfo.length>1 || cinfo.length>1 )
				flag = true;

			if( flag ){
				s = decodeURIComponent(s);
				str += '&ext=' + s + einfo + cinfo;
			}
			return str;
		},
		$regAction: function() {
			var reg_num = "reg_num";
			var value = EcJS.getCookie(reg_num);
			if(value != null) {
				value++;
			} else {
				value = 1;
			}
			EcJS.setCookie(reg_num, value);
			this.send('&sregc=1');
		},
		$setSiteId: function(siteId) {
			if(siteId.toString().length && !Cookie.read('siteid')){
				siteid = siteId;
				Cookie.write('siteid', siteid);
			}
			siteId = siteId ? siteId : '';
			dataStr += '&ssi=' + siteId;
		},
		$setTencent: function(foreid){
			if(foreid.toString().length && !Cookie.read('foreid')){
				Cookie.write('foreid', foreid);
			}
			foreid = foreid||'';
			dataStr += '&r2=' + foreid;
		},
		$setCommon: function(pageType, pageId, userName, userId, userIp, ver) {
			//set global
			uip = userIp;

			pageType = pageType || '';
			pageId = pageId || '';
			ver = ver || '';
			dataStr += '&pc=' + pageType + '&uid=' + userId + '&svr=' + ver + '&from=tx'; 
			if(url_page.indexOf('product-')!= -1 && pageId == ''){
				pageId = $$("input[name^=goods[goods_id]").length ? $$("input[name^=goods[goods_id]")[0].get('value') : '';
			}
			switch( pageType ){
				case 'member_ajaxAddFav':
					dataExt['shopcart'] = [];
					dataExt['qu'] = [];
					dataExt['fav'] = [pageId];
					break;
				case '485-addGoodsToCart':
					dataExt['shopcart'] = [pageId];
					dataExt['qu'] = [Cookie.read('acqu') || 1];
					Cookie.dispose('acqu');
					break;
				case '485-goodsdetail':
					ptype = '485-goodsdetail';
					break;
				case '485-ordercreate':
					ptype = '485-ordercreate';
					break;
				case '485-orderPayResult':
					ptype = '485-orderPayResult';
					break;
				case 'paycenter_order':
					ptype = 'paycenter_order';
					break;
			}

			var arr = ['&spty=','&spi=','&sun=','&sui=',"&svip=","&ssv="];
			for (var i = arguments.length - 1; i >= 0; i--) {
				if( arguments[i] ){
					if( arguments[i] instanceof Array && arguments[i].length>1 ){
						arr[i] += arguments[i].join('|');
					}
					else arr[i] += arguments[i];
				}
				else arr[i] = '';
			};
			dataStr += arr.join('');
		},
		$setProductInfo: function(prid, cid, brid, price){
			var arr = ['&prid=','&cid=','&brid=','&price='];
			for (var i = arguments.length - 1; i >= 0; i--) {
				if( arguments[i] ){
					if( arguments[i] instanceof Array && arguments[i].length>1 ){
						arr[i] += arguments[i].join('|');
					}
					else arr[i] += arguments[i];
				}
				else arr[i] = '';
			};
			dataStr += arr.join('');
		},
		_logConversion: function() {
			if( !dataList.length ){
				this.send('qq');
			}else
				this.send();
		},
		_logData: function() {
			function trim(i) {
				return i.replace(/(^[\s]*)|([\s]*$)/g, "");
			}
			function contain(from, item) {
				var flag = false;
				if(from.length < 1) return false;
				for(var i = 0; i < from.length; i++) {
					if(from[i].replace(/(^[\s]*)|([\s]*$)/g, "") === item) {
						flag = true;
					}
				}
				return flag;
			}
			try {
				var arr = [],
					k = [];
				for(var i = 0, j = dataList.length; i < j; i++) {
					var temp = dataList[i],
						dt = data[temp];
					if(contain(k, trim(temp))) {
						for(var h = 0; h < arr.length; h++) {
							if(arr[h].indexOf(trim(temp)) != -1) {
								arr[h] += ('_' + dt);
							}
						}
					} else {
						dt && arr.push(temp + "=" + dt);
					}
					k.push(temp);
				}
				var param = arr.join("&");
				this.send('qq',param);
			} catch(e) {}
			//下单页埋商品数据
			if(ptype == '485-ordercreate'){
				var _oid = dataExt.oid.toString(),
					_buy = dataExt.buy.toString(),
					_qu = dataExt.qu.toString(),
					_price = dataExt.price.toString(),
					_order = new Array(_oid, _buy, _qu, _price).join('|'),
					_oinfo = [];
				if(!!Cookie.read('rnf')){
					_oinfo = Cookie.read('rnf').split('#');	
					var oids = [];
					Array.each(_oinfo, function(item){
						oids.push(item.split('|')[0]);
					});
					if(oids.indexOf(_oid) == -1){
						_oinfo.push(_order);
						_oinfo = _oinfo.join('#').toString();
						Cookie.write('rnf', _oinfo);
					}
				}
				else{
					_oinfo = _order; 
					Cookie.write('rnf', _oinfo.toString());
				}
			}
		},
		_clearCommonData: function() {
			dataStr = "";
		}
	};

	function Tacker() {
		var _this = this,
			_bind = bind(this);
		_this.push = function() {
			for(var param = arguments, i = 0, j = 0; i < param['length']; i++) {
				try {
					if(typeof param[i] === "function") {
						param[i]();
					} else {
						var temp = "",
							key = param[i][0];
						obj = new EcData();
						obj[key].apply(obj, param[i].slice(1))
					}
				} catch(e) {
					j++
				}
			}
			return j;
		}
	};

	Element.implement({
		getID: function(type){
			var d = this;
			return d.get('href').split(type+'-')[1].split('.html')[0];
		}
	});

	var foreid, siteid, uip,
	uid = !!Cookie.read('S[MEMBER]') ? Cookie.read('S[MEMBER]').split('-')[0] : null,
	usvr = $$("meta[name=generator]").length ? $$("meta[name=generator]")[0].get('content').substring(7): '',
	uname = Cookie.read('S[UNAME]');



	var tacker = new Tacker();
	window['_ecq'] = tacker;

	

	url_page = location.href.toLowerCase().split(document.domain)[1].split('/');
	url_page = url_page[url_page.length-1].split('.html')[0];
	if(url_page.trim().length){
		if(url_page.indexOf('product') != -1){//商品详情页
			$$(".btn-fav").addEvent('click', function(){
				if($(this).getParent('li').hasClass('star-off')){
					Cookie.write('txac', 'addfav');
					var tacker = new Tacker();
					window['_ecq'] = tacker;
				    ('undefined' != typeof _ecq) || (window['_ecq'] = []);
				    _ecq.push(['$setSiteId', Cookie.read('siteid')]);
				    _ecq.push(['$setTencent', Cookie.read('foreid')]);
				    _ecq.push(['$setCommon', 'member_ajaxAddFav', uprid, uname, uid, uip, usvr]);
				    _ecq.push(['_logData']);
					_ecq.push(['_clearCommonData']);
				}
			});
			$$(".btn-buy").addEvent('mouseover', function(){
				$(this).addEvent('click', function(){
					var goodnum = document.getElementsByName("goods[num]").length ? document.getElementsByName("goods[num]")[0].value : 1;
					Cookie.write('acqu', goodnum);
					Cookie.write('txac', 'addcart');
				})
			});

		}
	}



})();