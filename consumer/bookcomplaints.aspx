<%@ Page Title="" Language="C#" MasterPageFile="~/consumermaster.master" AutoEventWireup="true" CodeFile="bookcomplaints.aspx.cs" Inherits="consumer_bookcomplaints" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" width="960">
        <tr>
            <td align="right" valign="middle" colspan="3">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Log Out</asp:LinkButton>
                <br />
            </td>
            <td align="center" valign="middle" rowspan="2">
                &nbsp;</td>
            <td align="center" valign="middle" rowspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="middle" colspan="3">
                <strong><span style="font-size: xx-large">Register Complaints</span></strong></td>
        </tr>
        <tr>
            <td align="center" valign="middle">
                <strong>Select Your Region</strong></td>
            <td align="center" valign="middle">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="region" DataValueField="region">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CBCConnectionString %>" 
                    SelectCommand="SELECT DISTINCT * FROM [region]"></asp:SqlDataSource>
            </td>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td align="center" valign="middle">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="middle">
                <strong>Select Shop Name</strong></td>
            <td align="center" valign="middle">
                <br />
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="shop_name" 
                    DataValueField="shop_name">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CBCConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [shop_name] FROM [dealer_details] WHERE ([circle] = @circle)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="circle" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td align="center" valign="middle">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="middle" colspan="2">
                <br />
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource3" 
                    onitemcommand="DataList1_ItemCommand" CellPadding="20" 
                    RepeatColumns="3" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <br />
                        <table style="width: 300px">
                            <tr>
                                <td style="color: #FFFFFF; background-color: #0000FF" align="center">
                                    <b>Product Name</b></td>
                                <td style="background-color: #0000FF" align="center">
                                    <asp:Label ID="product_nameLabel0" runat="server" style="color: #FFFFFF" 
                                        Text='<%# Eval("product_name") %>' />
                                </td>
                                <td colspan="2" rowspan="4" align="center">
                                    <asp:Image ID="Image1" runat="server" Height="132px" 
                                        ImageUrl='<%# Eval("product_image") %>' Width="134px" />
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #FFFFFF; background-color: #0000FF" align="center">
                                    <b>Product Brand</b></td>
                                <td style="background-color: #0000FF" align="center">
                                    <asp:Label ID="product_brandLabel0" runat="server" style="color: #FFFFFF" 
                                        Text='<%# Eval("product_brand") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #FFFFFF; background-color: #0000FF" align="center">
                                    <b>Product Category</b></td>
                                <td style="background-color: #0000FF" align="center">
                                    <asp:Label ID="product_categoryLabel0" runat="server" style="color: #FFFFFF" 
                                        Text='<%# Eval("product_category") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="color: #FFFFFF; background-color: #0000FF" align="center">
                                    <b>Product Price</b></td>
                                <td style="background-color: #0000FF" align="center">
                                    <asp:Label ID="product_priceLabel0" runat="server" style="color: #FFFFFF" 
                                        Text='<%# Eval("product_price") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4" align="center">
                                    <strong>Enter Your Query</strong></td>
                            </tr>
                            <tr>
                                <td colspan="4" align="center">
                                    <asp:TextBox ID="txt_complaintbox" runat="server" Height="78px" 
                                        TextMode="MultiLine" Width="347px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4" align="center">
                                    <br />
                                    <asp:Button ID="Button2" runat="server" CommandName="get" 
                                       
                                        style="font-weight: 700; color: #FFFFFF; background-color: #FF0000" 
                                        Text="Post Complaint" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4" align="center">
                                    <asp:Label ID="product_imageLabel0" runat="server" style="color: #FFFFFF" 
                                        Text='<%# Eval("product_image") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="4">
                                    <asp:Label ID="lbl_confirmation" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="dealer_usernameLabel0" runat="server" style="color: #FFFFFF" 
                                        Text='<%# Eval("dealer_username") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="product_idLabel0" runat="server" style="color: #FFFFFF" 
                                        Text='<%# Eval("product_id") %>' />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CBCConnectionString %>" 
                    
                    SelectCommand="SELECT [product_category], [product_brand], [product_name], [product_price], [product_image], [dealer_username], [product_id] FROM [product_details] WHERE (([shop_name] = @shop_name) AND ([shop_name] = @shop_name2))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="shop_name" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="shop_name2" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
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
</asp:Content>

