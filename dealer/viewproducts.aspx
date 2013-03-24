<%@ Page Title="" Language="C#" MasterPageFile="~/dealermaster.master" AutoEventWireup="true" CodeFile="viewproducts.aspx.cs" Inherits="dealer_viewproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td align="right">
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Log Out</asp:LinkButton>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                CellSpacing="30" RepeatColumns="3" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <br />
                    <br />
                    <table align="center" cellspacing="0" style="width: 300px">
                        <tr>
                            <td align="center" colspan="3">
                                <asp:Label ID="shop_nameLabel0" runat="server" 
                                    style="font-weight: 700; font-size: xx-large; color: #000099; background-color: #FFFFFF" 
                                    Text='<%# Eval("shop_name") %>' />
                                <br />
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" bgcolor="Blue" style="height: 42px; color: #FFFFFF;">
                                <b>Product Name</b></td>
                            <td align="center" bgcolor="Blue" style="height: 42px">
                                <asp:Label ID="product_nameLabel0" runat="server" style="color: #FFFFFF" 
                                    Text='<%# Eval("product_name") %>' />
                            </td>
                            <td align="center" rowspan="4">
                                <asp:Image ID="Image1" runat="server" Height="162px" 
                                    ImageUrl='<%# Eval("product_image") %>' Width="173px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" bgcolor="Blue" style="color: #FFFFFF">
                                <b>Product Brand</b></td>
                            <td align="center" bgcolor="Blue">
                                <asp:Label ID="product_brandLabel0" runat="server" style="color: #FFFFFF" 
                                    Text='<%# Eval("product_brand") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" bgcolor="Blue" style="color: #FFFFFF">
                                <b>Product Price</b></td>
                            <td align="center" bgcolor="Blue">
                                <asp:Label ID="product_priceLabel0" runat="server" style="color: #FFFFFF" 
                                    Text='<%# Eval("product_price") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" bgcolor="Blue" style="color: #FFFFFF">
                                <b>Product Category</b></td>
                            <td align="center" bgcolor="Blue">
                                <asp:Label ID="product_categoryLabel0" runat="server" style="color: #FFFFFF" 
                                    Text='<%# Eval("product_category") %>' />
                            </td>
                        </tr>
                    </table>
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:CBCConnectionString %>" 
                SelectCommand="SELECT [product_category], [product_brand], [product_name], [product_price], [product_image], [shop_name] FROM [product_details] WHERE ([dealer_username] = @dealer_username)">
                <SelectParameters>
                    <asp:SessionParameter Name="dealer_username" SessionField="dealer_username" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

