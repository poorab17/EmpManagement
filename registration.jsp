<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="alert/dist/sweetalert.css">
<-- if external css not work then this internal css -->
<style>
body {
  margin: 0;
  padding: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  background: linear-gradient(to bottom, #fff 0%, #e6e6e6 100%);
  font-family: Arial, sans-serif;
}

.main {
  max-width: 800px;
  background: #fff;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  overflow: hidden;
}

.signup-content {
  display: flex;
  flex-direction: row-reverse;
  
}

.signup-form {
  flex: 1;
  padding: 30px;
}

.form-title {
  font-size: 24px;
  margin-bottom: 20px;
  text-align: center;
}

 .signup-image {
        flex: 1;
        text-align: center;
    }

    .signup-image figure {
        margin: 0;
    }

    .signup-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .signup-image-link {
        display: block;
        color: #757575;
        font-size: 14px;
        margin-top: 20px;
    }


.form-group {
  margin-bottom: 20px;
}

input[type="text"],
input[type="email"],
input[type="password"],
select {
  width: 100%;
  padding: 10px;
  border-radius: 5px;
  border: 1px solid #ccc;
  outline: none;
  font-size: 14px;
}

.form-group label {
  display: block;
  margin-bottom: 5px;
}

.form-submit {
  background-color: #4CAF50;
  color: white;
  border: none;
  padding: 10px 20px;
  border-radius: 5px;
  cursor: pointer;
  font-size: 14px;
}

.form-group.radio-group,
.form-group.checkbox-group {
  display: flex;
  align-items: center;
}

.form-group.radio-group label,
.form-group.checkbox-group label {
  margin-right: 10px;
}

.form-group.radio-group input[type="radio"],
.form-group.checkbox-group input[type="checkbox"] {
  margin-right: 5px;
}</style>
<script src="app.js"></script>
<title>Registration Page</title>
</head>

<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">

<div class="main">

  <!-- Sign up form -->
  <section class="signup">
    <div class="container">
      <div class="signup-content">
        <div class="signup-form">
          <h2 class="form-title">Sign up</h2>

          <form method="post" action="register" class="register-form" id="register-form">
            <div class="form-group">
              <label for="name">Full Name<i class="zmdi zmdi-account material-icons-name"></i></label>
              <input type="text" name="name" id="name" placeholder="Your Name" required="required" />
            </div>
            <div class="form-group">
              <label for="email">Email<i class="zmdi zmdi-email"></i></label>
              <input type="email" name="email" id="email" placeholder="Your Email" required="required" />
            </div>
            <div class="form-group">
              <label for="pass">Password<i class="zmdi zmdi-lock"></i></label>
              <input type="password" name="pass" id="pass" placeholder="Password" required="required" />
            </div>
            <div class="form-group">
              <label for="re-pass">Re-Enter your Password<i class="zmdi zmdi-lock-outline"></i></label>
              <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password" required="required" />
            </div>
            
            <div class="form-group">
             <label for="contact">Contact<i class="zmdi zmdi-lock-outline"></i></label>
              <input type="text" name="contact" id="contact" placeholder="Contact no" required="required" />
            </div>

            <div class="form-group">
              <label for="education">Select Education Level:</label>
              <select name="education" id="education" required="required">
                <option value="">Choose an option</option>
                <option value="primary">Primary School</option>
                <option value="secondary">Secondary School</option>
                <optgroup label="Undergraduate" class="expandable" onclick="toggleOptions(this)">
                  <option value="undergrad-option1">BSc</option>
                  <option value="undergrad-option2">BE/BTech</option>
                  <option value="undergrad-option3">Arts</option>
                </optgroup>
                <optgroup label="Postgraduate" class="expandable" onclick="toggleOptions(this)">
                  <option value="postgrad-option1">MSc</option>
                  <option value="postgrad-option2">ME/MTech</option>
                  <option value="postgrad-option3">PHD</option>
                </optgroup>
              </select>
            </div>

            <div class="form-group">
              <label for="age">Select Age:</label>
              <select name="age" id="age">
                <% for (int age = 1; age <= 100; age++) { %>
                <option value="<%= age %>"><%= age %></option>
                <% } %>
              </select>
              <br><br>
            </div>

            <div class="form-group radio-group">
              <label class="gender-label">Gender:</label>
              <label>
                <input type="radio" name="gender" value="male"> Male
              </label>
              <label>
                <input type="radio" name="gender" value="female"> Female
              </label>
            </div>

            <div class="form-group checkbox-group">
              <label class="hobbies-label">Hobbies:</label>
              <label>
                <input type="checkbox" name="hobbies" value="reading"> Reading
              </label>
              <label>
                <input type="checkbox" name="hobbies" value="traveling"> Traveling
              </label>
              <label>
                <input type="checkbox" name="hobbies" value="sports"> Sports
              </label>
            </div>

            <div class="form-group">
              <label for="details">Enter Details:</label>
              <br>
              <textarea name="details" id="details" rows="4" cols="50"></textarea>
              
            </div>
            
            
			   <div class="form-group">
			  <label for="agree-term" class="label-agree-term">
			    <span><span></span></span>I agree all statements in <a href="#" class="term-service">Terms of service</a>
			  </label>
			  <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
			</div>
            
            <div class="form-group form-button">
              <input type="submit" name="signup" id="signup" class="form-submit" value="Register" />
            </div>
          </form>
        </div>
        
        <div class="signup-image">
          <figure>
            <img src="https://images.unsplash.com/photo-1610465299993-e6675c9f9efa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80" alt="sing up image">
          </figure>
          <a href="login.jsp" class="signup-image-link">I am already member</a>
        </div>
      </div>
    </div>
  </section>


</div>
<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
	

<script type="text/javascript">

var status = document.getElementById("status").value;
if(status=="success")

{
	swal("congrats","Account created Successfully","success");
}

if(status=="invalidName")

{
	swal("sorry"," Please Enter Name ","error");
}

if(status=="invalidUpwd")

{
	swal("sorry","Please Enter password","error");
}

if(status=="invalidConfirmpwd")

{
	swal("sorry","Password do not match","error");
}
if(status=="invalidEmail")

{
	swal("sorry"," Please Enter Email ","error");
}

if(status=="invalidUmobile")

{
	swal("sorry","Please Enter Mobile NUMBER","error");
}

if(status=="invalidUmobilelength")

{
	swal("sorry","Mobile NUMBER should be of 10 digit","error");
}

</script>


</body>
</html>
