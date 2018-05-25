<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="add_category.aspx.cs" Inherits="admin_add_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="Server">
    <table>
        <tr>
            <td>Enter category name: </td>
            <td>
                <asp:textbox id="t1" runat="server"></asp:textbox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:button id="b1" runat="server" text="Add Category" onclick="b1_Click" />
            </td>
        </tr>
    </table>

    <asp:datalist id="d1" runat="server">
        <HeaderTemplate>
           <table>
        </HeaderTemplate>

        <ItemTemplate>
            <tr>
                <td><%#Eval("product_category") %></td>
                <td>
                    <a href="delete.aspx?category=<%#Eval("product_category") %>">Delete</a>
                </td>
            </tr>
        </ItemTemplate>

        <FooterTemplate>
            </table>
        </FooterTemplate>



    </asp:datalist>

</asp:Content>

