<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="add_admin.aspx.cs" Inherits="admin_add_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="Server">
    <table>
        <tr>
            <td>Admin name:</td>
            <td>
                <asp:TextBox ID="t1" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Admin password: </td>
            <td>
                <asp:TextBox ID="t2" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="b1" runat="server" Text="Add" OnClick="b1_Click" />
            </td>
        </tr>

    </table>

</asp:Content>

