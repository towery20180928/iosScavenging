<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>下载</title>
<script type="text/javascript" src="https://raw.githubusercontent.com/towery20180928/iosScavenging/master/jquery-1.8.3.min.js"></script>
<style>
	*{margin:0 auto}
	body{background-color:#cdcdcd}
	h1{color:#8a8a8a;margin:0 auto;font-size:4em}
	div{width:1000px;height:500px;margin-top:10%;}
</style>
</head>
<body>
	<button type="button" onclick="alert('你好，世界!')">点我!</button>
	<div align="center">
		<img alt="#" src="https://raw.githubusercontent.com/towery20180928/iosScavenging/master/tanhao.png">
		<h1>若当前页面没有跳转</h1>
		<h1>请点击右上角选择在浏览器中打开</h1>
	</div>
</body>
</html>
<script type="text/javascript">
/*  
 * 智能机浏览器版本信息:  
 *  
 */  
var browser = {  
    versions: function() {  
        var u = navigator.userAgent, app = navigator.appVersion;  
        return {//移动终端浏览器版本信息  
            trident: u.indexOf('Trident') > -1, //IE内核  
            presto: u.indexOf('Presto') > -1, //opera内核  
            webKit: u.indexOf('AppleWebKit') > -1, //苹果、谷歌内核  
            gecko: u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1, //火狐内核  
            mobile: !!u.match(/AppleWebKit.*Mobile.*/) || !!u.match(/AppleWebKit/), //是否为移动终端  
            ios: !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), //ios终端  
            android: u.indexOf('Android') > -1 || u.indexOf('Linux') > -1, //android终端或者uc浏览器  
            iPhone: u.indexOf('iPhone') > -1 || u.indexOf('Mac') > -1, //是否为iPhone或者QQHD浏览器  
            iPad: u.indexOf('iPad') > -1, //是否iPad  
            webApp: u.indexOf('Safari') == -1 //是否web应该程序，没有头部与底部  
        };  
    }(),  
    language: (navigator.browserLanguage || navigator.language).toLowerCase()  
}  

if (browser.versions.ios || browser.versions.iPhone || browser.versions.iPad) {  
// TODO 此处写ios的下载地址                
window.location="itms-services:///?action=download-manifest&url=https://raw.githubusercontent.com/towery20180928/iosScavenging/master/test.plist";  
}  
else if (browser.versions.android) {   
// 此处写Andoird 的下载地址  
 window.location="http://103.83.44.134/aj_portal/download/browser/V6.apk";  
}  

//document.writeln("语言版本: " + browser.language);  
//document.writeln(" 是否为移动终端: " + browser.versions.mobile);  
//document.writeln(" ios终端: " + browser.versions.ios);  
//document.writeln(" android终端: " + browser.versions.android);  
//document.writeln(" 是否为iPhone: " + browser.versions.iPhone);  
//document.writeln(" 是否iPad: " + browser.versions.iPad);  
//document.writeln(navigator.userAgent);
</script>
