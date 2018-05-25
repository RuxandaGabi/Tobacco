<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="display_ticket.aspx.cs" Inherits="admin_display_ticket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="Server">
    <asp:Repeater ID="r1" runat="server">
        <HeaderTemplate>
            <table border="1">
                <tr style="background-color: gray; color: white">
                    <td>ID</td>
                    <td>Name</td>
                    <td>Phone</td>
                    <td>Email</td>
                    <td>Message</td>
                </tr>
        </HeaderTemplate>

        <ItemTemplate>
            <tr>
                <td><%#Eval("Id") %></td>
                <td><%#Eval("name") %></td>
                <td><%#Eval("phone") %></td>
                <td><%#Eval("address") %></td>
                <td><%#Eval("message") %></td>
            </tr>
        </ItemTemplate>

        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>

