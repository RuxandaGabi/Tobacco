<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="display_admin.aspx.cs" Inherits="admin_display_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="Server">
    <asp:Repeater ID="r1" runat="server">
        <HeaderTemplate>
            <table border="1">
                <tr style="background-color: gray; color: white">
                    <td>ID</td>
                    <td>Username</td>
                    <td>Password</td>
                    <td>Delete</td>
                </tr>
        </HeaderTemplate>

        <ItemTemplate>
            <tr>
                <td><%#Eval("Id") %></td>
                <td><%#Eval("username") %></td>
                <td><%#Eval("password") %></td>
                <td>
                    <a href="delete_admin.aspx?admin=<%#Eval("username") %>">Delete</a>
                </td>
            </tr>
        </ItemTemplate>

        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>

</asp:Content>

