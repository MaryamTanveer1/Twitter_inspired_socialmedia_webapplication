<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication34.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Login.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;1,100&family=PT+Sans+Caption&family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">
</head>
<body>
        <section>
    <div id="side-container">
        <div id="logo">
            <img src="image-removebg-preview.png">
        </div>

        <div id="inside-content">
     <h1 class="H-1">Connect, share, and discover!</h1>
     <p>Sign in to dive into a vibrant community where you can express yourself, share ideas, and explore new horizons.</p>  <button id="creatacc"><a href="Signup.aspx" style="text-decoration:none; color:black">Create an account</a>  </button></div>
    </div>
    </div>

    <div id="form-container">
     <div id="form-content">
        <form name="myform" onsubmit="return validateloginform()" runat="server">
            <h1>Welcome to Vconnect</h1>

            <div class="divforform" id="username" >
            <asp:TextBox class="inputs" type="text" id="u_name" name="uname" runat="server" placeholder="Username" required/>
                <p class="formerror"></p>

            </div>

            <div class="divforform" id="psw">
            <asp:TextBox  class="inputs" type="password" id="pass" runat="server" name="pass1" placeholder="Password" required/>
                <p class="formerror"></p>
            </div>

        
           
            <div class="divforform">           
                 <asp:Button ID="signin" Class="signin" type="submit" OnClick="Button1_Click" Text="Sign in" runat="server"/> 
                 
            </div>
        </form>
                <hr>
         
                <div class="divforform">
                <button id="cwgoogle"><img src="png-transparent-google-logo-g-suite-google-guava-google-plus-company-text-logo-removebg-preview.png"><p>Continue with Google</p></button></div>
       
     </div>
    </div>
  </section>
</body>
    <script>
function seterror(id, error){
    element = document.getElementById(id);
    element.getElementsByClassName('formerror')[0].innerHTML = error;
 }
function validateloginform(){
 var returnval = true;
 var name = document.forms['myform']["u_name"].value;
 if (name.length < 5 )
 {
     seterror("username", "*Length is too short");  
     returnval = false;
 }
}

var username = document.getElementById('u_name');
var password = document.getElementById('pass');

username.addEventListener('input', () => {
 var regex = /^[a-zA-Z0-9]{0,10}$/;  //start and can have alphanumeric characters and can be shorter than 10 but if {10} it should exactly equal to 10
 var str = username.value;
 if (regex.test(str)) {
     seterror("username", "Valid Input");
 } else {
     seterror("username", "Invalid Input")
 }
});

password.addEventListener('input', ()=>{
 var regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%?&*])[A-Za-z\d!@#$%?&*]{8,}$/;
 var str = password.value;
 if (regex.test(str)) {
     seterror("psw", "Valid Input");
 } else {
     seterror("psw", "Invalid Input")
 }

});
       
        
    </script>
</html>
