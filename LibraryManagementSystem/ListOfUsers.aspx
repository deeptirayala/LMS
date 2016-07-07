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
                   <asp:LinkButton ID="lbtnMenu" runat="server" PostBackUrl="~/Default.aspx">Main Menu</asp:LinkButton>
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
                 
                          <asp:GridView ID="gvUsers" runat="server" EmptyDataText="No Records !" AllowPaging="True" AutoGenerateColumns="False" OnRowDeleting="gvUsers_RowDeleting" OnRowCommand="gvUsers_RowCommand" OnPageIndexChanging="gvUsers_PageIndexChanging">
                              <Columns>
                                   <asp:TemplateField HeaderText="Id" ItemStyle-Width="100">
                                      <ItemTemplate>
                                          <asp:Label ID="lblId" runat="server" Text='<%#Eval("Id") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="First Name" ItemStyle-Width="100">
                                      <ItemTemplate>
                                          <asp:Label ID="lblFname" runat="server" Text='<%#Eval("FirstName") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                   <asp:TemplateField HeaderText="Last Name" ItemStyle-Width="100">
                                      <ItemTemplate>
                                          <asp:Label ID="lblLname" runat="server" Text='<%#Eval("LastName") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                   <asp:TemplateField HeaderText="User Name" ItemStyle-Width="100">
                                      <ItemTemplate>
                                          <asp:Label ID="lblUname" runat="server" Text='<%#Eval("UserName") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                   <asp:TemplateField HeaderText="Mobile No" ItemStyle-Width="100">
                                      <ItemTemplate>
                                          <asp:Label ID="lblMobile" runat="server" Text='<%#Eval("MobileNo") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                   <asp:TemplateField HeaderText="Registered Date" ItemStyle-Width="100">
                                      <ItemTemplate>
                                          <asp:Label ID="lblRDate" runat="server" Text='<%#Eval("RegisteredDate") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                   <asp:TemplateField HeaderText="Role" ItemStyle-Width="100">
                                      <ItemTemplate>
                                          <asp:Label ID="lblRole" runat="server" Text='<%#Eval("Role") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField>
                                      <ItemTemplate>
                                          <asp:LinkButton ID="lbtndelete"  runat="server" CommandName="Delete" CommandArgument='<%#Eval("Id") %>' CausesValidation="false" OnClientClick="return confirm('Do you want to delete?')" Text="Delete" >

                                          </asp:LinkButton>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                              </Columns>
                </asp:GridView>
               
                </td>
                <td></td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                    
                </td>
            </tr>
        </table>
        
    </div>
</asp:Content>
