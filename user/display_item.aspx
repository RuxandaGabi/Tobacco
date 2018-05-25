<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="display_item.aspx.cs" Inherits="user_display_item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="Server">
    <asp:Repeater ID="d1" runat="server">

        <HeaderTemplate>
            <ul>
        </HeaderTemplate>

        <ItemTemplate>

            <div class="col-sm-4 col-lg-4 col-md-4">
                <div class="thumbnail">
                    <a href="product_desc.aspx?id=<%#Eval("id") %>">
                        <img src="../<%#Eval("product_images") %>" style" height="300" width:"200" "alt=""></a>
                    <div class="caption">
                        <h4 class="pull-right"><%#Eval("product_price") %> $</h4>
                        <h4><%#Eval("product_name") %></h4>
                        <p><%#Eval("product_desc") %></p>
                    </div>
                    <div class="ratings">
                        <p><%#Eval("product_qty") %>   left</p>
                    </div>
                </div>
            </div>

        </ItemTemplate>

        <FooterTemplate>
            </ul>
        </FooterTemplate>

    </asp:Repeater>

</asp:Content>

