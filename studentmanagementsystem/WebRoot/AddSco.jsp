<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
  <head>
    
    <title>My JSP 'add.jsp' starting page</title>
    <style type="text/css">
    	table{
    		border: 1px #0ff solid;
    		width: 30%;
    		margin: auto;
	    	}
	    	td{
	    	border: 1px #0ff solid;
	    	}
    </style>
  </head>
  
  <body>
    <form action="sco?method=add" method="post">
    	<table>
    		<tr>
    			<th>科目编号：</th>
    			<td>
    				<input type="number" name="subid"/>
    			</td>
    		</tr>
    		<tr>
    			<th>成绩：</th>
    			<td>
    				<input type="number" name="scoval"/>
    			</td>
    		</tr>
    		<tr>
    			<th>学生学号：</th>
    			<td>
    				<input type="number" name="stuid"/>
    			</td>
    		</tr>
    		<tr>
    			
    			<td colspan="2" align="center">
    				<input type="submit" value="添加"/>
    			</td>
    		</tr>
    		
    	</table>
    </form>
  </body>
</html>
