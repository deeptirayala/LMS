<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ReturnABook.aspx.cs" Inherits="LibraryManagementSystem.ReturnOfBook" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
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
               <td><h2 class="auto-style8">Return A  Book  </h2></td>
               <td class="auto-style7"></td>
           </tr>
       </table>
   </div>
    <div>
         <asp:ScriptManager runat="server" ID="scriptmgr"></asp:ScriptManager>
        <table>
            <tr><td class="auto-style6">
                <asp:LinkButton ID="lbtnMenu" runat="server" PostBackUrl="~/Default.aspx">Main Menu</asp:LinkButton>
                </td><td></td><td></td></tr>
            <tr>
             <td class="auto-style6">&nbsp;</td>   <td>
                &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
             <td class="auto-style6"></td>   <td><asp:Label ID="lblBookId" Text="Book Id :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtBookId" runat="server"></asp:TextBox></td>
                <td>

                    <asp:RequiredFieldValidator ID="rfvBookId" runat="server" ControlToValidate="txtBookId" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ToolTip="Book Id cannot be empty"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
               <td class="auto-style6"></td> <td><asp:Label ID="lblBookTitle" Text="Book Title :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtBookTitle" runat="server"></asp:TextBox></td>
                <td>

                    <asp:RequiredFieldValidator ID="rfvBookTitle" runat="server" ControlToValidate="txtBookTitle" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ToolTip="Book Title cannot be empty"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
               <td class="auto-style6"></td> <td>
                <asp:Label ID="lblReturnDate" runat="server" Text="Return Date :"></asp:Label>
                </td>
                <td>
                   
                    <asp:TextBox ID="txtReturnDate" runat="server" ></asp:TextBox>
                    
                </td>
                <td>

                    <asp:RequiredFieldValidator ID="rfvReturnDate" runat="server" ControlToValidate="txtReturnDate" ErrorMessage="*" ForeColor="Red" ToolTip="Return Date cannot be empty"></asp:RequiredFieldValidator>

                </td>
                <td>
                   
                </td>
            </tr>
            <tr>
               <td class="auto-style6">&nbsp;</td> <td>
                &nbsp;</td>
                <td>
                    <ajaxToolkit:CalendarExtender ID="txtReturnDate_CalendarExtender" runat="server" TargetControlID="txtReturnDate" Format="yyyy-MM-dd" />
                    <br />
                </td>
            </tr>
            <tr>
               <td class="auto-style6">&nbsp;</td> <td>&nbsp;</td>
                <td>
                    <asp:Button ID="txtSubmit" runat="server" Text="Submit" OnClick="txtSubmit_Click" />
                    <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
                </td>
            </tr>
            <tr>
               <td class="auto-style6">&nbsp;</td> <td><asp:Label ID="lblCopies" Text="Issued Date :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtIssuedDate" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style6"></td><td>
                <asp:Label ID="lblDueDate" runat="server" Text="Due Date :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDueDate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
               <td class="auto-style6"></td> <td>
                <asp:Label ID="lblFine" runat="server" Text="Fine:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFine" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
               <td class="auto-style6">&nbsp;</td> <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>
        <table>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style9">
                    <asp:Label runat="server" ID="lblMessage" ForeColor="Red"></asp:Label>
                </td>
                <td></td>
            </tr>
        </table>
    </div>
</asp:Content>
