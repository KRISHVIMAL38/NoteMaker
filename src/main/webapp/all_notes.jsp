<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NoteTaker : Show Notes page</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp" %><br><br>
		<h1 class="mx-auto text-center">This is all you notes</h1><br><br>
		
		<div class="row">
			<div class="col-12">
				<%
			Session s=FactoryProvider.getFactory().openSession();
			Query q=s.createQuery("from Note");
			List<Note>list=q.list();
			
			for(Note note:list){
				
				//This is very useful concept
				%>
				
				<div class="container mb-3 mx-auto">
					<div class="card p-3" style="width: 55rem;">
					  <div class="container text-center">
					  		<img class="card-img-top mx-auto" style="max-width:50px; " src="pencil.png" alt="Card image cap">
					  </div>
					  <div class="container text-center">
					  		<div class="card-body">
					    <h5 class="card-title"><%=note.getTitle() %></h5>
					    <p class="card-text">
					    	<%=note.getContent() %>
					    </p>
					    
					    <p style="color:green;">last updated date</p><p> <%=note.getAddedDate() %></p>
					   <div class="container text-center mt-4">
					   		 <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
					    	 <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
					   </div>
					  </div>
					  </div>
				</div>
				</div>
				
				<% 
				//we will create a card and put all the values here
					
				
			}
		%>
			</div>
		</div>
	</div>
</body>
</html>