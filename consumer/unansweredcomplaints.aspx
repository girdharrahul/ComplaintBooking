<%@ Page Title="" Language="C#" MasterPageFile="~/consumermaster.master" AutoEventWireup="true" CodeFile="unansweredcomplaints.aspx.cs" Inherits="consumer_unansweredcomplaints" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td align="right" valign="middle">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Log Out</asp:LinkButton>
            </td>
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
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    CellPadding="0" CellSpacing="20" RepeatColumns="3" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <br />
                        <table align="center" cellspacing="0" style="width: 300px">
                            <tr>
                                <td align="center" bgcolor="Blue" style="color: #FFFFFF">
                                    <b>Product Name</b></td>
                                <td align="center" bgcolor="Blue">
                                    <asp:Label ID="product_nameLabel0" runat="server" style="color: #FFFFFF" 
                                        Text='<%# Eval("product_name") %>' />
                                </td>
                                <td rowspan="4">
                                    <asp:Image ID="Image1" runat="server" Height="147px" 
                                        ImageUrl='<%# Eval("product_image") %>' Width="147px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" bgcolor="Blue" style="color: #FFFFFF">
                                    <b>Product Brand</b></td>
                                <td align="center" bgcolor="Blue">
                                    <asp:Label ID="product_nameLabel1" runat="server" style="color: #FFFFFF" 
                                        Text='<%# Eval("product_brand") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" bgcolor="Blue" style="color: #FFFFFF">
                                    <b>Product Category</b></td>
                                <td align="center" bgcolor="Blue">
                                    <asp:Label ID="product_nameLabel2" runat="server" style="color: #FFFFFF" 
                                        Text='<%# Eval("product_category") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" bgcolor="Blue" style="height: 42px; color: #FFFFFF">
                                    <b>Product Price</b></td>
                                <td align="center" bgcolor="Blue" style="height: 42px">
                                    <asp:Label ID="product_nameLabel3" runat="server" style="color: #FFFFFF" 
                                        Text='<%# Eval("product_price") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="3" style="font-size: medium">
                                    <strong>Complaint</strong></td>
                            </tr>
                            <tr>
                                <td align="center" bgcolor="#FF7D7D" class="style3" colspan="3">
                                    <asp:Label ID="consumer_complaintLabel0" runat="server" 
                                        Text='<%# Eval("consumer_complaint") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CBCConnectionString %>" 
                    SelectCommand="SELECT [consumer_complaint], [product_category], [product_name], [product_price], [product_image], [product_brand] FROM [complaints] WHERE (([consumer_username] = @consumer_username) AND ([flag] = @flag))">
                    <SelectParameters>
                        <asp:SessionParameter Name="consumer_username" SessionField="consumer_username" 
                            Type="String" />
                        <asp:Parameter DefaultValue="0" Name="flag" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
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

