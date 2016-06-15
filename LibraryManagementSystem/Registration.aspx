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
            <tr><td class="auto-style6"></td><td></td><td></td></tr>
            <tr>
             <td class="auto-style6"></td>   <td><asp:Label ID="lblMemberId" Text="Member Id :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtMemberId" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
               <td class="auto-style6"></td> <td><asp:Label ID="lblFirstName" Text="First Name :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
              <td class="auto-style6"></td>  <td><asp:Label ID="lblLastName" Text="Last Name :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
               <td class="auto-style6"></td> <td><asp:Label ID="lblUserName" Text="User Name :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style6"></td><td><asp:Label ID="lblPassword" Text="Password :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="TextBox1" runat="server" t TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
              <td class="auto-style6"></td>  <td><asp:Label ID="lblMobileNo" Text="Mobile No :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtMobileNo" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
               <td class="auto-style6"></td> <td><asp:Label ID="lblEmail" Text="Email :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
               <td class="auto-style6"></td> <td><asp:Label ID="lblGender" Text="Gender :" runat="server"></asp:Label></td>
                <td><asp:DropDownList ID="ddlGender" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
               <td class="auto-style6"></td> <td><asp:Label ID="lblAddress" Text="Address :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
               <td class="auto-style6"></td> <td><asp:Label ID="lblRegDate" Text="Registered Date :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtRegDate" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
               <td class="auto-style6"></td> <td></td>
                <td></td>
            </tr>
            <tr>
              <td class="auto-style6"></td>  <td>

                </td>
                <td>
                    <asp:Button ID="btnRegister" Text="Register" runat="server" />
                </td>
            </tr>

        </table>
    </div>
</asp:Content>
