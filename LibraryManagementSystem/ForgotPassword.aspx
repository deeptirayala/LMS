<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="LibraryManagementSystem.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 290px;
        }
        .auto-style7 {
            width: 290px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div>
       <table>
           <tr>
               <td class="auto-style6">
               </td>
               <td><h2 class="auto-style8">Forgot Your Password ? </h2></td>
               <td class="auto-style7"></td>
           </tr>
       </table>
   </div>
          
    <div>
        <table>
            <tr>
                <td class="auto-style7"></td>
                <td>
                    
                   
                    
                    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" OnSendingMail="PasswordRecovery1_SendingMail" UserNameTitleText="">
                    </asp:PasswordRecovery>
                    
                   
                    
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
