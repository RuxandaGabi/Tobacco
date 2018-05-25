<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="user_contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="Server">
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Contact
                </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-8">
                <h3>Send us a Message</h3>
                <br />

                <div class="control-group form-group">
                    <div class="controls">
                        <label>Full Name:            </label>
                        <asp:textbox id="TextBox1" runat="server" placeholder="Full name"></asp:textbox>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Phone Number:    </label>

                        <asp:textbox id="TextBox2" runat="server" placeholder="Phone number"></asp:textbox>

                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Email Address:    </label>
                        <asp:textbox id="TextBox3" runat="server" placeholder="Email"></asp:textbox>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Message:</label>
                        <div>
                            <asp:textbox id="TextBox4" runat="server" placeholder="<<Message>>" height="200px" textmode="MultiLine" width="700px"></asp:textbox>
                        </div>
                    </div>
                </div>
                <asp:button id="Button1" runat="server" class="btn" text="Send message!" onclick="Button1_Click" />
                <div>
                    <asp:label id="Label1" runat="server" text=""></asp:label>
                </div>
            </div>


        </div>
    </div>

</asp:Content>

