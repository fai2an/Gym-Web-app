<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Beginner's Workout Plan</title>
  <style>
  body.workout-page {
  /* Vibrant background with subtle gradient */
  background: linear-gradient(to bottom, #FC4E3D, #CF735A);
  font-family: sans-serif; /* Choose a suitable font family */
  margin: 0;
  padding: 0;
}

.container {
  display: flex; /* Arrange elements horizontally */
  width: 80%;
  margin: 50px auto; /* Add some margin for better spacing */
}

.left-side,
.content-wrapper {
  flex: 1; /* Distribute space equally between left and right sides */
}

.course-image {
  width: 100%; /* Make image responsive */
  border-radius: 5px; /* Add subtle rounded corners */
  margin-bottom: 30px; /* Add some space after the image */
}

.content-wrapper {
  display: grid; /* Use grid layout for block arrangement */
  grid-template-columns: repeat(1, 1fr); /* Single column for stacked blocks */
  grid-gap: 20px; /* Add space between grid items */
}

.benefit-container,
.workout-container {
  background-color: #fff; /* Light background for blocks */
  padding: 20px;
  border-radius: 10px; /* Rounded corners */
  box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1); /* Subtle box shadow */
  transition: all 0.3s ease-in-out; /* Smooth transition effects */
  cursor: pointer; /* Change cursor to pointer on hover for interactivity */
}

.benefit-container:hover,
.workout-container:hover {
  /* Enhance block appearance on hover */
  transform: scale(1.02); /* Slight zoom effect */
  box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.2); /* More prominent shadow */
}

.benefit-list,
.workout-list {
  list-style: none; /* Remove default bullet points */
  padding: 0; /* Remove default padding */
  margin: 
  }
  .registration a {
  /* Style the register button */
  background-color: #2ecc71; /* Vibrant green color */
  color: #fff; /* White text color for contrast */
  padding: 15px 30px; /* Increase button size */
  border: none; /* Remove border */
  border-radius: 5px; /* Add rounded corners */
  font-weight: bold; /* Make text bold */
  text-decoration: none; /* Remove underline on hover */
  cursor: pointer; /* Change cursor to pointer on hover for interactivity */
  transition: all 0.3s ease-in-out; /* Smooth transition effects */
}

.registration a:hover {
  /* Enhance button appearance on hover */
  background-color: #27ae60; /* Darker green on hover */
  transform: scale(1.02); /* Slight zoom effect */
}
  </style>
</head>
<body class="workout-page">
  <div class="container">
    <div class="left-side">
     <img src="images/workout.jpg" alt="Text description of the workout plan image" class="course-image">
      <div class="registration">
        <h2>Beginner's Workout Plan</h2>
        <p>
           This course provides a detailed guide to creating a basic workout plan. <br>It helps you understand the fundamentals of fitness and guides you through exercises <br>that can be easily incorporated into your routine.<br> By taking this course, you'll gain the knowledge and confidence to embark on your<br> fitness journey.
        </p>
        <a href="Register.jsp"><button type="button">Register Now</button></a>
        <p><strong>Pricing:</strong> $47.00 (USD)</p>
      </div>
    </div>

    <div class="content-wrapper">
      <div class="benefit-container">
        <h3>Benefits for Beginners:</h3>
        <ul class="benefit-list">
          <li>Improved Strength and Stamina.</li>
          <li>Weight Management.</li>
          <li>Enhanced Flexibility and Mobility.</li>
          <li>Stress Reduction and Improved Mood.</li>
        </ul>
      </div>

      <div class="workout-container">
        <h3>Sample Listed Workouts:</h3>
        <ul class="workout-list">
          <li>Cardio (30 minutes).</li>
          <li>Strength Training (upper body) - 3 sets of 10-12 repetitions.</li>
          <li>Strength Training (lower body) - 3 sets of 10-12 repetitions.</li>
          <li>Core Exercises - 3 sets of 15-20 repetitions.</li>
          <li>Stretching (10 minutes).</li>
        </ul>
      </div>
    </div>
  </div>

</body>
</html>
