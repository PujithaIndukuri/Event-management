<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EventsApp.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Event Management</title>
    <link rel="stylesheet" type="text/css" href="Content/main.css" />
    <link href="Content/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 248px;
        }
        .auto-style2 {
            width: 313px;
        }
        .auto-style3 {
            width: 425px;
        }
    </style>
</head>

<body>
    <div class="container-login100" style="background-image: url('Content/bg-01.jpg');">
		
			

    <h1 align="center" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Registration Form  </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</h1>
    
    <form id="form1" runat="server">
        <div>
                 <table class="center"> 
                 <tr>
                    <td><b>First Name :</b></td>  
                    <td>  
                        <asp:TextBox class="field" ID="TextBox1" runat="server"> </asp:TextBox>  
                    </td>
                     <td class="auto-style1">  
                            <asp:RequiredFieldValidator Class="validate" ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter your First Name"   
                            ></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                  
                <tr>
                    <td>Last Name :</td>  
                    <td class="auto-style3">  
                        <asp:TextBox class="field" ID="TextBox2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter your Last Name"></asp:TextBox>  
                    </td>
                    <td class="auto-style1">  
                        <asp:RequiredFieldValidator Class="validate" ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter your Last Name"   
                                ></asp:RequiredFieldValidator>  
                        </td>  
               </tr>

                 <tr>
                    <td>Email Address :</td>  
                    <td class="auto-style3">  
                        <asp:TextBox class="field" ID="TextBox3" runat="server"></asp:TextBox>  
                    </td>

                      <td class="auto-style1">  
                            <asp:RequiredFieldValidator Class="validate" ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter your Email ID"   
                            ></asp:RequiredFieldValidator>  
                      </td>

                     <td class="auto-style2">  
                            <asp:RegularExpressionValidator Class="validate" ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid Email Id"></asp:RegularExpressionValidator>  
                     </td>


               </tr>

                 <tr>
                    <td>Phone Number :</td>  
                    <td class="auto-style3">  
                        <asp:TextBox class="field" ID="TextBox4" runat="server"></asp:TextBox>  
                    </td>

                     <td class="auto-style1">  
                         <asp:RequiredFieldValidator Class="validate" ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter your Phone No"   
                            ></asp:RequiredFieldValidator>  
                        </td>  
                     <td class="auto-style2">  
                            <asp:RegularExpressionValidator Class="validate" ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ValidationExpression="\(?\d{3}\)?-? *\d{3}-? *-?\d{4}" ErrorMessage="Invalid Phone Number"></asp:RegularExpressionValidator>  
                     </td>
                       
               </tr>

                 <tr>
                    <td>Role :</td>  
                    <td>  
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">  
                            
                               <asp:ListItem>Volunteer</asp:ListItem>  
                            <asp:ListItem>Participant</asp:ListItem>
                           
                        </asp:RadioButtonList>  
                    </td>
                     <td class="auto-style1">  
                         <asp:RequiredFieldValidator Class="validate" ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Please select the Role"   
                            ></asp:RequiredFieldValidator>  
                        </td> 
               </tr>

                <tr>
                    <td>Password :</td>  
                    <td class="auto-style3">  
                        <asp:TextBox class="field" ID="TextBox5" TextMode="Password" runat="server" ></asp:TextBox>  
                    </td>
                     <td class="auto-style1">  
                         <asp:RequiredFieldValidator Class="validate" ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please select the Password"   
                            ></asp:RequiredFieldValidator>  
                        </td>

                    <td class="auto-style2">  
                            <asp:RegularExpressionValidator Class="validate" ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,15}$" ErrorMessage="Password should contain Uppercase Lowercase and number and special chaaracter"></asp:RegularExpressionValidator>  
                     </td>
               </tr>

                 <tr>  
                     <td></td>
                    <td  style="text-align: center">  
                        <asp:Button class="btn" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />  
                    </td>
                     <td></td>
                </tr> 

                </table>
        </div>
    </form>
    </div>            
</body>
</html>
