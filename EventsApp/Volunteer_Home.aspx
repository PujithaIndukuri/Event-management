<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Volunteer_Home.aspx.cs" Inherits="EventsApp.Volunteer_Home" %>

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
  <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"  >Events</asp:LinkButton>
  <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"  >Announcements</asp:LinkButton>
  <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"  >Tasks</asp:LinkButton>
  <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click1"  >Feedback</asp:LinkButton>
  <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" >Logout</asp:LinkButton>
</div>
   <div class="container-login100" style="background-image: url('Content/bg08.jpg');">
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="EventName" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="702px" >
            <Columns>
                <asp:BoundField DataField="EventName" HeaderText="EventName" ReadOnly="True" SortExpression="EventName" />
                <asp:BoundField DataField="EventDate" HeaderText="EventDate" SortExpression="EventDate" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="Agenda" HeaderText="Agenda" SortExpression="Agenda" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [EventDetails]"></asp:SqlDataSource>
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
