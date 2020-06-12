<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home_Page.aspx.cs" Inherits="EventsApp.Home_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Events Application</title>
   
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

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
    



    <style type="text/css">
        .auto-style1 {
            font-size: 16px;
            color: #FFFFFF;
        }
    </style>



</head>
<body>
    <div class="limiter">
		<div class="container-login100" style="background-image: url('Content/bg-01.jpg');">
			<div class="wrap-login100">
    <form id="form1" class="login100-form validate-form" runat="server">
             
            <div >
             <asp:HyperLink ID="HyperLink2" runat="server"  ImageUrl="Content/AboutUs.jpg" NavigateUrl="~/Register.aspx"> </asp:HyperLink>
            </div>
        <div>
            
            <span class="login100-form-logo">
            <span class="iconify" data-icon="zmdi-landscape" data-inline="false"></span> </span>
            <span class="login100-form-title p-b-34 p-t-27">
						Eventz
		   </span>
         
           
        </div>

       <div class="wrap-input100 validate-input">
            <div >
                <asp:Label font-family="Poppins-Regular"  font-size="20px"  ForeColor="White" runat="server" >UserName</asp:Label>
            </div>
            <div>
                <asp:TextBox  class="input100" autocomplete="off" ID="TextBox1" runat="server"> </asp:TextBox>
            </div>
       </div>

        <div class="wrap-input100 validate-input"  data-validate = "Enter Password">
            <div >
                <asp:Label font-family="Poppins-Regular"   font-size="20px"  ForeColor="White" runat="server" >Password</asp:Label>
            </div>
            <div>
                 <asp:TextBox  class="input100" TextMode="Password" autocomplete="off" ID="TextBox2" runat="server"> </asp:TextBox>
            </div>

		</div>
        <div class="container-login100-form-btn">
						<b> <asp:LinkButton class="login100-form-btn" ID="LinkButton1" runat="server" Text="Login" OnClick="Button1_Click" /> </b>
        </div>

        <div class="text-center p-t-90">
		
       <asp:HyperLink class="txt1" ID="HyperLink1" runat="server" Text="New User? Register Here" NavigateUrl="~/Register.aspx">  </asp:HyperLink>
        </div>
         
        
    </form>
                </div>
            </div>
        </div>
</body>
</html>
