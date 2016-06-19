<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomeUser.aspx.cs" Inherits="LibraryManagementSystem.HomeUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table>
            <tr>
                <td>

                    <asp:Menu ID="Menu1" runat="server">
                        <Items>
                            <asp:MenuItem NavigateUrl="~/ForgotPassword.aspx" Text="Forgot Password" Value="Forgot Password"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/ChangePassword.aspx" Text="Change Password" Value="Change Password"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/RequestABook.aspx" Text="Request a Book" Value="Request a Book"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/ReturnABook.aspx" Text="Return a Book" Value="Return a Book"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/UserBookInfo.aspx" Text="Books Info" Value="Books Info"></asp:MenuItem>
                        </Items>
                    </asp:Menu>

                </td>
            </tr>
        </table>
    </div>
</asp:Content>
