<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>

<title>学生查询页面</title>

<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
<link rel="stylesheet" href="http://www.bootcss.com/p/buttons/css/buttons.css">  

<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript" src="jar/jquery-1.7.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("tr:first").css("backgroundColor", "#09F");
		$("tr:first").css("color", "white");
		$("tr:odd:not(tr:first)").css("backgroundColor", "");
		$("tr:even:not(tr:first)").css("backgroundColor", "#CCC");
	});

	function deleteStu(stuId) {
		if (confirm("确定要删除么？")) {
			location.href = "StuServlet?method=delete&stuId=" + stuId;
		}
	}
</script>

</head>
<c:if test="${empty STUINFO }">
	<c:redirect url="StuServlet">
		<c:param name="method" value="findAll"></c:param>
		<%-- <c:param name="page" value="1"></c:param> --%>
	</c:redirect>
</c:if>
<body>
	<table class="table table-striped" align="center">
		<caption>
		  <form action="StuServlet" method="post">
		    <input type="text" name="str" class="TEXT button-glow button-border button-rounded button-primary" style="width: 320px;"/>
		    <input type="hidden" name="method" value="search"/>
		    <input type="hidden" name="page" value="1"/>
		    <input type="submit" value="搜索一下" class="button button-glow button-border button-rounded button-primary"/>
		  </form>
			<a href="stuReg.jsp"><b>注册新用户</b> </a>
		</caption>
		<tr>
			<th>编号</th>
			<th>学号</th>
			<th>姓名</th>
			<th>性别</th>
			<th>籍贯</th>
			<th>民族</th>
			<th>年龄</th>
			<th>电话</th>
			<th>班级</th>
			<th>操作</th>
		</tr>
		<c:forEach var="si" items="${STUINFO }" varStatus="s">
			<tr>
				<td>${s.count }</td>
				<td>${si.stuNum }</td>
				<td>${si.stuName }</td>
				<td>${si.stuSex }</td>
				<td>${si.stuOri }</td>
				<td>${si.stuNat }</td>
				<td>${si.stuAge }</td>
				<td>${si.stuPhone }</td>
				<td>${si.classInfo.graInfo.graName }.${si.classInfo.className }</td>
				<td><a href="javascript:deleteStu(${si.stuId })">删除</a> <a
					href="StuServlet?method=findById&stuId=${si.stuId }">修改</a></td>
			</tr>
		</c:forEach>
		
		<%-- <tr>
			<td colspan="10" align="right">
				<c:forEach var="i" begin="1" end="${PAGE }" step="1">
					<c:choose>
						<c:when test="${param.page==i }">
							${i }&nbsp;
						</c:when>
						<c:otherwise>
							<a href="StuServlet?method=findAll&page=${i }">${i }</a>&nbsp;
						</c:otherwise>
					</c:choose>	
				</c:forEach>
			</td>
		</tr> --%>
	</table>
</body>
</html>
