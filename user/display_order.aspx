<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="display_order.aspx.cs" Inherits="user_display_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="Server">
    <asp:Repeater ID="r1" runat="server">
        <HeaderTemplate>
            <table border="1">
                <tr style="background-color: gray; color: white">
                    <td>ID</td>
                    <td>Firstname</td>
                    <td>Lastname</td>
                    <td>Email</td>
                    <td>Address</td>
                    <td>Mobile</td>
                    <td>View full order</td>
                </tr>
        </HeaderTemplate>

        <ItemTemplate>
            <tr>
                <td><%#Eval("Id") %></td>
                <td><%#Eval("firstname") %></td>
                <td><%#Eval("lastname") %></td>
                <td><%#Eval("email") %></td>
                <td><%#Eval("address") %></td>
                <td><%#Eval("mobile") %></td>
                <td><a href="view_full_order.aspx?id=<%#Eval("Id") %>">View full order</a></td>
            </tr>
        </ItemTemplate>

        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>

</asp:Content>

