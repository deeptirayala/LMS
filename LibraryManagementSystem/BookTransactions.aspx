<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BookTransactions.aspx.cs" Inherits="LibraryManagementSystem.BookTransactions" %>
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
            width: 469px;
        }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
       <table>
           <tr>
               <td class="auto-style6">
               </td>
               <td><h2 class="auto-style8">Book Transactions  </h2></td>
               <td class="auto-style7"></td>
           </tr>
       </table>
   </div>
    <div>
        <table>
            <tr>
                <td class="auto-style6">
                    <asp:LinkButton ID="lbtnMenu" runat="server" Text="Main Menu" PostBackUrl="~/Default.aspx"></asp:LinkButton>
                </td>
                <td class="auto-style6">

                </td>
            </tr>
            <tr>
                <td class="auto-style6">

                </td>
                 <td class="auto-style6">

                     <asp:GridView ID="gvTransactions" runat="server" AllowPaging="True" EmptyDataText="No Records !" OnPageIndexChanging="gvTransactions_PageIndexChanging">
                     </asp:GridView>

                </td>
            </tr>
            <tr>
                <td class="auto-style6">

                </td>
                 <td class="auto-style6">

                     <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>

                </td>
            </tr>
        </table>
    </div>
</asp:Content>
