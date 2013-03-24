<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterConsumer.aspx.cs" Inherits="RegisterConsumer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 960px;
        }
        .style2
        {
            color: #FFFFFF;
            font-size: xx-large;
        }
        .style3
        {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td align="center" bgcolor="#FF6600" class="style2" colspan="5" valign="middle">
                    <strong>Consumer Registration Form</strong></td>
            </tr>
            <tr>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" valign="middle">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" valign="middle">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" colspan="2" valign="middle">
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                    <br />
                </td>
                <td align="center" valign="middle">
                    <asp:TextBox ID="txt_firstname" runat="server"></asp:TextBox>
                </td>
                <td align="center" valign="middle">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" colspan="2" valign="middle">
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                    <br />
                </td>
                <td align="center" valign="middle">
                    <asp:TextBox ID="txt_lastname" runat="server"></asp:TextBox>
                </td>
                <td align="center" valign="middle">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" colspan="2" valign="middle">
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
                    <br />
                </td>
                <td align="center" valign="middle">
                    <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
                </td>
                <td align="center" valign="middle">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" colspan="2" valign="middle">
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                    <br />
                </td>
                <td align="center" valign="middle">
                    <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td align="center" valign="middle">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" colspan="2" valign="middle">
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="E-Mail"></asp:Label>
                    <br />
                </td>
                <td align="center" valign="middle">
                    <asp:TextBox ID="txt_email" runat="server" ></asp:TextBox>
                </td>
                <td align="center" valign="middle">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" colspan="2" valign="middle">
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Phone Number"></asp:Label>
                    <br />
                </td>
                <td align="center" valign="middle">
                    <asp:TextBox ID="txt_phoneno" runat="server"></asp:TextBox>
                </td>
                <td align="center" valign="middle">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" colspan="3" valign="middle">
                    <br />
                    <asp:Button ID="Button1" runat="server" Height="32px" onclick="Button1_Click" 
                        style="font-weight: 700; color: #FFFFFF; background-color: #FF3300" 
                        Text="Submit" Width="91px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" Enabled="False" 
                        NavigateUrl="~/Default.aspx">Login</asp:HyperLink>
                    <br />
                </td>
                <td align="center" valign="middle">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style3" valign="middle">
                </td>
                <td align="center" class="style3" colspan="3" valign="middle">
                    <asp:Label ID="Label7" runat="server" style="color: #FF0000; font-weight: 700"></asp:Label>
                </td>
                <td align="center" class="style3" valign="middle">
                </td>
            </tr>
            <tr>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" valign="middle">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" valign="middle">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
