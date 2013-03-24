<%@ Page Title="" Language="C#" MasterPageFile="~/consumermaster.master" AutoEventWireup="true" CodeFile="answeredcomplaints.aspx.cs" Inherits="consumer_supportticket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" align="center">
    <tr>
        <td align="right" valign="middle" colspan="5">
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Log Out</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td align="center" valign="middle">
            &nbsp;</td>
        <td align="center" colspan="2" valign="middle">
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                CellSpacing="30" RepeatColumns="3" RepeatDirection="Horizontal" 
                >
                <ItemTemplate>
                    <br />
                    <br />
                    <table align="center" cellpadding="2" cellspacing="0" style="width: 330px">
                        <tr>
                            <td bgcolor="#3E3EFF" style="color: #FFFFFF" align="center">
                                <strong>Product Name</strong></td>
                            <td bgcolor="#3E3EFF" align="center">
                                <asp:Label ID="product_nameLabel0" runat="server" style="color: #FFFFFF" 
                                    Text='<%# Eval("product_name") %>' />
                            </td>
                            <td bgcolor="White" colspan="3" rowspan="3">
                                <asp:Image ID="Image1" runat="server" Height="152px" 
                                    ImageUrl='<%# Eval("product_image") %>' Width="199px" />
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#3E3EFF" style="color: #FFFFFF" align="center">
                                <strong>Product Brand</strong></td>
                            <td bgcolor="#3E3EFF" align="center">
                                <asp:Label ID="product_brandLabel0" runat="server" style="color: #FFFFFF" 
                                    Text='<%# Eval("product_brand") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#3E3EFF" style="color: #FFFFFF" align="center">
                                <strong>Product Price</strong></td>
                            <td bgcolor="#3E3EFF" align="center">
                                <asp:Label ID="product_priceLabel0" runat="server" style="color: #FFFFFF" 
                                    Text='<%# Eval("product_price") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="White" colspan="5" align="center">
                                <strong>&nbsp;Complaint</strong></td>
                        </tr>
                        <tr>
                            <td bgcolor="#FF9F9F" colspan="5" align="center">
                                <asp:Label ID="consumer_complaintLabel0" runat="server" style="color: #000000" 
                                    Text='<%# Eval("consumer_complaint") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5" align="center">
                                <strong>Response</strong></td>
                        </tr>
                        <tr>
                            <td bgcolor="#66FF66" colspan="5" align="center">
                                <asp:Label ID="dealer_solutionLabel0" runat="server" style="color: #000000" 
                                    Text='<%# Eval("dealer_solution") %>' />
                            </td>
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
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:CBCConnectionString %>" 
                SelectCommand="SELECT [consumer_complaint], [dealer_solution], [product_category], [product_name], [product_price], [product_image], [product_brand] FROM [complaints] WHERE (([consumer_username] = @consumer_username) AND ([flag] = @flag))">
                <SelectParameters>
                    <asp:SessionParameter Name="consumer_username" SessionField="consumer_username" 
                        Type="String" />
                    <asp:Parameter DefaultValue="1" Name="flag" Type="Int32" />
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

