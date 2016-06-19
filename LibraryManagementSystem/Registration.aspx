<%@ Page Title="Registration.aspx" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="LibraryManagementSystem.Registration1" %>
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
        .auto-style9 {
            width: 677px;
        }
        .auto-style10 {
            width: 99px;
        }
    </style>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
       <table>
           <tr>
               <td class="auto-style6">
               </td>
               <td><h2 class="auto-style8">Registration </h2></td>
               <td class="auto-style7"></td>
           </tr>
       </table>
   </div>
         
   
   
    <div>
        <table>
            <tr><td class="auto-style6"></td><td></td><td></td>
                <td>
                    
                </td>
            </tr>
            <tr>
             <td class="auto-style6"></td>   <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>

                </td>
            </tr>
            <tr>
               <td class="auto-style6"></td> <td><asp:Label ID="lblFirstName" Text="First Name :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
                <td>

                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
              <td class="auto-style6"></td>  <td><asp:Label ID="lblLastName" Text="Last Name :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
                 <td>

                     <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
               <td class="auto-style6"></td> <td><asp:Label ID="lblUserName" Text="User Name :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
                 <td>

                     <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td><td><asp:Label ID="lblPassword" Text="Password :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtPassword" runat="server" t TextMode="Password"></asp:TextBox></td>
                 <td>

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
              <td class="auto-style6"></td>  <td><asp:Label ID="lblMobileNo" Text="Mobile No :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtMobileNo" runat="server"></asp:TextBox></td>
                 <td>

                     <asp:RequiredFieldValidator ID="rfvMobileNo" runat="server" ControlToValidate="txtMobileNo" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
               <td class="auto-style6"></td> <td>
                <asp:Label ID="lblRole" runat="server" Text="Role"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlRole" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>User</asp:ListItem>
                        <asp:ListItem>Staff</asp:ListItem>
                    </asp:DropDownList>

                     <asp:RequiredFieldValidator ID="rfvRole" runat="server" ControlToValidate="ddlRole" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

                </td>
                 <td>

                     &nbsp;</td>
            </tr>
            <tr>
               <td class="auto-style6"></td> <td></td>
                <td></td>
                 <td>

                </td>
            </tr>
            <tr>
              <td class="auto-style6"></td>  <td>

                </td>
                <td>
                    <asp:Button ID="btnRegister" Text="Register" runat="server" OnClick="btnRegister_Click" />
                </td>
                 <td>

                </td>
            </tr>

            
        </table>
        <table>
            <tr>
                <td class="auto-style10">

                </td>
                <td class="auto-style9">

                    <asp:Label ID="lblMessage" runat="server"></asp:Label>

                </td>
            </tr>
        </table>
    </div>
</asp:Content>
