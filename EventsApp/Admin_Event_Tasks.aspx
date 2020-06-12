<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Event_Tasks.aspx.cs" Inherits="EventsApp.Admin_Event_Tasks" %>

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
 <asp:LinkButton ID="LinkButton1" runat="server" OnClick="AdminAnncBtn_Click">Announcements</asp:LinkButton>
  <asp:LinkButton ID="TasksBtn" runat="server" OnClick="TasksBtn_Click" >Tasks</asp:LinkButton>
  <asp:LinkButton ID="Volunteers" runat="server" OnClick="Volunteers_Click" >Volunteers</asp:LinkButton>
   <asp:LinkButton ID="Participants" runat="server" OnClick="Participants_Click" >Participants</asp:LinkButton>
            <asp:LinkButton ID="Feedback" runat="server" OnClick="Feedback_Click1"  >Feedback</asp:LinkButton>

            <asp:LinkButton ID="Logout" runat="server" OnClick="Logout_Click" >Logout</asp:LinkButton>
       </div>
        <div class="container-login100" style="background-image: url('Content/bg08.jpg');">
       
            <br />
            <br />
        Selected Event&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="EventN" runat="server"  ReadOnly="True" Width="284px" Height="30px"></asp:TextBox>
        <br />
        <br />
        Add Tasks&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="284px"></asp:TextBox>
        <br />
        <br />
        Additional Info&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="284px"></asp:TextBox>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="AddTaskBtn" runat="server" Font-Bold="True" Font-Size="Large" Height="36px" OnClick="AddTaskBtn_Click" Text="Add Task" Width="143px" />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="433px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" PageSize="5">
            <Columns>
                <asp:BoundField DataField="Tasks" HeaderText="Tasks" SortExpression="Tasks" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:BoundField DataField="Volunteer" HeaderText="Volunteer" SortExpression="Volunteer" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Tasks], [Notes], [Volunteer] FROM [Tasks] WHERE ([Event] = @Event)">
            <SelectParameters>
                <asp:CookieParameter CookieName="cName" Name="Event" Type="String" DefaultValue="Student Orientation" />
            </SelectParameters>
        </asp:SqlDataSource>
            <br />
            <br />
            <br />
            Assign Volunteers to Tasks<br />
            <br />
            Select Task&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="Tasks" DataValueField="Tasks" Height="27px" Width="211px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"  SelectCommand="SELECT [EmailAddress] FROM [User_Details] WHERE (([Role] = @Role) AND ([Event] = @Event))">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="Volunteer" Name="Role" QueryStringField="Role" Type="String" />
                    <asp:QueryStringParameter DefaultValue="Unassigned" Name="Event" QueryStringField="Event" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            Select Volunteer&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="EmailAddress" DataValueField="EmailAddress" Height="28px" Width="209px">
            </asp:DropDownList>
            <br />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Tasks] FROM [Tasks] WHERE ([Volunteer] = @Volunteer)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="Unassigned" Name="Volunteer" QueryStringField="Unassigned" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Submit" />
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
