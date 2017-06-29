<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
  <head>    
    <title>登录页面</title>
    <style>
    table {
	border: 1px blue solid;
	margin: auto;
	width: 30%;
    }
    th,td {
	    text-align:center;
    }
    </style>
  </head>
  
  <body alink="#FF0000" vlink="#000000" link="#0000FF">
    <br/><br/>
    <center><h1><font color="#0066CC" face="微软雅黑" size="+6">华育国际未央校区管理系统</font></h1></center>
    <br/><br/><br/><br/><br/>
    <table >
        <form action="#" method="post">
        <tr>
            <td width="100"><br/><b>账号：</b><br/>&nbsp;</td>
            <td><br/><input type="text" name="账号名" required value="账号提示值" />&nbsp;&nbsp;<a href="#">忘记账号</a>
            <br/>&nbsp;</td>
        </tr>
        <tr>
            <td><br/><b>密码：</b><br/>&nbsp;</td>
            <td><br/><input type="password" name="密码名" required value="密码提示值" >&nbsp;&nbsp;<a href="#">忘记密码</a>
            <br/>&nbsp;</td>
        </tr>
        <tr>
        	<td colspan="2" align="center">
	        
	        	<input type="radio" name="roles" value="4" ${param.roles=="4"?"checked":"" } /> 学生&nbsp;
	            <input type="radio" name="roles" value="3" ${param.roles=="3"?"checked":"" }/> 教师&nbsp;
	            <input type="radio" name="roles" value="2" ${param.roles=="2"?"checked":"" }/> 班主任
            </td>
        </tr>
        <tr>
          <td><br/>
            <a href="验证码位置">
              <img src="验证码位置"/><br/><font color="red" size="-3">点击图片刷新</font>
            </a>
          </td>
          <td><br/>
            <input type="text" name="img"/><br/>&nbsp;
          </td>
        </tr>
        <tr>
            <td colspan="2" align="center"><br/>
            <input type="hidden" name="method" value="checkOne"/>
            <input type="submit" value="  登  录  "/>     
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="reset" value="  重  置  "/><br/>&nbsp;</td>
        </tr>
        <tr>
          <td colspan="2"><br/>错误提示位置<br/>&nbsp;</td>
        </tr>
        </form>
    </table>

  </body>
</html>
