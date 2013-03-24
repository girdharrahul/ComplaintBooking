<%@ Page Title="" Language="C#" MasterPageFile="~/dealermaster.master" AutoEventWireup="true" CodeFile="addproducts.aspx.cs" Inherits="dealer_addproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td align="right" valign="middle" colspan="5">
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Log Out</asp:LinkButton>
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" valign="middle" colspan="5">
                <strong><span style="font-size: x-large; color: #663300">Add Products<br />
                </span></strong>
            </td>
        </tr>
        <tr>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td align="center" valign="middle">
                Shop Name</td>
            <td align="center" valign="middle">
                <asp:DropDownList ID="dd_shopname" runat="server" DataSourceID="SqlDataSource4" 
                    DataTextField="shop_name" DataValueField="shop_name" ViewStateMode="Disabled">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CBCConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [shop_name] FROM [dealer_details] WHERE ([username] = @username)">
                    <SelectParameters>
                        <asp:SessionParameter Name="username" SessionField="dealer_username" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td align="center" valign="middle">
                Select Product Category</td>
            <td align="center" valign="middle">
                <asp:DropDownList ID="dd_product_category" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="product_category" 
                    DataValueField="product_category">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CBCConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [product_category] FROM [product_category1]">
                </asp:SqlDataSource>
            </td>
            <td align="center" valign="middle">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td align="center" valign="middle">
                Select Product Brand</td>
            <td align="center" valign="middle">
                <asp:DropDownList ID="dd_productbrand" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="brand_name" 
                    DataValueField="brand_name">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CBCConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [brand_name] FROM [product_category1] WHERE ([product_category] = @product_category)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="dd_product_category" Name="product_category" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td align="center" valign="middle">
                <br />
                Enter Name Of the Product</td>
            <td align="center" valign="middle">
                <br />
                <asp:TextBox ID="txt_product_name" runat="server"></asp:TextBox>
            </td>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td align="center" valign="middle">
                Product Price</td>
            <td align="center" valign="middle">
                <br />
                <asp:TextBox ID="txt_product_price" runat="server"></asp:TextBox>
                <br />
            </td>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td align="center" valign="middle">
                Product Image</td>
            <td align="center" valign="middle">
                <br />
                <asp:FileUpload ID="FileUploadControl" runat="server" />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Upload" />
            </td>
            <td align="center" valign="middle">
                <asp:Label ID="StatusLabel" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td align="center" colspan="2" valign="middle">
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add Product" 
                    style="color: #663300; font-weight: 700; background-color: #66FF33" />
            </td>
            <td align="center" valign="middle">
                <asp:Label ID="imagepath" runat="server" style="color: #FFFFFF"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td align="center" colspan="2" valign="middle">
                &nbsp;</td>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td align="center" valign="middle" colspan="2">
                <asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
            </td>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td>
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
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

