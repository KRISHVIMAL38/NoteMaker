<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NoteTaker : Edit Page</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp" %><br><br>
		<h1>Edit your note</h1>
		
		<%
			int noteId=Integer.parseInt(request.getParameter("note_id").trim());
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			Note note=s.get(Note.class, noteId);
		
		%>
		
		<div class="container">
			<div class="mb-3">
				<form action="UpdateServlet" method="post">
				
					<input value=<%=note.getId() %> name="noteId" type="hidden"/>
					<br>
				
					<label for="title" class="form-label">Note Title</label>
				  <input type="text" class="form-control" id="title" name="title"
				  placeholder="Enter title of the note" 
				  value="<%=note.getTitle() %>"
				  required>
				</div>
				
				<div class="mb-3">
				  <label for="content" class="form-label">Note Content</label>
				  <textarea id="content" placeholder="Enter content of the note" 
				  class="form-control" style="height:200px;" required name="content"
				  ><%=note.getContent() %>
				  
				  </textarea>
				  <br>
				 
				  <div class="col-12 text-center">
    				<button type="submit" class="btn btn-success">Update Note</button>
  				  </div>  
				</form>
			</div>
		</div>
	</div>
</body>
</html>