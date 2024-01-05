
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="Description" content="Enter your description here"/>
<title>NoteTaker : Home Page</title>

<!-- FAVICON -->
<link rel="icon" type="image/png" href="images/favicon.png">

<!-- <!-- Bootstrap 5 CDN Links -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- Owl Carousel CSS Links -->
<link rel="stylesheet" href="css/owl/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl/owl.theme.default.min.css">

<!-- Custom File's Link -->
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="responsive.css">

</head>
<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="85">

     
    <br>
    <div class="container">
    	<%@include file="navbar.jsp" %>
    	<h1 class="text-center">This is home page</h1>
    	
    	<div class ="row my-auto">
    		<div class="col-5">
    			<div class="card">
    				<img src="pencil.png" class="img-fluid mx-auto"alt="This is iamge of pencil" style="max-width:400px;">
    			</div>
    		</div>
    		
    		<div class="col-6">
    			<div class="card pt-4">
    				<h1 class="text-primary mx-auto">Start taking your notes</h1>
    				<div class="container mt-4 text-center">
    					<button class="btn btn-outline-success text-centers">Start Here</button>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
</body>