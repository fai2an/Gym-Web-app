<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fitness App</title>
<style>
body {
  background-image: url("https://images.pexels.com/photos/289586/pexels-photo-289586.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"); /* Background image */
  margin: 0;
  padding: 0;
  font-family: sans-serif;
  height: 100vh; /* Ensures full height for the body */
}

h1 {
  font-family: Arial, sans-serif;
  text-align: center;
  margin-top: 50px;
  color: #333;
}

#menu-toggle { /* Menu toggle button */
  width: 50px;
  height: 50px;
  background: none;
  border: none;
  cursor: pointer;
  position: relative;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

#menu-toggle .bar {
  width: 100%;
  height: 2px;
  background-color: #fff;
  opacity: 1;
  margin: 5px 0;
  transition: transform 0.3s ease-in-out;
}

#menu-toggle.active .bar:nth-child(1) { /* Top line animation */
  transform: translateY(10px) rotate(45deg);
  background-color: #4CAF50;
}

#menu-toggle.active .bar:nth-child(2) { /* Middle line animation */
  opacity: 0;
}

#menu-toggle.active .bar:nth-child(3) { /* Bottom line animation */
  transform: translateY(-10px) rotate(45deg);
  background-color: #007bff;
}



.card { /* Individual content block styling */
  display: inline-block;
  margin: 1px;
  text-align: center;
  background-color: rgba(166,219,255, 0.5); /* Semi-transparent white background */
  border-radius: 5px; /* Rounded corners */
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Subtle shadow */
  transition: all 0.3s ease-in-out; /* Smooth hover effects */;
}

.card:hover  {
  transform: scale(1.1); /* Slight scale up on hover */
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2); /* More prominent shadow on hover */
}

.card img {
  width: 100%;
  height: 200px; /* Adjust image height as needed */
  object-fit: cover; /* Crop image to fit container */
  
}
 .card:hover img {
      transform: scale(0.9);
    }
.card h2 {
  padding: 10px 0;
  font-size: 1.2em;
}

.card p {
  padding: 0 10px;
}


.content-container { /* Container for content blocks */
  flex: 1; /* Takes up remaining space in the flex container */
  padding: 20px;
  display: flex; /* Change to flexbox for vertical stacking */
  flex-wrap: wrap; /* Allow content blocks to wrap on smaller screens */
  justify-content: center; /* Center content blocks horizontally */
  position: relative;
  padding: 20px; /* Add some padding for spacing */
 /* background-color:#9bd1b1;
  opacity:0.4;
*/}

.my-form { /* Form container for buttons */
  display: flex; /* Arrange buttons horizontally */
  justify-content: center; /* Distribute buttons evenly */
  padding: 20px; /* Add some padding for spacing */
}

button { /* General button styles */
  background: linear-gradient(to bottom, #777696 0%, #738276 100%); /* Green gradient */
  border: 1px solid #3e8e41; /* Green border */
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer; /* Indicates interactive element */
  border-radius: 5px; /* Rounded corners for a polished look */
  transition: all 0.3s ease-in-out; /* Smooth hover effects */
}

button:hover { /* Button hover effect */
  background: linear-gradient(to bottom, #333333 0%, #004444 100%); /* Change gradient color on hover */
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* Subtle shadow on hover */
}



.card {
  display: block; /* Change to block for vertical stacking */
  width: 300px; /* Set a width for content blocks */
  margin: 10px;
  ...
}

/* Media query for smaller screens (adjust breakpoint as needed) */
@media only screen and (max-width: 768px) {
  .card {
    width: 100%; /* Make content blocks full width on small screens */
  }
}
nav {
  display: flex; /* Arrange elements horizontally */
  justify-content: space-between; /* Distribute links evenly */
  align-items: center; /* Vertically center elements */
  padding: 10px 20px; /* Add some padding */
  background-color: #bef2f1; /* Dark background color */
  color: #fff; /* Light text color */
  display: flex; /* Make navigation bar a flex container */
  justify-content: space-between; /* Distribute links and search evenly */
  opacity:0.7;
}

.logo {
  font-size: 20px; /* Adjust logo font size */
  font-weight: bold; /* Make logo text bold */
  margin-right: 20px; /* Add margin to the right of the logo */
  overflow: hidden; /* Hide overflowing text if needed */
  color: #fff; /* Assuming white color for brand name text */
}

.logo a {
  color: #fff; /* White text color for logo */
  text-decoration: none; /* Remove underline from logo */
}

.nav-list {
  display: flex; /* Arrange list items horizontally */
  list-style: none; /* Remove default bullet points */
  margin: 0; /* Remove default margin */
  padding: 0; /* Remove default padding */
}

.nav-list li {
  margin-right: 20px; /* Add spacing between list items */
}

.nav-list a {
  display: block; /* Make entire list item clickable */
  text-decoration: none; /* Remove underline from links */
  color: #fff; /* Light text color for links */
  padding: 10px 15px; /* Add padding for spacing */
  transition: all 0.3s ease-in-out; /* Add hover effect transition */
  background-color: rgba(50, 50, 50, 0.3); /* Light gray background with opacity */
  border-radius: 5px; /* Add rounded corners */
  text-align: center; /* Center text within buttons */
}

.nav-list a:hover {
  background-color: rgba(34, 34, 34, 0.5); /* Darker gray background on hover */
  color: #f1f1f1; /* Change text color on hover */
  background-color:#313146;
}

.search-container {
  margin-left: auto;
  padding:auto; /* Push search container to the left */
}



.search-container input[type="text"] {
  width: 100%; /* Set width of search input */
  padding: 10px; /* Add padding to search input */
  border: none; /* Remove default border from input */
  border-radius: 5px; /* Add rounded corners to input */
  background-color: #333; /* Dark background color for*/
}
.text-styles {
  /* Basic Font Styling */
  font-family: Verdana; /* Fallback font for compatibility */
  font-size: 31px; /* Default font size */
  color: #a4ab9c; /* Dark gray text color */
  }
  .logo,
.search-container {
  display: inline-block;
}
font-size: 20px; /* Adjust font size for brand name */
  font-weight: bold; /* Make brand name bold */
  color: #fff; /* Assuming white color for brand name text */
  }  
  .search-left{
  position:left;
  }
  .heading{
  padding:10px 15px;
  margin:auto;
  content-align:center;
  border:1px white solid;
  color:#014667;
  font-size:24px;
  }
</style>
</head>
<body>
<nav>
  <ul class="nav-list">
  <li><a href="Index.jsp">Home</a></li>
  <li><a href="#">Features</a></li>
  <li><a href="#">Pricing</a></li>
  <li><a href="#">Blog</a></li>
  <li><a href="#">Contact</a></li>
  <li> <p class="heading">Fitness App</p></li>
  <li class="search-container">
  
</li>
<div class="search-left">
<form action="#">
    <input type="text" placeholder="Search..." />
    <button type="submit"><i class="fas fa-search"></i></button>
  </form></div>
</ul>


<div class="logo">
   </div>

</nav>
  
  <div class="content-container">
    <div class="card">
        <a href="Workout.jsp">
        <p></p>
          <img src="https://images.pexels.com/photos/1552242/pexels-photo-1552242.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Workouts" />
        </a>
        <h2>Workout</h2>
        <p>
          Get fit and healthy with our comprehensive workout plans. We offer a variety of programs to suit your fitness level and goals. Here are some key benefits:
          <ul>
            <li>Improve cardiovascular health</li>
            <li>Build muscle strength and endurance</li>
            <li>Boost your metabolism</li>
            <li>Increase energy levels</li>
            <li>Improve mood and overall well-being</li>
          </ul>
        </p>
      </div>

      <div class="card">
        <a href="nutrition.jsp">
        <p></p>
          <img src="https://images.pexels.com/photos/5591663/pexels-photo-5591663.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Nutrition" />
        </a>
        <h2>Nutrition</h2>
        <p>
          Fuel your body and mind with our personalized nutrition plans. Learn how to eat right for your health and fitness goals. Discover the importance of:
          <ul>
            <li>Eating a balanced diet</li>
            <li>Choosing nutrient-rich foods</li>
            <li>Understanding portion control</li>
            <li>Staying hydrated</li>
            <li>Making healthy food choices</li>
          </ul>
        </p>
      </div>

      <div class="card">
        <a href="Yoga.jsp">
        <p></p>
          <img src="https://images.pexels.com/photos/3094230/pexels-photo-3094230.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Yoga" />
        </a>
        <h2>Yoga</h2>
        <p>
          Find inner peace and improve your flexibility with our yoga routines. Yoga offers numerous benefits for both your body and mind, including:
          <ul>
            <li>Increased flexibility and range of motion</li>
            <li>Improved strength and balance</li>
            <li>Stress reduction and relaxation</li>
            <li>Enhanced breathing and circulation</li>
            <li>Greater self-awareness and mindfulness</li>
          </ul>
        </p>
      </div>
  </div>
  
  <div class="my-form">
      <!-- Buttons to go to different pages -->
      <form action="workouts.jsp" method="get">
        <button type="submit">Price</button>
      </form>
      <form action="nutrition.jsp" method="get">
        <button type="submit">Gym Plans</button>
      </form>
      <form action="goals.jsp" method="get">
        <button type="submit">Enroll</button>
      </form>
        <form action="goals.jsp" method="get">
        <button type="submit">Feedback</button>
      </form>
        <form action="goals.jsp" method="get">
        <button type="submit">Services</button>
      </form>
        <form action="goals.jsp" method="get">
        <button type="submit">Register</button>
      </form>
        <form action="goals.jsp" method="get">
        <button type="submit">FAQ</button>
      </form>
    </div>
 </body>
 </html>   
  
