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
        .auto-style11 {
            width: 263px;
        }
        .auto-style12 {
            width: 126px;
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
            <tr><td class="auto-style11"></td><td class="auto-style12"></td><td></td>
                <td>
                    
                </td>
            </tr>
            <tr>
             <td class="auto-style11"></td>   <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
                <td>

                </td>
            </tr>
            <tr>
               <td class="auto-style11"></td> <td class="auto-style12"><asp:Label ID="lblFirstName" Text="First Name :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
                <td>

                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
              <td class="auto-style11"></td>  <td class="auto-style12"><asp:Label ID="lblLastName" Text="Last Name :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
                 <td>

                     <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
               <td class="auto-style11"></td> <td class="auto-style12"><asp:Label ID="lblUserName" Text="User Name :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
                 <td>

                     <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td><td class="auto-style12"><asp:Label ID="lblPassword" Text="Password :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtPassword" runat="server" t TextMode="Password"></asp:TextBox></td>
                 <td>

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
              <td class="auto-style11"></td>  <td class="auto-style12"><asp:Label ID="lblMobileNo" Text="Mobile No :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtMobileNo" runat="server"></asp:TextBox></td>
                 <td>

                     <asp:RequiredFieldValidator ID="rfvMobileNo" runat="server" ControlToValidate="txtMobileNo" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                </td>
                <td>

                    &nbsp;</td>
            </tr>
            <tr>
              <td class="auto-style11">&nbsp;</td>  <td class="auto-style12">
                <asp:Label ID="Label1" runat="server" Text="(ex: 111-555-9999)"></asp:Label>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="reMobile" runat="server" ControlToValidate="txtMobileNo" ErrorMessage="Enter valid Phone Number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[2-9]\d{2}-\d{3}-\d{4}$"></asp:RegularExpressionValidator>
                </td>
                 <td>

                     &nbsp;</td>
                <td>

                    &nbsp;</td>
            </tr>
            <tr>
              <td class="auto-style11">&nbsp;</td>  <td class="auto-style12">
                <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                 <td>

                     <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>

                </td>
                <td>

                    &nbsp;</td>
            </tr>
            <tr>
              <td class="auto-style11">&nbsp;</td>  <td class="auto-style12">
                &nbsp;</td>
                <td>
                    <asp:RegularExpressionValidator ID="reEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter valid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                 <td>

                     &nbsp;</td>
                <td>

                    &nbsp;</td>
            </tr>
            <tr>
               <td class="auto-style11"></td> <td class="auto-style12">
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
               <td class="auto-style11"></td> <td class="auto-style12"></td>
                <td></td>
                 <td>

                </td>
            </tr>
            <tr>
              <td class="auto-style11"></td>  <td class="auto-style12">

                </td>
                <td>
                    <asp:Button ID="btnRegister" Text="Register" runat="server" OnClick="btnRegister_Click" />
                    <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
                </td>
                 <td>

                </td>
            </tr>

            
           
            
        </table>
        <table>
            <tr>
              <td class="auto-style6">&nbsp;</td>  <td>

                <asp:Label ID="lblNewUser" runat="server" Text="Not a New User?"></asp:Label>

                </td>
               <td>
                   <asp:LinkButton ID="Login" PostBackUrl="~/Login.aspx" Text="Login Here" runat="server"></asp:LinkButton>
               </td>
            </tr>

            <tr>
              <td class="auto-style6">&nbsp;</td>  <td>

                &nbsp;</td>
               <td>
                   &nbsp;</td>
            </tr>

        </table>
        <table>
            <tr>
                <td class="auto-style10">

                </td>
                <td class="auto-style9">

                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>

                </td>
            </tr>
        </table>
    </div>
</asp:Content>
