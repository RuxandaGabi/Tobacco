<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="product_desc.aspx.cs" Inherits="user_product_desc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="Server">

    <asp:repeater id="d1" runat="server">

        <HeaderTemplate>
        </HeaderTemplate>

        <ItemTemplate>
            <div style="height: 300px; width: 600px; border-style: solid; border-width: 1px;">

                <div style="height: 300px; width: 200px; float: left; border-style: solid; border-width: 1px;">
                    <img src="../<%#Eval("product_images") %>" height="300" width="200" />
                </div>

               <div style="height: 300px; width: 395px; float: left; border-style: solid; border-width: 0px;">
                    Product name=<%#Eval("product_name") %><br />Product desc=<%#Eval("product_desc") %><br />Product price=<%#Eval("product_price") %><br />Product qty=<%#Eval("product_qty") %><br /></div>

            </div>
        </ItemTemplate>

        <FooterTemplate>
        </FooterTemplate>

    </asp:repeater>
    <br />
    <table>
        <tr>
            <td>
                <asp:label id="l2" runat="server" text="Quantity"></asp:label>
            </td>
            <td>
                <asp:textbox id="t1" runat="server"></asp:textbox>
            </td>
            <td>
                <asp:button id="b1" runat="server" text="Add to cart" onclick="b1_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 20px">
                <asp:label id="l1" runat="server" forecolor="Red" text=""></asp:label>
            </td>
        </tr>
    </table>
    <br />


</asp:Content>

