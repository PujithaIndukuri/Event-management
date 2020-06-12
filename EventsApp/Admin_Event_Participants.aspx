<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Event_Participants.aspx.cs" Inherits="EventsApp.Admin_Event_Participants" %>

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
 <asp:LinkButton ID="AdminAnncBtn" runat="server" OnClick="AdminAnncBtn_Click">Announcements</asp:LinkButton>
  <asp:LinkButton ID="TasksBtn" runat="server" OnClick="TasksBtn_Click" >Tasks</asp:LinkButton>
  <asp:LinkButton ID="Volunteers" runat="server" OnClick="Volunteers_Click" >Volunteers</asp:LinkButton>
   <asp:LinkButton ID="Participants" runat="server" OnClick="Participants_Click" >Participants</asp:LinkButton>
            <asp:LinkButton ID="Feedback" runat="server" OnClick="Feedback_Click"  >Feedback</asp:LinkButton>
            <asp:LinkButton ID="Logout" runat="server" OnClick="Logout_Click"  >Logout</asp:LinkButton>
       </div>
        <div class="container-login100" style="background-image: url('Content/bg08.jpg');">


        <br />
        <br />
        Selected Event
        <asp:TextBox ID="EventN" runat="server"  ReadOnly="True" Width="277px"></asp:TextBox>
        <div>
            <br />
            <br />
            Registered Participants<br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EmailAddress" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" PageSize="5">
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" ReadOnly="True" SortExpression="EmailAddress" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], [EmailAddress], [PhoneNumber] FROM [User_Details] WHERE (([Role] = @Role) AND ([Event] = @Event))">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="Participant" Name="Role" QueryStringField="Role" Type="String" />
                <asp:CookieParameter CookieName="cName" DefaultValue="Event1" Name="Event" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
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
