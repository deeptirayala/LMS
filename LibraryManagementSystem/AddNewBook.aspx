<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddNewBook.aspx.cs" Inherits="LibraryManagementSystem.AddNewBook" %>
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
             width: 181px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
       <table>
           <tr>
               <td class="auto-style6">
               </td>
               <td><h2 class="auto-style8">Add a Book </h2></td>
               <td class="auto-style7"></td>
           </tr>
       </table>
   </div>
          
    <div>
        <table>
            <tr><td class="auto-style6">
                <asp:LinkButton ID="lbtnMenu" runat="server" PostBackUrl="~/Default.aspx">Main Menu</asp:LinkButton>
                </td><td></td><td></td></tr>
            <tr>
               <td class="auto-style6"></td> <td><asp:Label ID="lblBookTitle" Text="Book Title :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtBookTitle" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvBookTitle" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtBookTitle" SetFocusOnError="true"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
               <td class="auto-style6"></td> <td><asp:Label ID="lblCategory" Text="Category :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtCategory" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvCategory" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtCategory" SetFocusOnError="true"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td><td><asp:Label ID="lblAuthorName" Text="Author Name :" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtAuthorName" runat="server"  ></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvAuthorName" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtAuthorName" SetFocusOnError="true"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
               <td class="auto-style6"></td> <td>
                <asp:Label ID="lblCopies" runat="server" Text="Copies:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCopies" runat="server"></asp:TextBox>
                </td>
                <td>

                    <asp:RequiredFieldValidator ID="rfvCopies" runat="server" ControlToValidate="txtCopies" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                </td>
                <td>

                    <asp:CompareValidator ID="cvCopies" runat="server" ControlToValidate="txtCopies" ErrorMessage="Value should atleast be 1" ForeColor="Red" Operator="GreaterThan" SetFocusOnError="True" Type="Integer" ValueToCompare="0"></asp:CompareValidator>

                </td>
            </tr>
            <tr>
               <td class="auto-style6">&nbsp;</td> <td>&nbsp;</td>
                <td>
                    <asp:Button ID="txtSubmit" runat="server" Text="Submit" OnClick="txtSubmit_Click" />
                    <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td class="auto-style9">

                </td>
                <td>
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
