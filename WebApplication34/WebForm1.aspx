<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication34.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Faculty Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #d6cbd3;
        }
        
        .main-content {
            padding: 20px;
            color: #000; /* Dark Black */
            background-color:#d64161 ;
        }
        
        .main-content h2 {
            font-size: 20px;
            color: #d64161; /* Dark Pink */
            margin-bottom: 10px;
        }
        
        .upload-form {
            margin-top: 20px;
            padding: 10px;
            background-color: #fdd7e8; /* Light Pink */
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            color: #000; /* Dark Black */
        }
        
        .upload-form h3 {
            color: #000; /* Dark Black */
            font-size: 18px;
            margin-top: 0;
        }
        
        .upload-form input[type="file"] {
            margin-bottom: 10px;
            width: 100%;
        }
        
        .upload-form input[type="submit"] {
            background-color: #d64161; /* Dark Pink */
            color: #fff; /* White */
            border: none;
            padding: 8px 16px;
            font-size: 14px;
            cursor: pointer;
            border-radius: 3px;
        }
    </style>
</head>
<body>
    <div class="main-content">
        <h2>Welcome Faculty!</h2>
        <p style="color: #000; font-size: 16px;">Faculty dashboard</p>
  <form  runat ="server"> 
        <div class="upload-form">
            <h3>Upload Lecture Materials</h3>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Upload" Onclick="Button2_Click" /> 
        </div>
   
        <div class="upload-form">
            <h3>Upload Assignment</h3>           
                <asp:FileUpload ID="FileUpload2" runat="server" />       
        </div>

      <div class="upload-form">
            <h3>Upload Quiz Marks</h3>
               <asp:FileUpload ID="FileUpload3" runat="server" />
             <br />
                <asp:Button ID="Button2" runat="server" Text="Upload"  />
        </div>            
  </form>
        </div>       
</body>
</html>