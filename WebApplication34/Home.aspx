<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication34.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="Home.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;1,100&family=PT+Sans+Caption&family=Source+Sans+Pro&display=swap" rel="stylesheet">
</head>
<body>
   <!-- Header Navigation bar -->
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
                          <li class="activepage"><a href="Home.aspx">&nbsp Home</a> </li>
                          <li class="list"><a href="Profile.aspx">&nbsp Profile</a> </li>
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

                                           <!-- Section -->
    <section>
        <div id="scontainer">
                                           <!-- Scontainer Pages-link -->
           <div id="sidebar">
                    <div class="navlinks">
                     <ul>
                      <li class="activepage"><a href="Home.aspx">&nbsp Home</a> </li>
                      <li class="list"><a href="Profile.aspx">&nbsp Profile</a> </li>
                      <li class="list"><a href="Settings.aspx">&nbsp Settings</a> </li>
                      <li class="list"><a href="Notifications.aspx">&nbsp Notifications</a> </li>
                      <li class="list"><a href="Messages.aspx">&nbsp Messages</a> </li>
                     </ul>
                 </div>
                </div>
                                                <!-- News Feed -->
                    <div id="feedcontentnav">
                        <h3>Home</h3>
                     <div id="homepagelinks">
                       <div id="foryou">
                        <a href="http://">For you</a> 
                       </div>
                       <div id="following">
                        <a href="http://">Following</a> 
                       </div>
                       
                       </div>
                       <div id="post">
                        <div id="buttons">
                            <form id="form1" runat="server">
                            <label for="status" id="stat" class="active" onclick="showStatus()" style="color:white; margin-left: 0.3em">Status</label>
                            
                            <label id="img" onclick="showImage()"style="color:white; margin-left: 0.3em">Image</label>
                            <input id="image" name="img" style="display: none;">
                            <label id="vid"  onclick="showVideo()"style="color:white; margin-left: 0.3em">Video</label>
                            <input type="file" id="video" name="vid" style="display: none;">
                            
                        </div>
                        <div class="form-floating">
                            <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" style="color: white; background-color:rgb(20, 24, 36);"></textarea>
                           
                            <div id="imagecontainer" runat="server" onclick="showimagefeed()">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                <div style="margin-top:0.5em"><asp:Button ID="Button2" runat="server" Text="Post Picture" OnClick="Button2_Click"  ondbclick="showimagefeed()"/></div>
                                
                            </div>
                            <div id="videocontainer"></div> 

                            </form>
                    
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
                      
                        <h5 class="card-title" style="font-family: 'Source Sans Pro';"><img src="images.jpeg" class="img-fluid rounded-start" alt="..." style="width: 2vw; height:5vh; margin-right: 1em; border-radius: 19px;">
                       Profile name</asp:Label></h5> <br> 
                        
                    </div>
                    <div id="image-feed">   
                      
                        <h5 class="card-title" style="font-family: 'Source Sans Pro';"><img src="images.jpeg" class="img-fluid rounded-start" alt="..." style="width: 2vw; height:5vh; margin-right: 1em; border-radius: 19px;">
                        Profile name</h5> <br> 
                        <img id="uploadimage" runat="server" src="" />
                    </div>
                    

                     <div id="feed">
                     <div class="card  " style="background-color: rgb(20, 24, 36); color: white; border: 1px solid grey; width: 96%; margin:1em; font-family: 'Source Sans Pro'; " >
                        <div class="card-body">
                            
                          <h5 class="card-title" style="font-family: 'Source Sans Pro';"><img src="2048px-Microsoft_logo.svg-removebg-preview.png" class="img-fluid rounded-start" alt="..." style="width: 2vw; height:2; margin-right: 1em;">Microsoft Security &nbsp<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-circle-fill" viewBox="0 0 16 16">
                            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z" style="color:rgb(7, 110, 195)"/>
                          </svg></h5>
                          <p class="card-text" style="font-family: 'Source Sans Pro';">Uncover, investigate, and respond to threats in minutes with intelligent guidance informed by 65 trillion daily signals: <a href="http://" style="text-decoration:none;">https://msft.it/6014gGJPI?twclid=21qzlev78chkfdi38pou1rlocs #AI #InfoSec</a> </p>

                          <div class="card" style="margin-left: 4em; width: 90%; background-color: rgb(20, 24, 36); font-family: 'Source Sans Pro';">
                            <div class="row g-0">
                              <div class="col-md-4">
                                <img src="2048px-Microsoft_logo.svg-removebg-preview.png" class="img-fluid rounded-start" alt="..." style="width: 15vw; max-height: 27vh;">
                              </div>
                              <div class="col-md-8 d-flex align-items-center">
                                <div class="card-body">
                                  <h5 class="card-title" style="color: grey; font-family: 'Source Sans Pro';">azure.microsoft.com</h5>
                                  <p class="card-text" style="color: white; font-family: 'Source Sans Pro';">
                                    Inside Azure for IT | Microsoft Azure</p>
                                  <p class="card-text" style="color: grey; font-family: 'Source Sans Pro';">
                                    Watch this video series to learn to optimize your Azure infrastructure. Explore the latest tips, tools,</p>
                                </div>
                              </div>
                            </div>
                          </div>
                          

                        </div>
                        <div class="sociallinks">
                        <div class="forsocial"><button>Like</button></div>
                        <div class="forsocial"><button>Comment</button></div>
                        <div class="forsocial"><button>Share</button></div>
                      </div>
                      </div>
                      


                      <div class="card  " style="background-color: rgb(20, 24, 36); color: white; border: 1px solid grey; width: 96%; margin:1em; font-family: 'Source Sans Pro'; " >
                        <div class="card-body">
                            
                          <h5 class="card-title" style="font-family: 'Source Sans Pro';"><img src="image-removebg-preview (1).png" class="img-fluid rounded-start" alt="..." style="width: 2vw; height:2; margin-right: 1em;">BytePitch - Software Labs</h5>
                          <p class="card-text" style="font-family: 'Source Sans Pro';">We have launched our new website 🎉

                            Follow the link to see it <a href="http://" style="text-decoration:none;">👉 https://buff.ly/43DKWMz</a>
                            
                            Lets us know how you like it, we appreciate any feedback!  <a href="http://" style="text-decoration:none;"> #softwareengineering #newwebsite</a> </p>
                            <div class="imageforfeed">
                            <img src="Capture.PNG" alt="" style="width: 50vw; height:65vh;;">
                        </div>
                        </div>
                     <div class="sociallinks">
                            <div class="forsocial"><button>Like</button></div>
                            <div class="forsocial"><button>Comment</button></div>
                            <div class="forsocial"><button>Share</button></div>
                          </div>
                    </div>
                       
    

                        <div class="card  " style="background-color: rgb(20, 24, 36); color: white; border: 1px solid grey; width: 96%; margin:1em; font-family: 'Source Sans Pro'; " >
                            <div class="card-body">
                                
                              <h5 class="card-title" style="font-family: 'Source Sans Pro';"><img src="dp.png" class="img-fluid rounded-start" alt="..." style="width: 2vw; height:2; margin-right: 1em; border-radius: 19pxs;">
                                Barsee 🐶</h5>
                              <p class="card-text" style="font-family: 'Source Sans Pro';">Now just get the NVIDIA AI eye contact thing and your good to go.

                                It allows you to maintain eye contact on camera while also reading the chatbox.<a href="http://" style="text-decoration:none;">👉 https://buff.ly/43DKWMz</a>
                                
                                  <a href="http://" style="text-decoration:none;"> #softwareengineering #newwebsite</a> </p>
                                
                            </div>  
                        <div class="sociallinks">
                        <div class="forsocial"><button>Like</button></div>
                        <div class="forsocial"><button>Comment</button></div>
                        <div class="forsocial"><button>Share</button></div>
                      </div>
                      </div>

                      <div class="card  " style="background-color: rgb(20, 24, 36); color: white; border: 1px solid grey; width: 96%; margin:1em; font-family: 'Source Sans Pro'; " >
                        <div class="card-body">
                            
                          <h5 class="card-title" style="font-family: 'Source Sans Pro';"><img src="dp2.PNG" class="img-fluid rounded-start" alt="..." style="width: 2vw; height:2; margin-right: 1em; ">
                            Bungie Help&nbsp<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-circle-fill" viewBox="0 0 16 16">
                                <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z" style="color:rgb(7, 110, 195)"/>
                              </svg></h5>
                          <p class="card-text" style="font-family: 'Source Sans Pro';">DESTINY 2 MAINTENANCE <br> 
                            ❖ Update 7.1.0.1 
                             <br>
                            Maintenance has begun. 
                              <br>
                            REMAINING TIMELINE  
                            <br>
                            ❖ Player Removal: 8:15 AM PDT (-7 UTC) <br>
                            ❖ Expected log in: 10 AM  <br>
                            ❖ Expected end: 11 AM  <br>
                             More info:<a href="http://" style="text-decoration:none;">👉 https://buff.ly/43DKWMz</a>
                            
                              <a href="http://" style="text-decoration:none;"> #softwareengineering #newwebsite</a> </p>
                            
                        </div>  
                        <div class="card" style="margin-left: 4em; width: fit-content; background-color: rgb(20, 24, 36); font-family: 'Source Sans Pro';">
                          <div class="row g-0">
                            <div class="col-md-4">
                              <img src="360_F_133480376_PWlsZ1Bdr2SVnTRpb8jCtY59CyEBdoUt.jpg" class="img-fluid rounded-start" alt="..." style="width: 15vw; max-height: 27vh;">
                            </div>
                            <div class="col-md-8 d-flex align-items-center">
                              <div class="card-body">
                                <h5 class="card-title" style="color: grey; font-family: 'Source Sans Pro';">help.bungie.net</h5>
                                <p class="card-text" style="color: white; font-family: 'Source Sans Pro';">
                                  Destiny Server and Update Status</p>
                                <p class="card-text" style="color: grey; font-family: 'Source Sans Pro';">
                                  Occasionally, Destiny services may be brought offline to undergo scheduled or emergency maintenance, or to....</p>
                              </div>
                            </div>
                          </div>
                        </div>
                        
                    <div class="sociallinks">
                    <div class="forsocial"><button>Like</button></div>
                    <div class="forsocial"><button>Comment</button></div>
                    <div class="forsocial"><button>Share</button></div>
                  </div>
                  </div>
                      
                    </div>
                     <hr>
                     
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
                            Victoria Charlotte
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



    imageLabel = document.getElementById('img');
    videoLabel = document.getElementById('vid');
    statusLabel = document.getElementById('stat');

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



function showImage() {
    document.getElementById("imagecontainer").style.display = "block";
    document.getElementById("video").style.display = "none";
}

function showVideo() {
    document.getElementById("imagecontainer").style.display = "none";
    document.getElementById("video").style.display = "block";
}

   

</script> 
   

</html>
