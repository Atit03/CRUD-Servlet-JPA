<%@page import="com.jsp.dto.Course"%>
<%@page import="com.jsp.service.CourseService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Course</title>
<%@ include file="bootstrap.jsp"%>
</head>
<body class="bg-light">
	<%@ include file="navbar-course.jsp"%>
	
	<div class="container p-5">
		<div class="card">
			<div class="card-body">
				<p class="text-center fs-2">Course Details</p>
				<table class="table text-center">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Subject</th>
							<th scope="col">Duration</th>
							<th scope="col">Course Type</th>
							<th scope="col">Teacher's Status</th>
						</tr>
					</thead>
					<tbody>
						<%
						int id = Integer.parseInt(request.getParameter("id"));
							CourseService courseService = new CourseService();
							Course c = courseService.getCourseById(id);
						%>
						<tr>
							<th scope="row"><%=c.getId()%></th>
							<td><%=c.getSubject()%></td>
							<td><%=c.getDuration()%></td>
							<td><%=c.getType()%></td>
							<td><%=c.getTeacher_staus()%></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
</body>
</html>