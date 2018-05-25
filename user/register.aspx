<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="user_register" %>



<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Register</title>

    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/form-elements.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <link rel="shortcut icon" href="assets/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
</head>

<body>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="display_item.aspx">Home</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="about.aspx">About</a>
                    </li>
                    <li>
                        <a href="contact.aspx">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="top-content">
        <div class="container">

            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1>Registration</h1>
                    <div class="description">
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-10 col-sm-offset-1 show-forms">
                    <span class="show-register-form active"></span>
                </div>
            </div>

            <div class="row register-form">
                <div class="col-sm-4 col-sm-offset-1">


                    <form role="form" action="" method="post" class="r-form">
                        <div class="form-group">
                            <form id="Form1" runat="server">
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="Repeat Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox4" runat="server" placeholder="Email"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox5" runat="server" placeholder="First Name"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox6" runat="server" placeholder="Last Name"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox7" runat="server" placeholder="Address"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox8" runat="server" placeholder="Mobile"></asp:TextBox>
                        </div>
                        <asp:Button ID="Button1" runat="server" class="btn" Text="Register" OnClick="Button1_Click" />
                        <div>
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </div>
                        <%--<button type="submit" class="btn">Sign up!</button>--%>
                    </form>
                </div>
                <div class="col-sm-6 forms-right-icons">
                    <div class="row">
                        <div class="col-sm-2 icon"><i class="fa fa-user"></i></div>
                        <div class="col-sm-10">
                            <h3>Already have an account?</h3>
                            <a href="login.aspx">Log in here!</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2 icon"><i class="fa fa-pencil"></i></div>
                        <div class="col-sm-10">
                            <h3>Sign up today</h3>
                            <p>Registered users benefit from a reduction between 5% and 10% to all of our products.</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2 icon"><i class="fa fa-pencil"></i></div>
                        <div class="col-sm-10">
                            <h3>Easy Sign up</h3>
                            <p>Just fill in the form and you are done.</p>
                        </div>
                    </div>
                </div>
            </div>

            <footer>
                <div class="container">
                    <div class="row">

                        <div class="col-sm-8 col-sm-offset-2">
                            <div class="footer-border"></div>
                            <p>Copyright &copy; Tabacco Shop 2017</p>
                        </div>

                    </div>
                </div>
            </footer>

            <script src="assets/js/jquery-1.11.1.min.js"></script>
            <script src="assets/bootstrap/js/bootstrap.min.js"></script>
            <script src="assets/js/jquery.backstretch.min.js"></script>
            <script src="assets/js/scripts.js"></script>
</body>

</html>
