<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UserBookInfo.aspx.cs" Inherits="LibraryManagementSystem.UserBookInfo" %>
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
               <td><h2 class="auto-style8"> Book Info  </h2></td>
               <td class="auto-style7"></td>
           </tr>
       </table>
   </div>
    <div>
        <table>
            <tr>
                <td>
                    <asp:LinkButton ID="lbtnMenu" Text="Main Menu" runat="server" PostBackUrl="~/Default.aspx"></asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>

                    <asp:GridView ID="gvBooks" runat="server" AllowPaging="True" EmptyDataText="No Records!" OnPageIndexChanging="gvBooks_PageIndexChanging">
                    </asp:GridView>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMessage" runat="server" ></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
