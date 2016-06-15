<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ListOfUsers.aspx.cs" Inherits="LibraryManagementSystem.ViewDeleteUsers" %>
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
               <td><h2 class="auto-style8">List Of Users  </h2></td>
               <td class="auto-style7"></td>
           </tr>
       </table>
   </div>
    <div>
        <table>
             <tr><td class="auto-style6"></td><td></td><td></td></tr>
            <tr>
             <td class="auto-style6"></td>   <td>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
                </td>
                <td></td>
            </tr>
        </table>
        
    </div>
</asp:Content>
