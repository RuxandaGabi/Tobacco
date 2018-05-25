<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="user_details.aspx.cs" Inherits="user_user_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="Server">
    <table>
        <tr>
            <td style="width: 153px">First Name
            </td>
            <td>
                <asp:TextBox ID="t1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 153px">Last Name
            </td>
            <td>
                <asp:TextBox ID="t2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 153px">Address
            </td>
            <td>
                <asp:TextBox ID="t3" runat="server" Height="73px" TextMode="MultiLine" Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 153px">E-mail
            </td>
            <td>
                <asp:TextBox ID="t4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 153px">Mobile
            </td>
            <td>
                <asp:TextBox ID="t5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 153px">Password
            </td>
            <td>
                <asp:TextBox ID="t6" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="b1" runat="server" Text="Update" OnClick="b1_Click" />
            </td>
        </tr>
    </table>

</asp:Content>

