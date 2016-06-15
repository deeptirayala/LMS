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
                    
                    <asp:Login ID="Login1" runat="server" TitleText="">
                    </asp:Login>
                    
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
