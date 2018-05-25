<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="admin_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="Server">

    <div class="row text-center pad-top">

        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
            <div class="div-square">
                <a href="display_admin.aspx">
                    <i class="fa fa-key fa-5x"></i>
                    <h4>Admin </h4>
                </a>
            </div>
        </div>

        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
            <div class="div-square">
                <a href="display_user.aspx">
                    <i class="fa fa-users fa-5x"></i>
                    <h4>Users</h4>
                </a>
            </div>
        </div>

        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
            <div class="div-square">
                <a href="display_product.aspx">
                    <i class="fa fa-circle-o-notch fa-5x"></i>
                    <h4>Products</h4>
                </a>
            </div>
        </div>

    </div>

    <div class="row text-center pad-top">
        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
            <div class="div-square">
                <a href="display_category.aspx">
                    <i class="fa fa-circle-o-notch fa-5x"></i>
                    <h4>Category</h4>
                </a>
            </div>
        </div>

        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
            <div class="div-square">
                <a href="display_order.aspx">
                    <i class="fa fa-money fa-5x"></i>
                    <h4>Orders</h4>
                </a>
            </div>
        </div>

        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
            <div class="div-square">
                <a href="display_ticket.aspx">
                    <i class="fa fa-envelope-o fa-5x"></i>
                    <h4>Tickets</h4>
                </a>
            </div>
        </div>
    </div>

</asp:Content>

