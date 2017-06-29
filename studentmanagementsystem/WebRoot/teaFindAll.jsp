<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>

<title>教师查询页面</title>

<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://www.bootcss.com/p/buttons/css/buttons.css">

<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript" src="jar/jquery-1.7.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("tr:first").css("backgroundColor", "#09F");
		$("tr:first").css("color", "white");
		$("tr:odd:not(tr:first)").css("backgroundColor", "");
		$("tr:even:not(tr:first)").css("backgroundColor", "#CCC");
	});

	function deleteId(teaId) {
		if (confirm("确定要删除么")) {
			location.href = "TeaServlet?method=delete&teaId=" + teaId;
		}
	}
</script>
</head>
<c:if test="${empty TEAINFO }">
	<c:redirect url="TeaServlet">
		<c:param name="method" value="findAll"></c:param>
	</c:redirect>
</c:if>
<body>
	<table class="table table-striped" align="center">
		<caption>
			<form action="TeaServlet" method="post">
				<input type="text" name="str"
					class="TEXT button-glow button-border button-rounded button-primary"
					style="width: 320px;" /> 
					<input type="hidden" name="method" value="search" /> 
					<input type="submit" value="搜索一下"
					class="button button-glow button-border button-rounded button-primary" />
			</form>
			<a href="teaReg.jsp"><b>注册新用户</b> </a>
		</caption>
		<tr>
			<th>编号</th>
			<th>账号</th>
			<th>姓名</th>
			<th>性别</th>
			<th>籍贯</th>
			<th>民族</th>
			<th>年龄</th>
			<th>电话</th>
			<th>学历</th>
			<th>科目</th>
			<th>角色</th>
			<th>操作</th>
		</tr>
		<c:forEach var="ti" items="${TEAINFO }" varStatus="t">
			<tr>
				<td>${t.count }</td>
				<td>${ti.teaNum }</td>
				<td>${ti.teaName }</td>
				<td>${ti.teaSex }</td>
				<td>${ti.teaOri }</td>
				<td>${ti.teaNat }</td>
				<td>${ti.teaAge }</td>
				<td>${ti.teaPhone }</td>
				<td>${ti.teaEdu }</td>
				<td>${ti.subInfo.subName }</td>
				<td>${ti.roleInfo.roleName }</td>
				<td><a href="javascript:deleteId(${ti.teaId })">删除</a> <a
					href="TeaServlet?method=findById&teaId=${ti.teaId }">修改</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
