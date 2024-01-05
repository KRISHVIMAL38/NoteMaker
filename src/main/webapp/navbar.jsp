<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Responsive Navbar</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        /* Add your custom styles here */
        body {
            padding-top: 56px; /* Adjust the body padding to avoid content being overlapped by the fixed navbar */
        }

        /* Optional: Add some custom styling to the navbar */
        .navbar-custom {
            background-color: #cbbeb5;
            color: #000000;
           
            font-size: 15px;
        }

		.nav-link {
            margin-left:10px;
            margin-right:10px;
        }

        .navbar-custom a {
            color: #000000;
            font-size: 17px;
        }
        
        .navbar-custom a:hover {
			 background-color: #00ffff;
             color:white;
        }
    </style>
</head>

<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-md  fixed-top navbar-custom" style="color:black;">
        <a class="navbar-brand" href="#">Your Logo</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mx-auto justify-content-center" style="font-size: 5px; color:black;">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="add_notes.jsp">Add Notes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="all_notes.jsp">Show Notes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Optional: Add your content here -->
    

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>

</html>
