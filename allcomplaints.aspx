<%@ Page Language="C#" AutoEventWireup="true" CodeFile="allcomplaints.aspx.cs" Inherits="allcomplaints" %>

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
            color: #FFFFFF;
        }
        .style3
        {
            height: 23px;
        }
        .style4
        {
            width: 300px;
        }
        .style5
        {
            height: 23px;
            font-size: large;
        }
        .style6
        {
            font-size: large;
        }
        .style7
        {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td align="center" bgcolor="#FF3300" class="style2" colspan="5">
                    <strong>All Complaints</strong></td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style3">
                </td>
                <td align="center" class="style3">
                </td>
                <td align="center" class="style3">
                    <asp:DataList ID="DataList1" runat="server" CellPadding="10" CellSpacing="20" 
                        DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <br />
                            <table cellspacing="0" class="style4">
                                <tr>
                                    <td align="center" bgcolor="#0033CC" class="style7">
                                        <b>Product Name</b></td>
                                    <td align="center" bgcolor="#0033CC">
                                        <asp:Label ID="product_nameLabel0" runat="server" CssClass="style7" 
                                            Text='<%# Eval("product_name") %>' />
                                    </td>
                                    <td rowspan="4">
                                        <asp:Image ID="Image1" runat="server" Height="177px" 
                                            ImageUrl='<%# Eval("product_image") %>' Width="176px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" bgcolor="#0033CC" class="style7">
                                        <b>Product Category</b></td>
                                    <td align="center" bgcolor="#0033CC">
                                        <asp:Label ID="product_categoryLabel0" runat="server" CssClass="style7" 
                                            Text='<%# Eval("product_category") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" bgcolor="#0033CC" class="style7">
                                        <b>Product Price</b></td>
                                    <td align="center" bgcolor="#0033CC">
                                        <asp:Label ID="product_priceLabel0" runat="server" CssClass="style7" 
                                            Text='<%# Eval("product_price") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" bgcolor="#0033CC" class="style7">
                                        <b>Product Brand</b></td>
                                    <td align="center" bgcolor="#0033CC">
                                        <asp:Label ID="product_brandLabel0" runat="server" CssClass="style7" 
                                            Text='<%# Eval("product_brand") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" class="style5" colspan="3">
                                        <strong>Complaint</strong></td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3" style="background-color: #FF7979">
                                        <asp:Label ID="consumer_complaintLabel0" runat="server" 
                                            Text='<%# Eval("consumer_complaint") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" class="style6" colspan="3">
                                        <strong>Dealer Response</strong></td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3" style="background-color: #99FF66">
                                        <asp:Label ID="dealer_solutionLabel0" runat="server" 
                                            Text='<%# Eval("dealer_solution") %>' />
                                    </td>
                                </tr>
                            </table>
<br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CBCConnectionString %>" 
                        SelectCommand="SELECT [consumer_complaint], [dealer_solution], [product_category], [product_name], [product_price], [product_image], [product_brand] FROM [complaints]">
                    </asp:SqlDataSource>
                </td>
                <td align="center" class="style3">
                </td>
                <td align="center" class="style3">
                </td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
