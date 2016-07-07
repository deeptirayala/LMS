<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="LibraryManagementSystem.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .auto-style8 {
            width: 367px;
        }
          .auto-style9 {
              width: 252px;
          }
          .auto-style10 {
              width: 202px;
          }
          .auto-style11 {
              width: 27px;
          }
          .auto-style12 {
              width: 249px;
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
        <table>
            <tr>
                <td class="auto-style12"></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:LinkButton ID="lbtnMenu" runat="server" PostBackUrl="~/Default.aspx" CausesValidation="False">Main Menu</asp:LinkButton>
                </td><td class="auto-style8">
                    <h2>Change Your Password</h2>
                         </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td><td class="auto-style8">
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
                    
                    <asp:Label ID="lblOldPwd" runat="server" Text="Old Password:"></asp:Label>
                    
                </td>
                <td>

                </td>
                <td class="auto-style10"><asp:TextBox ID="txtOldPwd" runat="server"></asp:TextBox></td>
                <td class="auto-style11">

                    <asp:RequiredFieldValidator ID="rfvOldPwd" runat="server" ControlToValidate="txtOldPwd" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>
                    
                    <asp:Label ID="lblNewPwd" runat="server" Text="New Password:"></asp:Label>
                    
                </td>
                <td>

                    &nbsp;</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style11">

                    <asp:RequiredFieldValidator ID="rfvNewPwd" runat="server" ControlToValidate="txtNewPwd" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>
                    
                    <asp:Label ID="lblConfirm" runat="server" Text="Confirm New Password:"></asp:Label>
                    
                </td>
                <td>

                    &nbsp;</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
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
                <td class="auto-style10">

                    <asp:CompareValidator ID="cvConfirm" runat="server" ControlToCompare="txtNewPwd" ControlToValidate="txtConfirm" ErrorMessage="Passwords should match!" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>

                </td>
                <td class="auto-style11">

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td dir="rtl">
                    
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    
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
