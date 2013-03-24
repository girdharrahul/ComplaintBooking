<%@ Page Title="" Language="C#" MasterPageFile="~/dealermaster.master" AutoEventWireup="true" CodeFile="editproducts.aspx.cs" Inherits="dealer_editproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td align="right">
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Log Out</asp:LinkButton>
            <br />
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
        <td align="center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="product_id" DataSourceID="SqlDataSource1" 
                ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="product_id" HeaderText="Product ID" 
                        InsertVisible="False" ReadOnly="True" SortExpression="product_id" />
                    <asp:BoundField DataField="product_category" HeaderText="Category" 
                        SortExpression="product_category" />
                    <asp:BoundField DataField="product_brand" HeaderText="Brand" 
                        SortExpression="product_brand" />
                    <asp:BoundField DataField="product_name" HeaderText="Name" 
                        SortExpression="product_name" />
                    <asp:BoundField DataField="product_price" HeaderText="Price" 
                        SortExpression="product_price" />
                    <asp:BoundField DataField="product_image" HeaderText="Image" 
                        SortExpression="product_image" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:CBCConnectionString %>" 
                DeleteCommand="DELETE FROM [product_details] WHERE [product_id] = @product_id" 
                InsertCommand="INSERT INTO [product_details] ([product_category], [product_brand], [product_name], [product_price], [product_image]) VALUES (@product_category, @product_brand, @product_name, @product_price, @product_image)" 
                SelectCommand="SELECT [product_id], [product_category], [product_brand], [product_name], [product_price], [product_image] FROM [product_details] WHERE ([dealer_username] = @dealer_username)" 
                UpdateCommand="UPDATE [product_details] SET [product_category] = @product_category, [product_brand] = @product_brand, [product_name] = @product_name, [product_price] = @product_price, [product_image] = @product_image WHERE [product_id] = @product_id">
                <DeleteParameters>
                    <asp:Parameter Name="product_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="product_category" Type="String" />
                    <asp:Parameter Name="product_brand" Type="String" />
                    <asp:Parameter Name="product_name" Type="String" />
                    <asp:Parameter Name="product_price" Type="String" />
                    <asp:Parameter Name="product_image" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="dealer_username" SessionField="dealer_username" 
                        Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="product_category" Type="String" />
                    <asp:Parameter Name="product_brand" Type="String" />
                    <asp:Parameter Name="product_name" Type="String" />
                    <asp:Parameter Name="product_price" Type="String" />
                    <asp:Parameter Name="product_image" Type="String" />
                    <asp:Parameter Name="product_id" Type="Int32" />
                </UpdateParameters>
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

