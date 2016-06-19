<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LibraryManagementSystem.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 290px;
        }
        .auto-style7 {
            width: 290px;
        }
        .auto-style8 {
            width: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table>
            <tr>
                <td class="auto-style6"></td><td class="auto-style8">
                    <h2>Login</h2>
                         </td>
                <td></td>
            </tr>
        </table>
    </div>
    <div>
        <table>
            <tr>
                <td class="auto-style7"></td>
                <td>
                    <table>
                        <tr>
                            <td><asp:Label runat="server" ID="lblUsername" Text ="UserName :"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td><asp:Label runat="server" ID="lblPassword" Text ="Password :"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode ="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                            <td dir="rtl">
                                <asp:Button runat="server" ID="btnLogin" Text="Login" OnClick="btnLogin_Click" />
                            </td>
                        </tr>
                    </table>
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="lblNewUser" runat="server" Text="Are you a New User?"></asp:Label>
                    <asp:HyperLink ID="hlSignUp" runat="server" NavigateUrl="~/Registration.aspx">SignUp</asp:HyperLink>
                </td>
                <td></td>
            </tr>
        </table>
    </div>
</asp:Content>
