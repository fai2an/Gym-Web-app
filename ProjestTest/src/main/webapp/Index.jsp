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

.content-container { /* Container for content blocks */
  position: relative;
  padding: 20px; /* Add some padding for spacing */
}

.card { /* Individual content block styling */
  display: inline-block;
  margin: 1px;
  text-align: center;
  background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
  border-radius: 5px; /* Rounded corners */
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Subtle shadow */
  transition: all 0.3s ease-in-out; /* Smooth hover effects */
}

.card:hover {
  transform: scale(1.02); /* Slight scale up on hover */
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2); /* More prominent shadow on hover */
}

.card img {
  width: 100%;
  height: 200px; /* Adjust image height as needed */
  object-fit: cover; /* Crop image to fit container */
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
}

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

  .content-container {
  display: flex; /* Change to flexbox for vertical stacking */
  flex-wrap: wrap; /* Allow content blocks to wrap on smaller screens */
  justify-content: center; /* Center content blocks horizontally */
  padding: 20px;
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
  
</style>
</head>
<body>
<h1>Fitness App</h1>

  <nav id="menu">
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">About Us</a></li>
      <li><a href="#">Services</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
  </nav>
  
  <div class="content-container">  <div class="card">
        <a href="Workout.jsp">
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
  
