<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebApplication34.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Signup.css">
</head>
<body>
    <section>
    <div id="form-container">
    <div id="form-content">
        <h1>Create an account</h1>
        <form method="get" name="myform" onsubmit="return validatesignupform()" runat="server">
            <div id="forname">
                <div class="divforform" id="fstname">
                    <asp:TextBox type="text" name="fstname" placeholder="First name" ID="fname" runat="server" required/>
                    <p class="formerror"></p>
                </div>

                <div class="divforform" id="lstname">
                    <asp:TextBox type="text" name="lstname" ID="lname" placeholder="Last name" runat="server" required/>
                    <p class="formerror"></p>
                </div>
            </div>
            <div class="divforform" id="email">
                <asp:TextBox type="email" name="email" ID="eml" class="inputs" placeholder="Email" runat="server" required/>
                <p class="formerror"></p>
            </div>
            <div class="divforform" id="psw">
                <asp:TextBox type="password" name="password" ID="pass" class="inputs" placeholder="Password" runat="server" required/>
                <p class="formerror"></p>
            </div>
            <div class="divforform" id="repsw">
                <asp:TextBox type="password" name="repassword" ID="repass" class="inputs" placeholder="Retype password" runat="server" required/>
                <p class="formerror"></p>
            </div>
            <div class="divforform" id="Birthday">
                <input type="date" name="date" id="date" class="inputs" required/>
            </div>
            <div class="divforform" id="radios" class="forspace" style="color:grey" required>
                <br>
                <input type="radio" name="male" id="male">
                <label for="male">Male</label>
                <input type="radio" name="female" id="female">
                <label for="female">Female</label>
            </div>
            <small class="forspace" style="color:grey">
                <br>
                By clicking agree, you agree to the Terms &nbsp;
                <a href="" style="color: white;">Privacy and Policy</a>
            </small>
            <br>
            <input type="checkbox" name="checkbox" id="agree" class="forspace" required>
            <label for="checkbox" style="color:grey">I agree</label>
            <br>
            <div class="divforform">
                <asp:Button ID="Button3" runat="server" Text="Signup" OnClick="Button1_Click" Class="signupbtn" />
                
            </div>
           

           
        </form>
                  
    </div>
</div>

      

       <div id="side-container">
        <div id="logo">
            <img src="image-removebg-preview.png">
        </div>

        <div id="inside-content">
     <h1 class="H-1">Alraedy have an account?</h1>
       <button id="login"><a href="Login.aspx" style="text-decoration:none; color:black">Sign in</a>  </button>
       <div id="animation"><img src="sign-concept-illustration_114360-5425-removebg-preview.png"> </div></div>

    </div>
    </div>

    </section>
</body>
<script>
    function seterror(id, error){
        element = document.getElementById(id);
        element.getElementsByClassName('formerror')[0].innerHTML = error;
    }
    function validatesignupform(){
        var returnval = true;
        var fname = document.forms['myform']["fname"].value;
        if(fname.length < 5){
            seterror("fstname", "*Length is too short");
            returnval = false;
        } 
        var lname = document.forms['myform']["lname"].value;
        if(lname.length < 5){
            seterror("lstname", "*Length is too short");
            returnval = false;
        } 

    }

    var email = document.getElementById('eml');
    var password = document.getElementById('pass');
    var repassword = document.getElementById('repass');
    var fname = document.getElementById('fname');
    var lname = document.getElementById('lname');

    fname.addEventListener('input', ()=>{
        var regex= /^[A-Z][a-zA-Z]{5,}$/;
        var str = fname.value;
        if(regex.test(str))
        {
            seterror("fstname", "Valid Input");
        }
        else
        {
            seterror("fstname", "Invalid Input");
        }


    });
     
    lname.addEventListener('input', ()=>{
        var regex= /^[A-Z][a-zA-Z]{5,}$/;
        var str = lname.value;
        if(regex.test(str))
        {
            seterror("lstname", "Valid Input");
        }
        else
        {
            seterror("lstname", "Invalid Input");
        }


    });
     
    email.addEventListener('input', ()=>{
        var regex = /^[A-Za-z0-9]+@[a-z]+\.[a-z]+$/;
        var str = email.value;
        if(regex.test(str))
        {
            seterror("email", "Valid Input");
        }
        else
        {
            seterror("email", "Invalid Input");
        }

    });

    password.addEventListener('input', ()=>{
        var regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#%&*?]).{8,}$/;
        var str = password.value;
        if(regex.test(str))
        {
            seterror("psw", "Valid Input");
        }
        else
        {
            seterror("psw", "Invalid Input");
        }
    });
   
   
</script>
</html>
