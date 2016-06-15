<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SearchBooks.aspx.cs" Inherits="LibraryManagementSystem.SearchBooks" %>
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
               <td><h2 class="auto-style8">Search&nbsp;  Books  </h2></td>
               <td class="auto-style7"></td>
           </tr>
       </table>
   </div>
    <div>
        <table>
            <tr><td class="auto-style6"></td><td></td><td></td></tr>
            <tr>
             <td class="auto-style6"></td>   <td><asp:Label ID="lblBookId" Text="Book Id :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtBookId" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
               <td class="auto-style6"></td> <td><asp:Label ID="lblBookTitle" Text="Book Title :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtBookTitle" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
              <td class="auto-style6"></td>  <td><asp:Label ID="lblCategory" Text="Category :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtCategory" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
               <td class="auto-style6"></td> <td>
                <asp:Label ID="lblAuthorName" runat="server" Text="Author Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAuthorName" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
               <td class="auto-style6">&nbsp;</td> <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td><td>&nbsp;</td>
                <td>
                    <asp:Button ID="txtSearch" runat="server" Text="Search" />
                </td>
            </tr>
            <tr>
               <td class="auto-style6"></td> <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>
        <table>
            <tr>
                <td class="auto-style6"></td>
                <td>
                    <asp:Label runat="server" ID="lblMessage">

                    </asp:Label>
                </td>
                <td></td>
            </tr>
        </table>
    </div>
     
</asp:Content>
