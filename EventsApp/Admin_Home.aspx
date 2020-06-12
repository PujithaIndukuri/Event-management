<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Home.aspx.cs" Inherits="EventsApp.Admin_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        
     <script src="Content/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Content/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="Content/vendor/bootstrap/js/popper.js"></script>
	<script src="Content/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Content/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Content/vendor/daterangepicker/moment.min.js"></script>
	<script src="Content/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="Content/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="Content/js/main.js"></script>

    <script src="https://code.iconify.design/1/1.0.3/iconify.min.js"></script>

    <link rel="icon" type="image/png" href="Content/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Content/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Content/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Content/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Content/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Content/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Content/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Content/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Content/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Content/util.css">
	<link rel="stylesheet" type="text/css" href="Content/main.css">
</head>
<body>
    <div class="limiter">
		<div class="container-login100" style="background-image: url('Content/bg-01.jpg');">
			<div class="wrap-login100">
    <form id="form1" runat="server">
        
        <span class="login100-form-logo">
            <span class="iconify" data-icon="zmdi-landscape" data-inline="false"></span> </span>
            <span class="login100-form-title p-b-34 p-t-27">
						Eventz
					</span>


        <!--Wirite code for Welcome @user -->
       
        
        <div class="container-login100-form-btn" >
            
         <asp:LinkButton class="login100-form-btn" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Events</asp:LinkButton>
                </div>
        
        <br/>
            <div class="container-login100-form-btn">
         <asp:LinkButton class="login100-form-btn" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Create New Event</asp:LinkButton>
                </div>
          
    </form>
            </div>
             </div>
    </div>
</body>
</html>
