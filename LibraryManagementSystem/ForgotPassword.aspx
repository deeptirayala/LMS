<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="LibraryManagementSystem.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .auto-style6 {
            width: 290px;
        }
        .auto-style8 {
            width: 367px;
        }
          .auto-style9 {
              width: 252px;
          }
          .auto-style10 {
              width: 222px;
          }
          .auto-style11 {
              width: 136px;
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
                <td class="auto-style6">
                    <asp:LinkButton ID="lbtnLogin" runat="server" PostBackUrl="~/Login.aspx">Login</asp:LinkButton>
                </td><td class="auto-style8">
                    <h2>Forgot Password</h2>
                         </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td><td class="auto-style8">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
     <div>
        <table>
            <tr>
                <td class="auto-style9"></td>
                <td>
                    
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                    
                </td>
                <td>

                </td>
                <td class="auto-style10"><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                <td class="auto-style11">

                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>
                    
                    &nbsp;</td>
                <td>

                    &nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style11">

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td dir="rtl">
                    
                    <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
                    
                </td>
                <td>

                    &nbsp;</td>
                <td class="auto-style10">
                    <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
                </td>
                <td class="auto-style11">

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>
                    
                    &nbsp;</td>
                <td>

                    &nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">

                    &nbsp;</td>
            </tr>
            </table>
         <table>
              <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style8">
                    
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                    
                </td>
              
               
            </tr>
        
         </table>
           
    </div>
</asp:Content>
