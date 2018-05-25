<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="view_cart.aspx.cs" Inherits="user_view_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="Server">
    <div>
        <h2>
            <span class="glyphicon glyphicon-shopping-cart"></span>
             <span>Products in your cart:</span>
        </h2>   
        <br />
        
        <asp:DataList ID="d1" runat="server">
            <HeaderTemplate>
                <table border="1">
                    <tr style="background-color:silver; color:white; font-weight:bold">
                        <td>Image</td>
                        <td>Name</td>
                        <td>Description</td>
                        <td>Price</td>
                        <td>Quantity</td>
                        <td>Delete</td>
                    </tr>
            </HeaderTemplate>

            <ItemTemplate>
                <tr>
                    <td>
                        <img src="../<%#Eval("product_image") %>" height="100" width="100" />
                    </td>
                    <td>
                        <%#Eval("product_name") %>
                    </td>
                    <td>
                        <%#Eval("product_desc") %>
                    </td>
                    <td>
                        <%#Eval("product_price") %> $
                    </td>
                    <td>
                        <%#Eval("product_qty") %>
                    </td>
                    <td>
                        <a href="delete_cart.aspx?id=<%#Eval("id") %>">Delete</a>
                    </td>
                </tr>
               
            </ItemTemplate>

            <FooterTemplate>
                </table>               
            </FooterTemplate>
        </asp:DataList>
        <br />
        <p align="center">
            <asp:Label ID="l1" runat="server"></asp:Label>
            <br />
            <asp:Button ID="b1" runat="server" Text="Checkout" OnClick="b1_Click" />
        </p>
    </div>
</asp:Content>
