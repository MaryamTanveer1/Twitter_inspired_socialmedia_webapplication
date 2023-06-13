<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="WebApplication34.Messages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="stylesheet" href="Messages.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;1,100&family=PT+Sans+Caption&family=Source+Sans+Pro&display=swap" rel="stylesheet">

</head>
<body>
     <!-- Header top Navigation bar -->
     <header>
        <div id="logo">
            <img src="image-removebg-preview.png">
        </div>
        <div id="search">
            <input type="search" name="search" id="srch" placeholder="Serach..">
        </div>

        <div id="menu">
          <a class="btn " data-bs-toggle="offcanvas" href="#offcanvasRight" role="button" aria-controls="offcanvasRight">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots-vertical" viewBox="0 0 16 16" style="color: white; ">
                  <path d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"/>
                </svg>
            </a>
            <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasR"  style="background-color:rgb(20, 24, 36);">
              <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasRightLabel" style="color: white; ">Menu</h5>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close" ></button>
              </div>
              <div class="offcanvas-body">
                  <div class="navlinks">
                      <ul>
                          <li class="list"><a href="Home.aspx">&nbsp Home</a> </li>
                          <li class="list"><a href="Profile.aspx">&nbsp Profile</a> </li>
                          <li class="list"><a href="Settings.aspx">&nbsp Settings</a> </li>
                          <li class="list"><a href="Notifications.aspx">&nbsp Notifications</a> </li>
                          <li class="activepage"><a href="Messages.aspx">&nbsp Messages</a> </li>
                          <li class="list" id="thide"><a href="Trends.aspx" class="thide">&nbsp Trends</a> </li>
                      </ul>
                  </div>
                </div>
              </div>
            </div>

        <div id="profile">
            <div class="dropdown">
                <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false" style=" color: white; margin-left: 1em;" >
                  <img src="images.jpeg" alt="" style="width: 2vw; height:5vh; margin-right: 1em;" class="rounded-circle">V<asp:Label ID="usernameLabel" runat="server"></asp:Label>
                </button>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="Login.aspx">Log out</a></li>
                  <li><a class="dropdown-item" href="Signup.aspx">Add another account</a></li>
                </ul>
              </div>
        </div>
    </header>
                                        <!-- Page Section -->
    <section>
        <div id="scontainer">
                                        <!-- Scontainer Pages-link -->
            <div id="sidebar">
                    <div class="navlinks">
                     <ul>
                        <li class="list"><a href="Home.aspx">&nbsp Home</a> </li>
                        <li class="list"><a href="Profile.aspx">&nbsp Profile</a> </li>
                        <li class="list"><a href="Settings.aspx">&nbsp Settings</a> </li>
                        <li class="list"><a href="Notifications.aspx">&nbsp Notifications</a> </li>
                        <li class="activepage"><a href="Messages.aspx">&nbsp Messages</a> </li>
                     </ul>
                 </div>
                </div>
                                         <!-- Main Page -->
                <div id="feedcontentnav">
                 <h1>Welcome to your inbox!</h1>
                 <p>Drop a line, share Tweets and more with private conversations between you and others on Twitter. </p> 
                    <!-- Button trigger modal -->
<button type="button" class="btn" id="msg"data-bs-toggle="modal" data-bs-target="#exampleModal">
    Write a message
  </button>
  
  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header" style=" background-color: rgb(20, 24, 36);">
          <h1 class="modal-title fs-5" id="exampleModalLabel">Message</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body" style=" background-color: rgb(20, 24, 36);">
            <div id="status-feed">    
            <h5 class="card-title" style="font-family: 'Source Sans Pro';"><img src="images.jpeg" class="img-fluid rounded-start" alt="..." style="width: 2vw; height:5vh; margin-right: 1em; border-radius: 19pxs; color: grey">
            Victoria Charlotte</h5> <br>     
        </div>
            <div class="form-floating">        
                <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" style=" background-color: rgb(20, 24, 36); color: white"></textarea>
                <button id="Postit" type="Submit">Send</button>
                <div>
              </div>         
        </div>
         </div>
        </div>
      </div>
    </div>
  </div>
                

                                    <!-- Right Sidebar For hashtags/trends -->
                <div id="contacts">
                    <h3>Trends for you</h3>
                    <div id="trends">
                    
                    <div class="tags">
                        <p>-Trending in pakistan-</p>
                        <a href="http://">#LUMS</a>
                        <p>15.1k posts</p>
                    </div>
                    <div class="tags">
                        <p>-Sport-
                        <a href="http://">#WorldCup2023</a>
                        <p>15.1k posts</p>
                    </div>
                    <div class="tags">
                        <p>-Technology-</p>
                        <a href="http://">#Artificial Intelligence</a>
                        <p>15.1k posts</p>
                    </div>
                    <div class="tags">
                        <p>-Technology-</p>
                        <a href="http://">#Cybersecurity</a>
                        <p>15.1k posts</p>
                    </div>
                    <div class="tags">
                        <p>-Technology-</p>
                        <a href="http://">#Chatgpt</a>
                        <p>15.1k posts</p>
                    </div>
                    <div class="tags">
                        <p>-Trending-</p>
                        <a href="http://">#Islamabad</a>
                        <p>15.1k posts</p>
                    </div>
                    <div class="tags">
                        <p>-Technology-</p>
                        <a href="http://">#web3</a>
                        <p>15.1k posts</p>
                    </div>
                </div>
                 </div>   
                 
        </div>
    </section>
</body>
<script>

let postButton = document.getElementById('Postit');
postButton.addEventListener("click", function(e){
   let addtxt = document.getElementById('floatingTextarea');
   let messagesData = localStorage.getItem('status-feed');
   if(messagesData == null){
    messagesObj = [];     //array object is created
   }
   else{
    messagesObj = JSON.parse(messagesData);
   }
   messagesObj.push(addtxt.value);
   localStorage.setItem("status-feed", JSON.stringify(messagesObj));
   addtxt.value = "";
   console.log(messagesObj);
   showpost();
});

function showpost(){
    let messagesData = localStorage.getItem('status-feed');
    if(messagesData == null){
        messagesObj = [];     //array object is created
    }
    else{
        messagesObj = JSON.parse(messagesData);
    }
    let html = "";
    messagesObj.forEach(function(element, index) {
        html += `<div id="yourfeed" style=" border: 1px solid grey;border-radius: 5px;padding: 1em;font-family: 'Source Sans Pro';color: white; width: 100%; margin-bottom: 1em;">
                        <h5 class="card-title" style="font-family: 'Source Sans Pro'; margin-bottom:0.5em; ">
                            <img src="images.jpeg" class="img-fluid rounded-start" alt="..." style="width: 2vw; height: 5vh; margin-right: 1em; border-radius: 19pxs;">
                            Victoria Charlotte
                        </h5>
                        <p class="card-text">${element}</p>
                        </div>
                        
                    `;
    });
    
    let messageselm = document.getElementById('status-feed');
    messageselm.innerHTML = html;
}
showpost();
</script>
</html>