<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<title>年级信息</title>

<link rel="stylesheet"
	href="http://static.runoob.com/assets/js/jquery-treeview/jquery.treeview.css" />
<link rel="stylesheet"
	href="http://static.runoob.com/assets/js/jquery-treeview/screen.css" />

<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script
	src="http://static.runoob.com/assets/js/jquery-treeview/jquery.cookie.js"></script>
<script
	src="http://static.runoob.com/assets/js/jquery-treeview/jquery.treeview.js"
	type="text/javascript"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#browser").treeview({
			toggle : function() {
				console.log("%s was toggled.", $(this).find(">span").text());
			}
		});
	});
</script>
</head>
<c:if test="${empty GRALIST }">
	<c:redirect url="GraServlet">
		<c:param name="method" value="findAll"></c:param>
	</c:redirect>
</c:if>
<body>
	<div>
		<ul id="browser" class="filetree treeview-famfamfam">
			<li><span class="folder">所有班级</span>
				<ul>
					<c:forEach var="gi" items="${GRALIST }"年级信息容器名>
						<li class="closed"><span class="folder">${gi.graName }年级名</span>
							<ul>
								<c:forEach var="ci" items="${gi.claSet }"年级信息的班级集合>
									<li class="closed"><span class="folder">${ci.className }班级名</span>
										<ul>
											<c:forEach var="si" items="${ci.stuSet }"班级信息的学生集合>
												<li><span class="file">${si.stuName }学生名</span></li>
											</c:forEach>
										</ul></li>
								</c:forEach>
							</ul></li>
					</c:forEach>
				</ul></li>
		</ul>
	</div>
</body>
</html>
