<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterDealer.aspx.cs" Inherits="RegisterDealer" MaintainScrollPositionOnPostback="true"%>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

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
        }
        .style4
        {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td align="center" colspan="5" valign="middle">
                    <br />
                  
                            <table class="style1">
                                <tr>
                                    <td align="center" valign="middle" bgcolor="#66FF33" colspan="5">
                                        <span class="style2"><strong>Dealer Registration Form</strong></span><br /> </td>
                                </tr>
                                <tr>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle" class="style3">
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
                                    <td align="center" valign="middle" class="style3">
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
                                    <td align="center" valign="middle" class="style3">
                                        First Name<br />
                                    </td>
                                    <td align="center" valign="middle">
                                        <asp:TextBox ID="txt_firstname" runat="server"></asp:TextBox>
                                    </td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle" class="style3">
                                        <br />
                                        Last Name<br /> </td>
                                    <td align="center" valign="middle">
                                        <br />
                                        <asp:TextBox ID="txt_lastname" runat="server"></asp:TextBox>
                                    </td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle" class="style3">
                                        <br />
                                        Select Your Product Category<br />
                                    </td>
                                    <td align="center" valign="middle">
                                        <asp:DropDownList ID="dd_productcat" runat="server" 
                                            datasourceid="SqlDataSource4" DataTextField="product_category" 
                                            DataValueField="product_category" Height="22px" Width="123px" 
                                            AutoPostBack="True">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:CBCConnectionString %>" 
                                            
                                            SelectCommand="SELECT DISTINCT [product_category] FROM [product_category1]">
                                        </asp:SqlDataSource>
                                        <br />
                                    </td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle" class="style3">
                                        <br />
                                        <asp:Label ID="Label14" runat="server" Text="Select Brand"></asp:Label>
                                        <br />
                                    </td>
                                    <td align="center" valign="middle">
                                        <asp:DropDownList ID="dd_brandname" runat="server" 
                                            DataSourceID="SqlDataSource5" DataTextField="brand_name" 
                                            DataValueField="brand_name">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:CBCConnectionString %>" 
                                            
                                            SelectCommand="SELECT DISTINCT [brand_name] FROM [product_category1] WHERE ([product_category] = @product_category)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="dd_productcat" Name="product_category" 
                                                    PropertyName="SelectedValue" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <br />
                                    </td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle" class="style3">
                                        <br />
                                        <asp:Label ID="Label8" runat="server" Text="E-Mail"></asp:Label>
                                        <br />
                                    </td>
                                    <td align="center" valign="middle">
                                        <br />
                                        <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                                    </td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle" class="style3">
                                        <br />
                                        <asp:Label ID="Label6" runat="server" Text="Username"></asp:Label>
                                        </td>
                                    <td align="center" valign="middle">
                                        <br />
                                        <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
                                    </td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle" class="style3">
                                        <br />
                                        <asp:Label ID="Label15" runat="server" Text="Password"></asp:Label>
                                        <br />
                                    </td>
                                    <td align="center" valign="middle">
                                        <br />
                                        <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle" class="style3">
                                        <br />
                                        <asp:Label ID="Label10" runat="server" Text="Select Your Circle"></asp:Label>
                                        <br />
                                    </td>
                                    <td align="center" valign="middle">
                                        <br />
                                        <asp:DropDownList ID="dd_circle" runat="server" 
                                            DataSourceID="SqlDataSource1" DataTextField="region" 
                                            DataValueField="region">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:CBCConnectionString %>" 
                                            SelectCommand="SELECT * FROM [region]"></asp:SqlDataSource>
                                    </td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle" class="style3">
                                        <br />
                                        <asp:Label ID="Label11" runat="server" Text="Enter Shop Name"></asp:Label>
                                        <br />
                                    </td>
                                    <td align="center" valign="middle">
                                        <br />
                                        <asp:TextBox ID="txt_shopname" runat="server"></asp:TextBox>
                                    </td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle" class="style3">
                                        <br />
                                        <asp:Label ID="Label13" runat="server" Text="Phone number"></asp:Label>
                                        <br />
                                    </td>
                                    <td align="center" valign="middle">
                                        <asp:TextBox ID="txt_phoneno" runat="server"></asp:TextBox>
                                    </td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle" class="style3">
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
                                    <td align="center" valign="middle" class="style3">
                                        <span class="style4"><strong>Note</strong></span>-You will be allowed to enter your product details and specifications once 
                                        you are registered.</td>
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
                                    <td align="center" valign="middle" colspan="2">
                                        <br />
                                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                                            style="font-weight: 700; color: #FFFFFF; background-color: #66FF66" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Login</asp:HyperLink>
                                    </td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle" class="style3" colspan="2">
                                        <br />
                                        <asp:Label ID="Label12" runat="server" style="font-weight: 700; color: #FF0000"></asp:Label>
                                    </td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                    <td align="center" valign="middle">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                       
                </td>
            </tr>
            <tr>
                <td align="center" valign="middle" colspan="5">
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
