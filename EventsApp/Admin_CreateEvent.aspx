<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_CreateEvent.aspx.cs" Inherits="EventsApp.Admin_CreateEvent" %>

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

        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Events</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >Logout</asp:LinkButton>
</div>
        <div class="container-login100" style="background-image: url('Content/bg08.jpg');">
        <br />
        New Event<br />
        <br />

        <asp:Label ID="Label1" runat="server" Text="Event Name"></asp:Label>

        &nbsp;&nbsp;&nbsp;&nbsp;

        <asp:TextBox ID="EventNameTxt" runat="server" Height="27px" OnTextChanged="EventNameTxt_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Event Date"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="EventDateTxt" runat="server" CausesValidation="True" OnTextChanged="TextBox2_TextChanged" TextMode="Date" Height="27px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Location"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="LocationTxt" runat="server" OnTextChanged="LocationTxt_TextChanged" Height="27px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Agenda"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="AgendaTxt" runat="server" Height="76px" Width="246px" OnTextChanged="AgendaTxt_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="EventSubmit" runat="server" OnClick="EventSubmit_Click" Text="Submit" />
&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cancel" />
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
