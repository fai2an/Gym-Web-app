<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Registration Form</title>
  <style>
  body {
  font-family: sans-serif; /* Choose a suitable font family */
  margin: 0;
  padding: 20px;
  background: linear-gradient(to bottom, #634832, #353839);
}

h1 {
  text-align: center;
  margin-bottom: 20px;
}

.form-container {
  /* Form container with shadow box effect */
  background-color: #fff; /* White background for the form */
  border-radius: 10px; /* Rounded corners */
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2); /* Inner shadow */
  margin: 0 auto; /* Center the form horizontally */
  width: 50%; /* Adjust width as needed */
  padding: 30px; /* Add some padding inside the form container */
}

.form-group {
  margin-bottom: 15px;
}

label {
  display: block;
  margin-bottom: 5px;
  font-weight: bold;
}

input[type="text"],
input[type="email"],
input[type="tel"],
input[type="date"] {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box; /* Include border width in width calculation */
}

input[type="text"]:focus,
input[type="email"]:focus,
input[type="tel"]:focus,
input[type="date"]:focus {
  border-color: #66afe9; /* Change border color on focus */
}

select {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
}

  </style> 
  </head>
<body>
  <h1>Registration Form</h1>
  <div class="form-container"> <form action="process_registration.jsp" method="post">
      <div class="form-group">
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" required>
      </div>
      <div class="form-group">
        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName" required>
      </div>
      <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
      </div>
      <div class="form-group">
        <label for="phone">Phone Number:</label>
        <input type="tel" id="phone" name="phone"   required> </div>
      <div class="form-group">
        <label for="dob">Date of Birth:</label>
        <input type="date" id="dob" name="dob" required>
      </div>
      <div class="form-group">
        <label for="planType">Plan Type:</label>
        <select id="planType" name="planType" required>
          <option value="">-- Select a Plan --</option>
          <option value="basic">Basic Plan</option>
          <option value="premium">Premium Plan</option>
          <option value="pro">Pro Plan</option>
        </select>
      </div>
      <div class="form-group">
        <button type="submit">Register Now!</button>
      </div>
    </form>
  </div>
</body>
</html>
