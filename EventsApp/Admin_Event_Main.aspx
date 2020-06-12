<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Event_Main.aspx.cs" Inherits="EventsApp.Admin_Event_Main" %>

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
           <asp:LinkButton ID="Logout" runat="server" OnClick="Logout_Click">Logout</asp:LinkButton>
       </div>
        <div class="container-login100" style="background-image: url('Content/bg08.jpg');">
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        &nbsp;
        
        &nbsp;&nbsp;
        <br />
        <strong>Selected Event</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="EventN" runat="server"  ReadOnly="True" Width="277px" ValidateRequestMode="Disabled"></asp:TextBox>
        <br />
        <br />
        <br />
        <strong>Post Announcement&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="AnncTxtBox" runat="server" Height="61px" MaxLength="1000" Rows="5" TextMode="MultiLine" Width="248px"></asp:TextBox>
        <br />
        <div style="margin-left: 40px">
            <br />
            <asp:RadioButtonList ID="RoleList" runat="server" Font-Size="Large">
                <asp:ListItem>Volunteer</asp:ListItem>
                <asp:ListItem>Participant</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <br />
        <div style="margin-left: 80px">
            <asp:Button ID="PostAnncBtn" runat="server" OnClick="Button1_Click" Text="Submit" />
        </div>
        <br />
        <br />
        <strong>Posted Announcements</strong><br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="426px">
            <Columns>
                <asp:BoundField DataField="Post" HeaderText="Post" SortExpression="Post" />
                <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Post], [Role] FROM [Announcements] WHERE ([Event] = @Event)">
            <SelectParameters>
                <asp:CookieParameter CookieName="Name" Name="Event" Type="String" />
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
            </div>
    </form>
    
</body>
</html>
