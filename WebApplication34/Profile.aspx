<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebApplication34.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="Profile.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;1,100&family=PT+Sans+Caption&family=Source+Sans+Pro&display=swap" rel="stylesheet">
</head>
<body>
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
                            <li class="activepage"><a href="Profile.aspx">&nbsp Profile</a> </li>
                            <li class="list"><a href="Settings.aspx">&nbsp Settings</a> </li>
                            <li class="list"><a href="Notifications.aspx">&nbsp Notifications</a> </li>
                            <li class="list"><a href="Messages.aspx">&nbsp Messages</a> </li>
                            <li class="list" id="thide"><a href="Trends.aspx" class="thide">&nbsp Trends</a> </li>
                        </ul>
                    </div>
                  </div>
                </div>
              </div>
            

        <div id="profile">
            <div class="dropdown">
                <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false" style=" color: white; margin-left: 1em;" >
                  <img src="images.jpeg" alt="" style="width: 2vw; height:5vh; margin-right: 1em;" class="rounded-circle"><asp:Label ID="usernameLabel" runat="server"></asp:Label>
                </button>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="Login.aspx">Log out</a></li>
                  <li><a class="dropdown-item" href="Signup.aspx">Add another account</a></li>
                </ul>
              </div>
        </div>
    </header>

    <div id="scontainer">
        <div id="sidebar">
                 <div class="navlinks">
                     <ul>
                        <li class="list"><a href="Home.aspx">&nbsp Home</a> </li>
                        <li class="activepage"><a href="Profile.aspx">&nbsp Profile</a> </li>
                        <li class="list"><a href="Settings.aspx">&nbsp Settings</a> </li>
                        <li class="list"><a href="Notifications.aspx">&nbsp Notifications</a> </li>
                        <li class="list"><a href="Messages.aspx">&nbsp Messages</a> </li>
                        <li class="list" id="thide"><a href="" class="thide">&nbsp Trends</a> </li>
                     </ul>
                 </div>
                 
             </div>

                 <div id="feedcontentnav">
                  <div id="homepagelinks">
                    <div id="foryou">
                        <div>
                            <img src="images.jpeg" alt="" style=" width: 15vw; height:30vh; margin-top: 9em;" class="rounded-circle" id="chngpic">
                          </div>
                          <label for="cprofile" id="prof" class="labels">Edit Profile</label>
                         <input type="file" accept="image/*" id="cprofile" name="cprofile">
                          
                    </div>
                    
                    
                    </div>
                    <div id="profileinfo">
                    <h2 style="color: white; font-family: 'Source Sans Pro'; margin: 3em 0.5em 0em 0.5em;"> <asp:Label ID="usernameLabel1" runat="server"></asp:Label></h2>
                    <p style="color: grey; font-family: 'Source Sans Pro'; margin: 0em 1em;">@c23_Victoria</p><br>
                    <p style="color: grey; font-family: 'Source Sans Pro'; margin: 0em 1em;"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
                        <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
                        <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                      </svg>Islamabad, Pakistan &nbsp &nbsp <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar3" viewBox="0 0 16 16">
                        <path d="M14 0H2a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zM1 3.857C1 3.384 1.448 3 2 3h12c.552 0 1 .384 1 .857v10.286c0 .473-.448.857-1 .857H2c-.552 0-1-.384-1-.857V3.857z"/>
                        <path d="M6.5 7a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm-9 3a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm-9 3a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                      </svg>Joined June 2022</p><br>
                      <p style="color: grey; font-family: 'Source Sans Pro'; margin: 0em 1em;"><strong style="color: white;">300</strong> <a href="Friends.aspx" style="color: grey; font-family: 'Source Sans Pro'; text-decoration: none;">Following</a>
                       <strong style="color: white;">&nbsp &nbsp 248</strong> <a href="Friends.aspx" style="color: grey; font-family: 'Source Sans Pro'; text-decoration: none;">Followers</a>  </p><br>
                    </div>
                    <div id="post">
                     <div id="buttons">
                         
                         <label for="status" id="stat" class="active">Status</label>
                         <input type="text" accept="text/*" id="status" name="status">
                         <label for="image" id="img" class="labels">Image</label>
                         <input type="file" accept="image/*" id="image" name="img">
                         <label for="video" id="vid" class="labels">Video</label>
                         <input type="file" accept="Video/*" id="video" name="vid">
                         
                     </div>
                     <div class="form-floating">
                         
                         <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea"></textarea>
                         <button id="Postit" type="Submit">Post</button>
                         <div>
                         <select name="select" id="slt">
                                 <option value="volvo">Everyone</option>
                                 <option value="saab">Vconnect Circle</option>
                               </select>
                     
                       </div>         
                 </div>
                  </div>
                  
                  <div id="status-feed">   
                   
                     <h5 class="card-title" style="font-family: 'Source Sans Pro';"><img src="images.jpeg" class="img-fluid rounded-start" alt="..." style="width: 2vw; height:5vh; margin-right: 1em; border-radius: 19pxs;">
                     My Profile</h5> <br> 
                     
                 </div>
                 
                </div>
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
</body>
<script>

    let postButton = document.getElementById('Postit');
    postButton.addEventListener("click", function(e){
       let addtxt = document.getElementById('floatingTextarea');
       let notesData = localStorage.getItem('status-feed');
       if(notesData == null){
        notesObj = [];     //array object is created
       }
       else{
        notesObj = JSON.parse(notesData);
       }
       notesObj.push(addtxt.value);
       localStorage.setItem("status-feed", JSON.stringify(notesObj));
       addtxt.value = "";
       console.log(notesObj);
       showpost();
    });
    
    function showpost(){
        let notesData = localStorage.getItem('status-feed');
        if(notesData == null){
            notesObj = [];     //array object is created
        }
        else{
            notesObj = JSON.parse(notesData);
        }
        let html = "";
        notesObj.forEach(function(element, index) {
            html += `<div id="yourfeed" style=" border: 1px solid grey;border-radius: 5px;padding: 1em;font-family: 'Source Sans Pro';color: white; width: 100%; margin-bottom: 1em;">
                            <h5 class="card-title" style="font-family: 'Source Sans Pro'; margin-bottom:0.5em; ">
                                <img src="images.jpeg" class="img-fluid rounded-start" alt="..." style="width: 2vw; height: 5vh; margin-right: 1em; border-radius: 19pxs;">
                                My Profile
                            </h5>
                            <p class="card-text">${element}</p>
                            <div class="sociallinks">
                            <div class="forsocial"><button>Like</button></div>
                            <div class="forsocial"><button>Comment</button></div>
                            <div class="forsocial"><button>Share</button></div>
                          </div>
                            </div>
                            
                        `;
        });
        
        let noteselm = document.getElementById('status-feed');
        noteselm.innerHTML = html;
    }
    showpost();
    
    document.getElementById('image').addEventListener('change', function() {
            let addimg = document.getElementById('floatingTextarea');
            addimg.placeholder = 'Choose image file';
        });
    document.getElementById('image').addEventListener('change', function() {
            let chngimg = document.getElementById('chngpic');
            chngimg.placeholder = 'Choose image file';
        });
    
    document.getElementById('video').addEventListener('change', function() {
            let addvid = document.getElementById('floatingTextarea');
            addvid.placeholder = 'Choose video file';
        });
    
    // Get the status, image, and video input elements
    let statusInput = document.getElementById('status');
    let imageInput = document.getElementById('image');
    let videoInput = document.getElementById('video');
    
    // Get the status, image, and video labels
    let statusLabel = document.getElementById('stat');
    let imageLabel = document.getElementById('img');
    let videoLabel = document.getElementById('vid');
    
    // Add event listeners for image and video labels
    imageLabel.addEventListener('click', function() {
       statusLabel.classList.remove('active');
       imageLabel.classList.add('active');
       videoLabel.classList.remove('active');
    });
    
    videoLabel.addEventListener('click', function() {
       statusLabel.classList.remove('active');
       imageLabel.classList.remove('active');
       videoLabel.classList.add('active');
    });
    
    // Add event listener for status label
    statusLabel.addEventListener('click', function() {
       statusLabel.classList.add('active');
       imageLabel.classList.remove('active');
       videoLabel.classList.remove('active');
    });
    
    
    
</script>
</html>
