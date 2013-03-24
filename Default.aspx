<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
            font-size: xx-large;
            font-family: Broadway;
            color: #FFFFFF;
            background-color: #FFFFFF;
        }
        .style3
        {
            font-family: "Copperplate Gothic Bold";
            color: #000000;
            background-color: #FFFFFF;
        }
        .style4
        {
            height: 23px;
        }
        .style5
        {
            height: 26px;
        }
        .style6
        {
            color: #000000;
        }
        .style7
        {
            color: #000000;
            font-weight: bold;
            background-color: #FFFFFF;
        }
        .style9
        {
            font-weight: bold;
            color: #000000;
        }
        .style10
        {
            color: #000000;
            font-size: large;
            height: 62px;
            background-color: #FFFFFF;
        }
        .style11
        {
            font-weight: bold;
            color: #000000;
            font-size: x-large;
            height: 62px;
            background-color: #FFFFFF;
        }
        .style12
        {
            color: #000000;
        }
        .style13
        {
            font-size: xx-large;
            font-family: Broadway;
            color: #FFFFFF;
            text-align: left;
            background-color: #FFFFFF;
        }
        .style14
        {
            height: 26px;
            background-color: #FFFFFF;
        }
        .style15
        {
            height: 26px;
            font-weight: bold;
            background-color: #FFFFFF;
        }
        .style16
        {
            background-color: #FFFFFF;
        }
        .style17
        {
            font-weight: bold;
            color: #000000;
            background-color: #FFFFFF;
        }
        .style18
        {
            font-size: x-large;
        }
        .style19
        {
            width: 184px;
            background-color: #FFFFFF;
        }
        .style20
        {
            height: 26px;
            width: 184px;
            background-color: #FFFFFF;
        }
        .style21
        {
            width: 184px;
        }
        .style22
        {
            height: 62px;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1" frame="void">
            <tr align="center" bgcolor="Blue" valign="middle">
                <td align="center" class="style2" colspan="3" valign="middle">
                    <strong><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </strong>
                    <asp:Image ID="Image1" runat="server" Height="99px" 
                        ImageUrl="~/images/225649_201321353237154_3298569_a.jpg" Width="122px" />
                </td>
                <td class="style13" colspan="3" valign="middle">
                    <strong><span class="style3">Didn&#39;t Like A Product?</span></strong></td>
            </tr>
            <tr>
                <td align="center" class="style4" valign="middle" colspan="2">
                    <br />
                    <br />
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/consumer.jpg" />
                    <br />
                    <br />
                </td>
                <td align="center" class="style4" valign="middle" colspan="2">
                    &nbsp;</td>
                <td align="center" class="style4" valign="middle" colspan="2">
                    <asp:Image ID="Image3" runat="server" Height="195px" 
                        ImageUrl="~/images/consumersrightstag128.jpg" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style4" valign="middle" colspan="2">
                    &nbsp;</td>
                <td align="center" class="style4" valign="middle" colspan="2">
                    <asp:HyperLink ID="HyperLink3" runat="server" 
                        NavigateUrl="~/allcomplaints.aspx" style="font-weight: 700">View All Complaints</asp:HyperLink>
                </td>
                <td align="center" class="style4" valign="middle" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style10" colspan="2" 
                    valign="middle">
                    <strong>
                    <span class="style18">Login For Dealers</span><br />
                    </strong></td>
                <td align="center" valign="middle" class="style22" colspan="2">
                    </td>
                <td align="center" class="style11" colspan="2" 
                    valign="middle">
                    Login For Consumers</td>
            </tr>
            <tr>
                <td align="center" valign="middle" class="style17">
                    <asp:Label ID="Label1" runat="server" CssClass="style7" Text="Username"></asp:Label>
                </td>
                <td align="center" valign="middle" class="style19">
                    <asp:TextBox ID="txt_dealer_uname" runat="server" CssClass="style7"></asp:TextBox>
                </td>
                <td align="center" valign="middle" class="style16" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;</td>
                <td align="center" class="style17" valign="middle">
                    <asp:Label ID="Label3" runat="server" CssClass="style9" Text="Username"></asp:Label>
                </td>
                <td align="center" valign="middle" class="style16">
                    <asp:TextBox ID="txt_consumer_uname" runat="server" CssClass="style9"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style15" valign="middle">
                    <asp:Label ID="Label2" runat="server" CssClass="style12" Text="Password"></asp:Label>
                </td>
                <td align="center" class="style20" valign="middle">
                    <asp:TextBox ID="txt_dealer_pass" runat="server" CssClass="style7" 
                        TextMode="Password"></asp:TextBox>
                </td>
                <td align="center" class="style5" valign="middle" colspan="2">
                </td>
                <td align="center" class="style15" valign="middle">
                    <asp:Label ID="Label4" runat="server" CssClass="style6" Text="Password"></asp:Label>
                </td>
                <td align="center" class="style14" valign="middle">
                    <asp:TextBox ID="txt_consumer_pass" runat="server" CssClass="style9" 
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" bgcolor="#66FF33" class="style7" valign="middle">
                    <asp:Button ID="Button3" runat="server" Text="Login" Height="31px" 
                        onclick="Button3_Click" 
                        style="font-weight: 700; background-color: #999999" 
                        Width="98px" />
                </td>
                <td align="center" bgcolor="#66FF33" valign="middle" class="style21" 
                    style="background-color: #FFFFFF">
                    <span class="style7">New Dealer?</span><br class="style7" />
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="~/RegisterDealer.aspx" CssClass="style12">Register</asp:HyperLink>
                </td>
                <td align="center" valign="middle" colspan="2">
                    &nbsp;</td>
                <td align="center" class="style17" valign="middle">
                    <asp:Button ID="Button4" runat="server" Text="Login" Height="29px" 
                        onclick="Button4_Click" 
                        style="font-weight: 700; color: #000000; background-color: #999999" 
                        Width="94px" />
                </td>
                <td align="center" valign="middle" class="style16">
                    <b><span class="style12">New Customer?</span><br class="style6" />
                    </b>
                    <asp:HyperLink ID="HyperLink2" runat="server" 
                        NavigateUrl="~/RegisterConsumer.aspx" style="color: #000000">Register</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td align="center" valign="middle">
                    &nbsp;</td>
                <td align="center" bgcolor="White" valign="middle" colspan="4">
                    <br />
                    <asp:Label ID="Label5" runat="server" style="font-weight: 700; color: #FF0000"></asp:Label>
                    <br />
                    <br />
                </td>
                <td align="center" valign="middle">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
