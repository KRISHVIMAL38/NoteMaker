<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NoteTaker : Add Notes page</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp" %><br><br>
		<div class="container">
			<h1>Please your note detail</h1>
		</div>
		<br>
		<div class="container">
			<div class="mb-3">
				<form action="SaveNoteServlet" method="post">
					<label for="title" class="form-label">Note Title</label>
				  <input type="text" class="form-control" id="title" name="title"
				  placeholder="Enter title of the note" required>
				</div>
				
				<div class="mb-3">
				  <label for="content" class="form-label">Note Content</label>
				  <textarea id="content" placeholder="Enter content of the note" 
				  class="form-control" style="height:200px;" required name="content"></textarea>
				  <br>
				 
				  <div class="col-12 text-center">
    				<button type="submit" class="btn btn-primary">Add Note</button>
  				  </div>  
				</form>
			</div>
		</div>
		<br>
	</div>
	
</body>
</html>