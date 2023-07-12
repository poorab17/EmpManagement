<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="alert/dist/sweetalert.css">
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
