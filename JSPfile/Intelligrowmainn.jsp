<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lugrasimo&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lugrasimo&display=swap" rel="stylesheet">
    <title>IntelliGrow</title>
    <link rel="stylesheet" href="intellistyle.css">
</head>
<body>
    <div class="headingback">
        <img src="logo.jpeg" alt="Logo" width="13%" height="100%" class="logo">
        <p class="heading">IntelliGrow</p>
    </div>
    <div class="navbar">
        <a href="#" class="menu">Home</a>
        <a href="Growingtips.html" class="menu">Growing Tips</a>
        <a href="#about" class="menu">About</a>
        <a href="#container2" class="menu">FAQs</a>
        <div class="butono">
        <form action="Result" method="post">
        <p style="margin-top: 0%;float: right; padding: 0%; font-weight: bold;">Hey! <button type="submit" class="Account">Account</button> <input type="text" name="hey" id="hey" class="hey" value=<%=(String)request.getAttribute("todo")%> readonly>
        </p>
        </form>
        </div>
    </div>
    <div class="main">
        <h3 class="font">Plant Trees, Plant Future</h3>
        <img src="front.jpeg" alt="picture" class="background-image">
    </div>
    <div class="space">
        <p>COMMON INDORE PLANTS</p>
    </div>
    <div class="photos">
        <section>
        	<a href="https://en.wikipedia.org/wiki/Ocimum_tenuiflorum" target="_blank"><img src="image1.jpeg" alt="" srcset="" width="24.7%" height="300px" class="images"></a>
            <a href="https://en.wikipedia.org/wiki/Hibiscus_rosa-sinensis" target="_blank"><img src="image2.jpeg" alt="" srcset="" width="24.7%" height="300px" class="images"></a>
            <a href="https://en.wikipedia.org/wiki/Bellis_perennis" target="_blank"><img src="image3.jpeg" alt="" srcset="" width="24.7%" height="300px" class="images"></a>
            <a href="https://en.wikipedia.org/wiki/Tagetes" target="_blank"><img src="marigold.jpeg" alt="" srcset="" width="24.7%" height="300px" class="images"></a>
            <a href="https://en.wikipedia.org/wiki/Money_plant" target="_blank"><img src="moneyplant.jpeg" alt="" srcset="" width="24.7%" height="300px" class="images"></a>
            <a href="https://simple.wikipedia.org/wiki/Rose" target="_blank"><img src="rose.jpeg" alt="" srcset="" width="24.7%" height="300px" class="images"></a>
            <a href="https://en.wikipedia.org/wiki/Aglaonema" target="_blank"><img src="image7.jpg" alt="" srcset="" width="24.7%" height="300px" class="images"></a>
            <a href="https://en.wikipedia.org/wiki/Helianthus" target="_blank"><img src="sunflower.jpeg" alt="" srcset="" width="24.7%" height="300px" class="images"></a>
        </section>
    </div>
    <div class="container">
    <h2>Plant Information</h2>
    <form action="PlantingServlet" method="post">
    	<label for="username">UserName:</label>
    	<input type="text" name="user" id="user" value=<%=(String)request.getAttribute("todo")%> readonly>
        <label for="plantType">Plant Type:</label>
        <select id="plantType" name="plantType" required>
            <option value="">Select Plant Type</option>
            <option value="Rose">Rose</option>
            <option value="Tulip">Tulip</option>
            <option value="Sunflower">Sunflower</option>
            <option value="Tulsi">Tulsi</option>
            <option value="MoneyPlant">MoneyPlant</option>
            <!-- Add more plant options as needed -->
        </select>

        <label for="plantingDate">Planting Date:</label>
        <input type="date" id="plantingDate" name="plantingDate" required>
        <button id="homesub">Submit</button>
    </form>
    </div>
    <div id="about">
        <h1 style="font-size: 50px;">About us</h1>
        <p style="text-align: justify;">Welcome to our innovative plant monitoring website, where technology meets nature to ensure the 
			health and well-being of your beloved plants. Our platform is designed to assist plant enthusiasts, whether you're a 
			seasoned gardener or just starting your green journey, in cultivating thriving and vibrant plants.At Intelligrow, 
			we understand that every plant has unique needs. That's why we've developed a user-friendly and intelligent system that 
			empowers you to provide the best care for your plants. Our website allows you to effortlessly monitor and nurture your 
			plants by inputting key details such as plant names, planting times, temperature preferences, and more.Our mission at 
			Intelligrow is to bridge the gap between technology and nature. We believe that by harnessing the power of data and smart 
			systems, we can create an ecosystem where plants thrive and bring joy to people's lives. Our team is dedicated to supporting 
			your plant care journey, from planting the seeds to watching your green companions flourish.Join our community of plant 
			enthusiasts who are passionate about creating lush and beautiful spaces while nurturing the environment around us.

			Begin your journey toward healthier and happier plants today. Sign up and start monitoring your plants with us!</p>
       
        <div class="image-sec">
            <div class="image">
                <img src="nidhi.jpeg" alt="" srcset="" width="100%" height="150px" class="icon">
                <p style="text-align: center;">Nidhi</p>
                <p style="font-size: smaller;">nidhi.chaudhary6666@gmail.com</p>
            </div>
            <div class="image">
                <img src="mansi.jpeg" alt="" srcset="" width="100%" height="150px" class="icon">
                <p style="text-align: center;">Mansi Varshney</p>
                <p style="font-size: smaller;">mansigupta94124@gmail.com</p>
            </div>
            <div class="image">
                <img src="raksha.jpeg" alt="" srcset="" width="100%" height="150px" class="icon">
                <p style="text-align: center;">Raksha Awasthi</p>
                <p style="font-size: smaller;">awasthiraksha5@gmail.com</p>
            </div>
        </div>
    </div>
    <div id="container2">
        <h1>FAQ</h1>
        <div class="faq">
            <div class="question">What is the Plant Monitoring System?</div>
            <div class="answer">The Plant Monitoring System is a web application that allows users to track and monitor the health and growth of their plants remotely.</div>
        </div>
        <div class="faq">
            <div class="question">How does it work?</div>
            <div class="answer">Users can enter data such as plantation date, temperature, and typeof plant. The system then provides real-time updates and alerts to users through a user-friendly interface.</div>
        </div>
        <div class="faq">
            <div class="question">Can I monitor multiple plants at once?</div>
            <div class="answer">Yes, the Plant Monitoring System supports monitoring multiple plants simultaneously. Users can add and manage multiple plants from their account dashboard.</div>
        </div>
    </div>
    <footer class="footer">
        <p>&copy; 2023 IntelliGrow. All rights reserved.</p>
    </footer>
    <script src="intelligrow1.js"></script>
</body>
</html>