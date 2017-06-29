<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <title>成绩查询</title>
    <style type="text/css">
    	table{
    		border: 1px #0ff solid;
    		width: 60%;
    		margin: auto;
    	}
    	td{
    	border: 1px #0ff solid;
    	}
    </style>
  </head>
  	<c:if test="${empty FINDALL }">
  		<c:redirect url="sco">
  			<c:param name="method" value="find"></c:param>
  		</c:redirect>
  	</c:if>
  	
  <body>
   	<table>
   		<tr>
			<td colspan="4">
				<a href="add.jsp">添加成绩</a>
				<form align="center">
					<input type="text" name="dw"/>
					<input type="submit" value="查询"/>
				</form>
			</td>   		
   		</tr>
   		<tr>
   			<th>成绩编号</th>
   			<th>科目</th>
   			<th>成绩</th>
   			<th>学生姓名</th>
   		</tr>
   		<c:forEach var="sco" items="${FINDALL }" varStatus="k">
   			<tr align="center">
	   			<td>${k.count }</td>
	   			<td>${sco.sub.subName }</td>
	   			<td>${sco.scoVal }</td>
	   			<td>${sco.stu.stuName }</td>
   			</tr>
   		</c:forEach>
   		
   	</table>
  </body>
</html>
