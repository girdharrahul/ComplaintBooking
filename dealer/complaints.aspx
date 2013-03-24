<%@ Page Title="" Language="C#" MasterPageFile="~/dealermaster.master" AutoEventWireup="true" CodeFile="complaints.aspx.cs" Inherits="dealer_complaints" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td align="center" valign="middle" rowspan="2">
                &nbsp;</td>
            <td align="center" valign="middle" rowspan="2">
                &nbsp;</td>
            <td align="right" valign="middle">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Log Out</asp:LinkButton>
                <br />
                <br />
            </td>
            <td align="center" valign="middle" rowspan="2">
                &nbsp;</td>
            <td align="center" valign="middle" rowspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="middle">
                <strong><span style="font-size: x-large">Complaints</span></strong></td>
        </tr>
        <tr>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td align="center" valign="middle">
                &nbsp;</td>
            <td align="center" valign="middle">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    onitemcommand="DataList1_ItemCommand" CellSpacing="40" 
                    RepeatColumns="3" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <br />
                        <table align="center" cellspacing="0" style="width: 300px">
                            <tr>
                                <td bgcolor="#3E3EFF" style="color: #FFFFFF" align="center">
                                    <strong>Product Name</strong></td>
                                <td bgcolor="#3E3EFF" align="center">
                                    <asp:Label ID="product_nameLabel1" runat="server" style="color: #FFFFFF" 
                                        Text='<%# Eval("product_name") %>' />
                                </td>
                                <td bgcolor="White" colspan="3" rowspan="3">
                                    <asp:Image ID="Image1" runat="server" Height="110px" 
                                        ImageUrl='<%# Eval("product_image") %>' Width="135px" />
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="#3E3EFF" style="color: #FFFFFF" align="center">
                                    <strong>Product Brand</strong></td>
                                <td bgcolor="#3E3EFF" align="center">
                                    <asp:Label ID="product_brandLabel1" runat="server" style="color: #FFFFFF" 
                                        Text='<%# Eval("product_brand") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="#3E3EFF" style="color: #FFFFFF" align="center">
                                    <strong>Product Price</strong></td>
                                <td bgcolor="#3E3EFF" align="center">
                                    <asp:Label ID="product_priceLabel1" runat="server" style="color: #FFFFFF" 
                                        Text='<%# Eval("product_price") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="White" colspan="5" align="center">
                                    <strong>Consumer Complaint</strong></td>
                            </tr>
                            <tr>
                                <td bgcolor="#FFA4A4" colspan="5" align="center">
                                    <asp:Label ID="consumer_complaintLabel0" runat="server" 
                                        Text='<%# Eval("consumer_complaint") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="White" colspan="5" align="center">
                                    <asp:TextBox ID="txt_dealersolution0" runat="server" Height="88px" 
                                        TextMode="MultiLine" Width="290px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="White" colspan="5" align="center">
                                    <br />
                                    <asp:Button ID="Button2" runat="server" CommandName="get" 
                                        style="color: #000000; font-weight: 700; background-color: #00FF00" 
                                        Text="Post Solution"  />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" bgcolor="White" colspan="5">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td bgcolor="White" colspan="2">
                                    <asp:Label ID="consumer_usernameLabel0" runat="server" style="color: #FFFFFF" 
                                        Text='<%# Eval("consumer_username") %>' />
                                </td>
                                <td bgcolor="White">
                                    &nbsp;</td>
                                <td bgcolor="White" style="width: 58px">
                                    <asp:Label ID="complaint_idLabel0" runat="server" style="color: #FFFFFF" 
                                        Text='<%# Eval("complaint_id") %>' />
                                </td>
                                <td bgcolor="White">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CBCConnectionString %>" 
                    
                    SelectCommand="SELECT [product_brand], [consumer_username], [consumer_complaint], [product_category], [product_name], [product_price], [product_image], [complaint_id], [flag] FROM [complaints] WHERE (([dealer_username] = @dealer_username) AND ([flag] = @flag))">
                    <SelectParameters>
                        <asp:SessionParameter Name="dealer_username" SessionField="dealer_username" 
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

