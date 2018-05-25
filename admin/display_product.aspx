<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="display_product.aspx.cs" Inherits="admin_display_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="Server">

    <asp:Repeater ID="r1" runat="server">
        <HeaderTemplate>
            <table border="1">
                <tr style="background-color: gray; color: white">
                    <td>ID</td>
                    <td>Name</td>
                    <td>Description</td>
                    <td>Price</td>
                    <td>Quantity</td>
                    <td>Category</td>
                    <td>Image</td>
                    <td>Delete</td>
                </tr>
        </HeaderTemplate>

        <ItemTemplate>
            <tr>
                <td><%#Eval("Id") %></td>
                <td><%#Eval("product_name") %></td>
                <td><%#Eval("product_desc") %></td>
                <td><%#Eval("product_price") %></td>
                <td><%#Eval("product_qty") %></td>
                <td><%#Eval("product_category") %></td>
                <td>
                    <img src="../<%#Eval("product_images") %>" height="100" width="100" />
                </td>
                <td>
                    <a href="delete_product.aspx?product=<%#Eval("product_name") %>">Delete</a>
                </td>

            </tr>
        </ItemTemplate>

        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>

</asp:Content>

