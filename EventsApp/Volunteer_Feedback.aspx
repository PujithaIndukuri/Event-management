<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Volunteer_Feedback.aspx.cs" Inherits="EventsApp.Volunteer_Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
 *{
  box-sizing: border-box;
  font-family: Arial, Helvetica, sans-serif;
}

body {
      margin: 0;
  font-family: Arial, Helvetica, sans-serif;

}

/* Style the top navigation bar */
.topnav {
  overflow: hidden;
  background-color: #333;
}

/* Style the topnav links */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
        width: 85px;
    }

/* Change color on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Style the content */
.content {
  background-color: #ddd;
  padding: 10px;
  /*height: 211px;  Should be removed. Only for demonstration */
        margin-top: 4px;
    }

/* Style the footer */
.footer {
  background-color: #f1f1f1;
  padding: 10px;
}

</style>
</head>
<body>
    <form id="form1" runat="server">
          <div class="topnav">
  <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"  >Events</asp:LinkButton>
  <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"  >Announcements</asp:LinkButton>
  <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"  >Tasks</asp:LinkButton>
  <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click1"  >Feedback</asp:LinkButton>

  
     <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" >Logout</asp:LinkButton>
</div>

        <div class="container-login100" style="background-image: url('Content/bg08.jpg');">
          

            <br />
            <br />
            Share Feedback&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="87px" Width="324px"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="99px" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
          

</div>

    </form>
</body>
</html>
