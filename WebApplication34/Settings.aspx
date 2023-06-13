<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="WebApplication34.Settings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="Settings.css">
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
                          <li class="activepage"><a href="Settings.aspx">&nbsp Settings</a> </li>
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
                                        <!-- Page Section -->
    <section>
        <div id="scontainer">
                                        <!-- Scontainer Pages-link -->
            <div id="sidebar">
                    <div class="navlinks">
                     <ul>
                      <li class="list"><a href="Home.aspx">&nbsp Home</a> </li>
                      <li class="list"><a href="Profile.aspx">&nbsp Profile</a> </li>
                      <li class="activepage"><a href="Settings.aspx">&nbsp Settings</a> </li>
                      <li class="list"><a href="Notifications.aspx">&nbsp Notifications</a> </li>
                      <li class="list"><a href="Messages.aspx">&nbsp Messages</a> </li>
                     </ul>
                 </div>
                </div>
                                         <!-- Main Page -->
                <div id="feedcontentnav">
                    <p>
                        <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample1" aria-expanded="false" aria-controls="multiCollapseExample1" style="color: white; margin:2em 0em 0em 1em; ">Account Information</button>
                      </p>
                      <div class="row">
                        <div class="col">
                          <div class="collapse multi-collapse" id="multiCollapseExample1" >
                            <div class="card card-body" style="margin-left: 23em; margin-right: 1em; margin-top: 0em; background-color: rgb(20, 24, 36);">
                                <form class="form-floating" style=" background-color: rgb(20, 24, 36); margin-top: 0.5em; " runat="server">
                                    <asp:TextBox type="text" class="form-control" ID="username" placeholder="name@example.com" value="@c23_Victoria" style=" background-color: rgb(20, 24, 36); color:grey" runat="server"/>
                                    <label for="floatingInputValue">Username</label>
                                    <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button1_Click" class="update"/>
                                  </form>
                                  <form class="form-floating" style=" background-color: rgb(20, 24, 36);margin-top: 0.5em;">
                                  <input type="email" class="form-control" id="email" placeholder="name@example.com" value="+9233123456789" style=" background-color: rgb(20, 24, 36); color:grey" runat="server">
                                  <label for="floatingInputValue">Phone</label>
                                </form>
                                <form class="form-floating" style=" background-color: rgb(20, 24, 36);margin-top: 0.5em;">
                                <input type="email" class="form-control" id="phone" placeholder="name@example.com" value="victoria@example.com" style=" background-color: rgb(20, 24, 36); color:grey" runat="server">
                                    <label for="floatingInputValue">Email</label>
                                </form>
                                <form class="form-floating" style=" background-color: rgb(20, 24, 36);margin-top: 0.5em;">
                                 <input type="phone" class="form-control" id="country" placeholder="name@example.com" value="Pakistan" style=" background-color: rgb(20, 24, 36); color:grey">
                                    <label for="floatingInputValue">Country</label>
                                    
                                </form>
                                
                                
                            </div>
                          </div>
                        </div>
                      </div>
                      <p>
                        <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2" style="color: white; margin:0em 0em 0em 1em; ">Security</button>  
                      </p>
                      <div class="row">
                        <div class="col">
                          <div class="collapse multi-collapse" id="multiCollapseExample2" >
                            <div class="card card-body" style="margin-left: 23em; margin-right: 1em; margin-top: 0em; background-color: rgb(20, 24, 36);">
                                <small style="color: grey;">Manage your account's security.</small>
                            <h4 style="color: white;">Two-factor authentication</h4>
                            <small style="color: grey;">Help protect your account from unauthorized access by requiring a second authentication method in addition to your Twitter password. You can choose a text message, authentication app, or security key. <a href="">Learn more</a> </small>
                            Two-factor authentication
                             <h4 style="color: white;">Additional password protection</h4>
                            <small style="color: grey;">Enabling this setting adds extra security to your account by requiring additional information to reset your password. If enabled, you must provide either the phone number or email address associated with your account in order to reset your password.</small> 
                            </div>
                          </div>
                        </div>
                      </div>
                      <p>
                        <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample3" aria-expanded="false" aria-controls="multiCollapseExample3" style="color: white; margin:0em 0em 0em 1em; ">Accessibility</button>  
                      </p>
                      <div class="row">
                        <div class="col">
                          <div class="collapse multi-collapse" id="multiCollapseExample3" >
                            <div class="card card-body" style="margin-left: 23em; margin-right: 1em; margin-top: 0em; background-color: rgb(20, 24, 36);">
                                <div class="form-check form-check-reverse">
                                    <input class="form-check-input" type="checkbox" value="" id="reverseCheck1">
                                    <label class="form-check-label" for="reverseCheck1" style="color: white; float: left; margin-bottom: 0.5em">
                                        Reduce motion
                                    </label>
                                  </div>
                                  <small style="color: grey; text-align: left;margin-bottom: 0.5em" >Limits the amount of in-app animations, including live engagement counts.</small>
                                  <div class="form-check form-check-reverse">
                                    <input class="form-check-input" type="checkbox" value="" id="reverseCheck1">
                                    <label class="form-check-label" for="reverseCheck1" style="color: white; float: left; margin-bottom: 0.5em">
                                        Increase color contrast
                                    </label><br>
                                    
                                  </div>
                                  <small style="color: grey; text-align: left;margin-bottom: 0.5em" >Improves legibility by increasing the contrast between text and background colors.</small>

                                  <div class="form-check form-switch form-check-reverse">
                                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckReverse">
                                    <label class="form-check-label" for="flexSwitchCheckReverse" style="color: white; float: left;margin-bottom: 0.5em">Autoplay</label>
                                  </div>
                                  <small style="color: grey; text-align: left;margin-bottom: 0.5em" >Select whether videos and GIFs should play automatically on this device.</small>
                            </div>
                          </div>
                        </div>
                      </div>

                      <p>
                        <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample4" aria-expanded="false" aria-controls="multiCollapseExample4" style="color: white; margin:0em 0em 0em 1em; ">Display</button>  
                      </p>
                      <div class="row">
                        <div class="col">
                          <div class="collapse multi-collapse" id="multiCollapseExample4" >
                            <div class="card card-body" style="margin-left: 23em; margin-right: 1em; margin-top: 0em; background-color: rgb(20, 24, 36);">
                                <div id="btns" style="display: flex; justify-content: space-around;">
                                <div class="form-check form-switch form-check-reverse">
                                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckReverse">
                                    <label class="form-check-label" for="flexSwitchCheckReverse" style="color: white; float: left;margin-bottom: 0.5em">Default</label>
                                  </div>
                                  <div class="form-check form-switch form-check-reverse">
                                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckReverse">
                                    <label class="form-check-label" for="flexSwitchCheckReverse" style="color: white; float: left;margin-bottom: 0.5em">Dim</label>
                                  </div>
                                  <div class="form-check form-switch form-check-reverse">
                                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckReverse">
                                    <label class="form-check-label" for="flexSwitchCheckReverse" style="color: white; float: left;margin-bottom: 0.5em">Light</label>
                                  </div></div>
                            </div>
                          </div>
                        </div>
                      </div>

                      <p>
                        <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample5" aria-expanded="false" aria-controls="multiCollapseExample5" style="color: white; margin:0em 0em 0em 1em; ">Language</button>  
                      </p>
                      <div class="row">
                        <div class="col">
                          <div class="collapse multi-collapse" id="multiCollapseExample5" >
                            <div class="card card-body" style="margin-left: 26em; margin-right: 1em; margin-top: 0em; background-color: rgb(20, 24, 36);">
                                <div class="dropdown">
                                    <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: white; border: 1px solid grey; width: 20vw; text-align: left;">
                                      Language
                                    </button>
                                    <ul class="dropdown-menu" style="width: 20vw">
                                      <li><a class="dropdown-item" href="#">English</a></li>
                                      <li><a class="dropdown-item" href="#">Urdu</a></li>
                                      <li><a class="dropdown-item" href="#">Turkish</a></li>
                                    </ul>
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
</html>
