<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LibraryManagementSystem.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <div>
        <table>
            <tr>
                <td>
                    <h2>Welcome !</h2>
                </td>
                <td>

                </td>
            </tr>
            <tr>
                <td>
                     <asp:Panel ID="AdminPanel" runat="server"  >
                    <asp:Menu ID="AdminMenu" runat="server">
                        <Items>
                            <asp:MenuItem NavigateUrl="~/AddNewBook.aspx" Text="Add New Book" Value="Add New Book"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/ListOfUsers.aspx" Text="List Of Users" Value="List Of Users"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/ListOfBooks.aspx" Text="List Of Books" Value="List Of Books"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/SearchBooks.aspx" Text="Search Books" Value="Search Books"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/BookTransactions.aspx" Text="Book Transactions" Value="Book Transactions"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Account Info.aspx" Text="Account Info" Value="Account Info"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/ChangePassword.aspx" Text="Change Password" Value="Change Password"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                         </asp:Panel>
                </td>
                <td>
                    
                    <asp:Panel ID="UserPanel" runat="server" >
                      <asp:Menu ID="UserMenu" runat="server">
                        <Items>
                            <asp:MenuItem NavigateUrl="~/ChangePassword.aspx" Text="Change Password" Value="Change Password"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/RequestABook.aspx" Text="Request a Book" Value="Request a Book"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/ReturnABook.aspx" Text="Return a Book" Value="Return a Book"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/UserBookInfo.aspx" Text="Books Info" Value="Books Info"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/SearchBooks.aspx" Text="Search Books" Value="Search Books"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Account Info.aspx" Text="Account Info" Value="Account Info"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                    </asp:Panel>
                </td>
                
            </tr>
           
        </table>
    </div>
    
   
    
</asp:Content>
