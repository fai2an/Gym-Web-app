<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Workout Plans</title>
  <style>
    .container {
      display: flex;
      justify-content: space-between;
      margin: 20px auto;
      width: 80%;
    }

    .card {
      background-color: #ebebeb;
      border-radius: 10px;
      box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
      margin: 15px;
      padding: 25px;
      text-align: center;
      transition: all 0.3s ease-in-out;
      overflow: hidden;
      position: relative;
      opacity:0.8;
    }

    .card:hover .card-overlay {
      opacity: 0.5;
    }

    .card-overlay {
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background-color: rgba(0, 0, 0, 0.5);
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: center;
      transition: 0.3s ease-in-out;
      opacity: 1;
    }

    .card img {
      width: 100%;
      height: auto;
      border-radius: 10px;
      transition: transform 0.3s ease-in-out;
    }

    .card:hover img {
      transform: scale(1.1);
    }

    .card h2 {
      font-size: 20px;
      margin-bottom: 10px;
      color: #333;
    }

    .card p {
      font-size: 16px;
      line-height: 1.5;
      color: #666;
      margin-bottom: 15px; /* Add some space before the button */
    }
     /*body {
  background: linear-gradient(to bottom, #f0984b, #f8a2c3, #c7f0f8);
  margin: 0;
  padding: 0;
  font-family: sans-serif; /* Choose a suitable font family */
/*}*/
body {
   background-image: url("https://images.pexels.com/photos/2294361/pexels-photo-2294361.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2");
  margin: 0;
  padding: 0;
  font-family: sans-serif; /* Choose a suitable font family */
}
   .page-title { /* New CSS class for h1 */
      text-align: center;
      padding: 20px 0;
      font-size: 36px; /* Adjust font size as needed */
      margin: 0; /* Remove default margin for heading */
      color: #1F618D; /* White text for better contrast */
      /* Dynamic color for border with subtle shadow */
      border: 2px solid hsl(var(--hue), 80%, 60%); /* Solid border with dynamic hue */
      box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1); /* Subtle box shadow */
      display: inline-block; /* Make h1 behave like an inline element */
      padding: 0 10px; /* Add some padding inside the border */
    }

    :root {  /* Define a root variable for hue */
      --hue: 2;  /* Initial hue value (can be changed dynamically using JavaScript) */
    }
     .enroll-btn {
      background-color: #558349; /* Light blue button color */
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      transition: all 0.3s ease-in-out;
      display: inline-block; /* Make button inline-block */
      margin-bottom: 0; /* Remove bottom margin */
    }

    .enroll-btn:hover {
      background-color: #20a0d0; /* Darken button on hover */
    }
        .benefit {
      font-weight: bold;
      font-style: italic;
      color: #38A3A5;
      font-size:40px /* Light green color for benefits */
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
  opacity:0.4;
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
  <div>
  <center>
  <h1 class="page-title">Workout Plans</h1>
    </center>
    </div>
  <div class="container">
    <div class="card">
      <a href="Fitness.jsp"><img src="https://images.pexels.com/photos/1954524/pexels-photo-1954524.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Beginner Workout Plan"></a>
      <h2>Beginner</h2>
      <p>
        Get started on your fitness journey with our beginner-friendly workout plan. This program is designed to ease you into exercise and build a strong foundation for future progress. 
        <P class="benefit">**Benefits:**<P>
        <ul>
          <li>Improve cardiovascular health</li>
          <li>Increase muscle strength and endurance</li>
          <li>Boost metabolism and energy levels</li>
          <li>Build confidence and motivation</li>
        </ul>
      </p>
      <a href="CourseSelection.jsp"><button class="enroll-btn">View Pricing</button></a>
    </div>

    <div class="card">
      <a href="Fitness.jsp"><img src="https://images.pexels.com/photos/2261484/pexels-photo-2261484.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Intermediate Workout Plan"></a>
      <h2>Intermediate</h2>
      <p>
        Challenge yourself with our intermediate workout plan. This program is designed to push you further and help you reach your next fitness goals.
         
        <p class="benefit">**Benefits:**</p>
        <ul>
          <li>Build upon your existing foundation</li>
          <li>Increase strength, endurance, and power</li>
          <li>Improve body composition (muscle definition and fat loss)</li>
          <li>Enhance athletic performance (if applicable)</li>
        </ul>
      </p>
      <a href="CourseSelection2.jsp"><button class="enroll-btn">View Pricing</button></a>
    </div>

    <div class="card">
      <a href="Fitness.jsp"><img src="https://images.pexels.com/photos/13679977/pexels-photo-13679977.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Advanced Workout Plan"></a>
      <h2>Advanced</h2>
      <p>
        Take your fitness to the next level with our advanced workout plan. This program is designed for experienced athletes who are looking for a serious challenge. 
        <P class="benefit">**Benefits:**</P>
        <ul>
          <li>Maximize strength, endurance, and power gains</li>
          <li>Improve skills for specific athletic disciplines</li>
          <li>Push your limits and achieve peak performance</li>
          <li>Experience a sense of accomplishment and self-mastery</li>
        </ul>
      </p>
      <a href="CourseSelection3.jsp"><button class="enroll-btn">View Pricing</button></a>
    </div>
  </div>
  <div>
  <Center>
  <a href="Index.jsp"><button class="enroll-btn">Back</button></a>
  </Center></div>
</body>
<script>
//Select the root element to access the --hue variable
const root = document.documentElement;

// Function to update the hue value and set the border color
function updateHue(newHue) {
  root.style.setProperty('--hue', newHue); // Set the --hue variable dynamically
}

// Example usage: Change the hue value every second (can be customized for user interaction)
setInterval(() => {
  let currentHue = parseInt(getComputedStyle(root).getPropertyValue('--hue'));
  currentHue = (currentHue + 1) % 360; // Update hue value (0 to 359) and loop back to 0
  updateHue(currentHue);
}, 1000); // Update every 1 second
</script>
</html>