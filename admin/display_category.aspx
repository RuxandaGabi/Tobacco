<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="display_category.aspx.cs" Inherits="admin_display_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="Server">
    <asp:Repeater ID="r1" runat="server">
        <HeaderTemplate>
            <table border="1">
                <tr style="background-color: gray; color: white">
                    <td>ID</td>
                    <td>Category</td>
                    <td>Delete</td>
                </tr>
        </HeaderTemplate>

        <ItemTemplate>
            <tr>
                <td><%#Eval("Id") %></td>
                <td><%#Eval("product_category") %></td>
                <td>
                    <a href="delete_category.aspx?category=<%#Eval("product_category") %>">Delete</a>
                </td>
            </tr>
        </ItemTemplate>

        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>

</asp:Content>

