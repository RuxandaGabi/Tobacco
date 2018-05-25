<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="view_full_order.aspx.cs" Inherits="admin_view_full_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="Server">

    <asp:Repeater ID="r2" runat="server">
        <HeaderTemplate>
            <table border="1">
                <tr style="background-color: gray; color: white">
                    <td>ID</td>
                    <td>Firstname</td>
                    <td>Lastname</td>
                    <td>Email</td>
                    <td>Address</td>
                    <td>Mobile</td>
                    
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
                
            </tr>
        </ItemTemplate>

        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>

    <br />
    <br />

    <asp:Repeater ID="r1" runat="server">
        <HeaderTemplate>
            <table border="1">
                <tr style="background-color: gray; color: white">
                    <td>Product image</td>
                    <td>Product name</td>
                    <td>Product price</td>
                    <td>Product qty</td>
                </tr>
        </HeaderTemplate>

        <ItemTemplate>
            <tr>
                <td>
                    <img src="../<%#Eval("product_images") %>" height="100" width="100" /></td>
                <td><%#Eval("product_name") %></td>
                <td><%#Eval("product_price") %></td>
                <td><%#Eval("product_qty") %></td>
            </tr>
        </ItemTemplate>

        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
    <asp:Label ID="l1" runat="server" Text=""></asp:Label>
</asp:Content>

