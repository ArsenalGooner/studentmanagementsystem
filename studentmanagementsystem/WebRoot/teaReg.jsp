<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
<head>

<title>教师注册页面</title>
<script>
    var a1 = false;
	var a2 = false;
	var a3 = false;
	var a4 = false;
	var a6 = false;
	var a7 = false;
	var a8 = false;
	var a9 = false;
    function checkaccount(){
		var name = document.getElementById("t1").value;
		var nn = /^[0-9]{4}$/;
		var ee = nn.test(name);
		if(ee){
			document.getElementById("l1").innerHTML = "<font color='green' size='-1'>账号正确</font>";
			a1 = true;
			}
		else{
			document.getElementById("l1").innerHTML = "<font color='red' size='-2'>账号错误</font>";
			a1 = false;
			}
		}
	
	function password1(){
		var name1 = document.getElementById("t2").value;
		var nn = /^[a-zA-Z0-9]{8,16}$/;
		var ee = nn.test(name1);
		if(ee){
			document.getElementById("l2").innerHTML = "<font color='green' size='-1'>密码可以使用</font>";
			a2 = true;
			}
		else{
			document.getElementById("l2").innerHTML = "<font color='red' size='-2'>密码包含大小写字母和数字的组合，不能使用特殊字符，长度在8-16之间</font>";
			a2 = false;
			}
		}
		
	function password2(){
		var name1 = document.getElementById("t2").value;
		var name2 = document.getElementById("t3").value;
		if(name1==name2){
			document.getElementById("l3").innerHTML = "<font color='green' size='-1'>密码一致</font>";
			a3 = true;
			}
		else{
			document.getElementById("l3").innerHTML = "<font color='red' size='-2'>密码不一致</font>";
			a3 = false;
			}
		}
		
	function checkname(){
		var name = document.getElementById("t4").value;
		var nn = /^[\u4e00-\u9fa5]{2,}$/;
		var ee = nn.test(name);
		if(ee){
			document.getElementById("l4").innerHTML = "<font color='green' size='-1'>姓名可以使用</font>";
			a4 = true;
			}
		else{
			document.getElementById("l4").innerHTML = "<font color='red' size='-2'>姓名不可以使用</font>";
			a4 = false;
			}
		}
	
	function checktel(){
		var name = document.getElementById("t6").value;
		var nn = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
		var ee = nn.test(name);
		if(ee){
			document.getElementById("l6").innerHTML = "<font color='green' size='-1'>手机号码正确</font>";
			a6 = true;
			}
		else{
			document.getElementById("l6").innerHTML = "<font color='red' size='-2'>手机号码错误</font>";
			a6 = false;
			}
		}
		
	function checksub(){
		var name = document.getElementById("t7").value;
		var nn = /^[0-9]{0,}$/;
		var ee = nn.test(name);
		if(ee){
			document.getElementById("l7").innerHTML = "<font color='green' size='-1'>科目编号正确</font>";
			a7 = true;
			}
		else{
			document.getElementById("l7").innerHTML = "<font color='red' size='-2'>科目编号错误</font>";
			a7 = false;
			}
		}
		
	function checkrole(){
		var name = document.getElementById("t9").value;
		var nn = /^[0-9]{0,}$/;
		var ee = nn.test(name);
		if(ee){
			document.getElementById("l9").innerHTML = "<font color='green' size='-1'>角色编号正确</font>";
			a9 = true;
			}
		else{
			document.getElementById("l9").innerHTML = "<font color='red' size='-2'>角色编号错误</font>";
			a9 = false;
			}
		}

    function checkage(){
		var name = document.getElementById("t8").value;
		var nn = /^[0-9]{0,}$/;
		var ee = nn.test(name);
		if(ee){
			document.getElementById("l8").innerHTML = "<font color='green' size='-1'>年龄正确</font>";
			a8 = true;
			}
		else{
			document.getElementById("l8").innerHTML = "<font color='red' size='-2'>年龄错误</font>";
			a8 = false;
			}
		}
		
	function check(){
		if(a1&&a2&&a3&&a4&&a6&&a7&&a8&&a9){
			return true;
			}
		else{
			return false;
			}
		}
</script>
<style type="text/css">
table {
	width: 60%;
	margin: auto;
	border: 1px solid #09F;
}

th,td {
	border: 1px solid #09F;
}
</style>
</head>

<body>
<body bgcolor="#FFFFFF">
	<form action="TeaServlet" method="post">
		<table>
			<thead>
				<tr>
					<th bgcolor="#0099FF" colspan="2"><font color="#FFFFFF"
						size="+3" face="微软雅黑"><b>教师注册</b>
					</font>
					</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td width="35%"><b>账号：</b>
					</td>
					<td width="65%"><input type="text" name="teaNum" required
						placeholder="请输入用户名" id="t1" onBlur="checkaccount()" /><label
						id="l1">&nbsp;</label></td>
				</tr>
				<tr>
					<td><b>性别：</b>
					</td>
					<td><input type="radio" name="teaSex" value="男"
						checked="checked" />男 <input type="radio" name="tSex" value="女" />女</td>
				</tr>
				<tr>
					<td><b>密码（至少8位）：</b><br />
					<font size="-3">请输入密码，区分大小写。</font>
					</td>
					<td><input type="password" name="teaPass" required
						placeholder="请输入密码" id="t2" onBlur="password1()" /><label id="l2">&nbsp;</label>
					</td>
				</tr>
				<tr>
					<td><b>确认密码（至少8位）：</b><br />
					<font size="-3">请再输入一遍密码。</font>
					</td>
					<td><input type="password" name="teaPass" required
						placeholder="请再输入密码" id="t3" onBlur="password2()" /><label id="l3">&nbsp;</label>
					</td>
				</tr>
				<tr>
					<td><b>真实姓名：</b>
					</td>
					<td><input type="text" name="teaName" required
						placeholder="请输入真实姓名" id="t4" onBlur="checkname()" /><label
						id="l4">&nbsp;</label>
					</td>
				</tr>
				<tr>
					<td><b>年龄：</b>
					</td>
					<td><input type="text" name="teaAge" required
						placeholder="请输入年龄" id="t8" onBlur="checkage()" /><label id="l8">&nbsp;</label>
					</td>
				</tr>
				<tr>
					<td><b>地区：</b>
					</td>
					<td><select name="teaOri">
							<option value="北京" selected="selected" />北京
							<option value="内蒙古" />内蒙古
							<option value="黑龙江" />黑龙江
							<option value="吉林" />吉林
							<option value="辽宁" />辽宁
							<option value="山东" />山东
							<option value="河北" />河北
							<option value="河南" />河南
							<option value="湖南" />湖南
							<option value="湖北" />湖北
							<option value="甘肃 " />甘肃
							<option value="青海 " />青海
							<option value="西藏" />西藏
							<option value="新疆" />新疆
							<option value="云南" />云南
							<option value="四川" />四川
							<option value="广州" />广州
							<option value="山西" />山西
							<option value="福建" />福建
							<option value="江苏" />江苏
							<option value="江西" />江西
							<option value="陕西" />陕西
					</select>
					</td>
				</tr>
				<tr>
					<td><b>职业：</b>
					</td>
					<td><select name="teaJob">
							<option value="学生" />学生
							<option value="教师" selected="selected" />教师
					</select>
					</td>
				</tr>
				<tr>
					<td><b>学历：</b>
					</td>
					<td><select name="teaEdu">
							<option value="本科" />本科
							<option value="研究生" />研究生
							<option value="博士" selected="selected" />博士
							<option value="博士后" />博士后
							<option value="专科" />专科
					</select>
					</td>
				</tr>
				<tr>
					<td><b>民族：</b>
					</td>
					<td><select name="teaNat">
							<option value="汉族" selected="selected" />汉族
							<option value="蒙族" />蒙族
							<option value="壮族" />壮族
							<option value="满族" />满族
							<option value="藏族" />藏族
							<option value="回族" />回族
							<option value="苗族" />苗族
							<option value="维吾尔族" />维吾尔族
					</select>
					</td>
				</tr>
				<tr>
					<td><b>手机号码：
					</td>
					<td><input type="tel" name="teaPhone" placeholder="请输入有效的手机号码"
						required id="t6" onBlur="checktel()" /><label id="l6">&nbsp;</label>
					</td>
				</tr>
				<tr>
					<td><b>科目编号：
					</td>
					<td><input type="tel" name="subId" placeholder="请输入科目编号"
						id="t7" onBlur="checksub()" /><label id="l7">&nbsp;</label>
					</td>
				</tr>
				<tr>
					<td><b>角色编号：
					</td>
					<td><input type="tel" name="roleId" placeholder="请输入角色编号"
						id="t9" onBlur="checkrole()" /><label id="l9">&nbsp;</label>
					</td>
				</tr>
			</tbody>
		</table>
		<br />
		<center>
			<input type="submit" value=" 提 交 " onClick="check()" />
			<input type="hidden" name="method" value="add" />
		</center>

	</form>
</body>
</html>
