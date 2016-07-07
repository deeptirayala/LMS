<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Account Info.aspx.cs" Inherits="LibraryManagementSystem.Account_Info" %>
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
             width: 152px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
       <table>
           <tr>
               <td class="auto-style6">
                   <asp:LinkButton ID="lbtnMenu" runat="server" PostBackUrl="~/Default.aspx">Main Menu</asp:LinkButton>
               </td>
               <td><h2 class="auto-style8">Account Information </h2></td>
               <td class="auto-style7"></td>
           </tr>
       </table>
   </div>
    <div>
        <table>
            <tr>
                <td class="auto-style6">

                </td>
                <td class="auto-style9">
                    
                    &nbsp;</td>
                <td class="auto-style6">
                    
                    &nbsp;</td>
                <td>

                </td>
            </tr>
            <tr>
                <td class="auto-style6">

                    &nbsp;</td>
                <td class="auto-style9">
                    
                    <asp:Label ID="lblId" runat="server" Text="Member Id:"></asp:Label>
                </td>
                <td class="auto-style6">
                    
                    <asp:Label ID="Id" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">

                    &nbsp;</td>
                <td class="auto-style9">
                    
                    <asp:Label ID="lblFn" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style6">
                    
                    <asp:Label ID="FirstName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">

                    &nbsp;</td>
                <td class="auto-style9">
                    
                    <asp:Label ID="lblLn" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style6">
                    
                    <asp:Label ID="LastName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">

                    &nbsp;</td>
                <td class="auto-style9">
                    
                    <asp:Label ID="lblUn" runat="server" Text="User Name:"></asp:Label>
                </td>
                <td class="auto-style6">
                    
                    <asp:Label ID="UserName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">

                    &nbsp;</td>
                <td class="auto-style9">
                    
                    <asp:Label ID="lblMobile" runat="server" Text="Mobile No:"></asp:Label>
                </td>
                <td class="auto-style6">
                    
                    <asp:Label ID="MobileNo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">

                    &nbsp;</td>
                <td class="auto-style9">
                    
                    <asp:Label ID="lblRegDate" runat="server" Text="Registered Date:"></asp:Label>
                </td>
                <td class="auto-style6">
                    
                    <asp:Label ID="RegDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">

                    &nbsp;</td>
                <td class="auto-style9">
                    
                    &nbsp;</td>
                <td class="auto-style6">
                    
                    &nbsp;</td>
            </tr>
           
        </table>
        <table>
            <tr>
                <td class="auto-style6">

                </td>
                <td>
                    <asp:Label ID="lblMessage" runat="server" ></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
