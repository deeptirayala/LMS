<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="LibraryManagementSystem.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .auto-style6 {
            width: 290px;
        }
        .auto-style7 {
            width: 290px;
        }
        .auto-style8 {
            width: 367px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
        <table>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style6"></td><td class="auto-style8">
                    <h2>Change Your Password</h2>
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
                    
                    <asp:ChangePassword ID="ChangePassword1" runat="server" ChangePasswordTitleText="">
                    </asp:ChangePassword>
                    
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
