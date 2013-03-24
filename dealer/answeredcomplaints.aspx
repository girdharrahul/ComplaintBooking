<%@ Page Title="" Language="C#" MasterPageFile="~/dealermaster.master" AutoEventWireup="true" CodeFile="answeredcomplaints.aspx.cs" Inherits="dealer_answeredcomplaints" %>

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
        <td align="center" valign="middle">
            &nbsp;</td>
        <td align="center" valign="middle">
            &nbsp;</td>
        <td align="center" valign="middle">
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                CellSpacing="40" RepeatColumns="3" 
                RepeatDirection="Horizontal" CellPadding="10">
                <ItemTemplate>
                    <br />
                    <br />
                    <table align="center" cellspacing="0" style="width: 300px">
                        <tr>
                            <td bgcolor="Blue" style="color: #FFFFFF" align="center">
                                <b>Product Name</b></td>
                            <td bgcolor="Blue" align="center">
                                <asp:Label ID="product_nameLabel0" runat="server" style="color: #FFFFFF" 
                                    Text='<%# Eval("product_name") %>' />
                            </td>
                            <td colspan="2" rowspan="4" align="center">
                                <asp:Image ID="Image1" runat="server" Height="168px" 
                                    ImageUrl='<%# Eval("product_image") %>' Width="178px" />
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="Blue" style="color: #FFFFFF" align="center">
                                <b>Product Brand</b></td>
                            <td bgcolor="Blue" align="center">
                                <asp:Label ID="product_brandLabel0" runat="server" style="color: #FFFFFF" 
                                    Text='<%# Eval("product_brand") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="Blue" style="color: #FFFFFF" align="center">
                                <b>Product Price</b></td>
                            <td bgcolor="Blue" align="center">
                                <asp:Label ID="product_priceLabel0" runat="server" style="color: #FFFFFF" 
                                    Text='<%# Eval("product_price") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="Blue" style="font-weight: bold" align="center">
                                <span style="color: #FFFFFF; font-weight: bold">Product</span><b><br style="color: #FFFFFF" />
                                </b><span style="color: #FFFFFF; font-weight: bold">Category</span></td>
                            <td bgcolor="Blue" align="center">
                                <asp:Label ID="product_categoryLabel0" runat="server" style="color: #FFFFFF" 
                                    Text='<%# Eval("product_category") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" align="center">
                                <strong>Consumer Complaint</strong></td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFA8A8" colspan="4" align="center">
                                <asp:Label ID="consumer_complaintLabel0" runat="server" 
                                    Text='<%# Eval("consumer_complaint") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" align="center">
                                <strong>Response</strong></td>
                        </tr>
                        <tr>
                            <td bgcolor="#66FF66" colspan="4" align="center">
                                <asp:Label ID="dealer_solutionLabel0" runat="server" 
                                    Text='<%# Eval("dealer_solution") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="consumer_usernameLabel0" runat="server" style="color: #FFFFFF" 
                                    Text='<%# Eval("consumer_username") %>' />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:CBCConnectionString %>" 
                SelectCommand="SELECT [consumer_username], [consumer_complaint], [dealer_solution], [product_category], [product_name], [product_price], [product_image], [product_brand] FROM [complaints] WHERE (([dealer_username] = @dealer_username) AND ([flag] = @flag))">
                <SelectParameters>
                    <asp:SessionParameter Name="dealer_username" SessionField="dealer_username" 
                        Type="String" />
                    <asp:Parameter DefaultValue="1" Name="flag" Type="Int32" />
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

