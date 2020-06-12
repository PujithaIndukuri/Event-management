<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Participant_Registered_Event.aspx.cs" Inherits="EventsApp.Participant_Registered_Event" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> </title>
  

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
  <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >Events</asp:LinkButton>
  <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >Registered Event</asp:LinkButton>
    <asp:LinkButton ID="Logout" runat="server" OnClick="Logout_Click" >Logout</asp:LinkButton>
</div>

         <div class="container-login100" style="background-image: url('Content/bg08.jpg');">
 
        <p>
            &nbsp;</p>
             <p>
                 Event
            Announcements</p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" PageSize="5" Width="548px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:BoundField DataField="Post" HeaderText="Announcements" SortExpression="Post" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Post] FROM [Announcements] WHERE (([Role] = @Role) AND ([Event] = @Event2))">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="Participant" Name="Role" QueryStringField="Role" Type="String" />
                <asp:CookieParameter CookieName="cName1" DefaultValue="Student Orientation" Name="Event2" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
             Cancel registration?&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button2" runat="server" Text="Cancel"  />
             <br />
             <br />
&nbsp;<br />
        Share Feedback :&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" Height="70px" Width="304px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
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

