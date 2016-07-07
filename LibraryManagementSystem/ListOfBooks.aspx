<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ListOfBooks.aspx.cs" Inherits="LibraryManagementSystem.ListOfBooks" %>
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
             width: 419px;
         }
         .auto-style10 {
             width: 668px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
       <table>
           <tr>
               <td class="auto-style6">
               </td>
               <td><h2 class="auto-style8">List Of Books  </h2></td>
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
             <td class="auto-style6"></td>   <td>
                <asp:GridView ID="gvBooks" runat="server" EmptyDataText="No Records !" AutoGenerateColumns="false" DataKeyNames="Id" OnRowCommand="gvBooks_RowCommand" OnRowDeleting="gvBooks_RowDeleting" OnRowEditing="gvBooks_RowEditing" OnRowUpdating="gvBooks_RowUpdating" OnRowCancelingEdit="gvBooks_RowCancelingEdit">
                    <Columns>
                                   <asp:TemplateField HeaderText="Id" ItemStyle-Width="150">
                                      <ItemTemplate>
                                          <asp:Label ID="lblId" runat="server" Text='<%#Eval("Id") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                          <asp:TemplateField HeaderText="Book Title" ItemStyle-Width="150">
                                      <ItemTemplate>
                                          <asp:Label ID="lblBookTitle" runat="server" Text='<%#Eval("BookTitle") %>'></asp:Label>
                                          
                                      </ItemTemplate>
                              <EditItemTemplate>
                                  <asp:TextBox ID="txtBookTitle" runat="server" Text='<%#Eval("BookTitle") %>'></asp:TextBox>
                              </EditItemTemplate>
                                  </asp:TemplateField>
                                   <asp:TemplateField HeaderText="Category" ItemStyle-Width="150">
                                      <ItemTemplate>
                                           <asp:Label ID="lblCategory" runat="server" Text='<%#Eval("Category") %>'></asp:Label>
                                          
                                      </ItemTemplate>
                                       <EditItemTemplate>
                                           <asp:TextBox ID="txtCategory" runat="server" Text='<%#Eval("Category") %>'></asp:TextBox>
                                       </EditItemTemplate>
                                  </asp:TemplateField>
                                   <asp:TemplateField HeaderText="Author Name" ItemStyle-Width="150">
                                      <ItemTemplate>
                                          <asp:Label ID="lblAuthName" runat="server" Text='<%#Eval("AuthorName") %>'></asp:Label>
                                        
                                      </ItemTemplate>
                                       <EditItemTemplate>
                                             <asp:TextBox ID="txtAuthName" runat="server" Text='<%#Eval("AuthorName") %>'></asp:TextBox>
                                       </EditItemTemplate>
                                  </asp:TemplateField>
                                   <asp:TemplateField HeaderText="Copies" ItemStyle-Width="150">
                                      <ItemTemplate>
                                           <asp:Label ID="lblCopies" runat="server" Text='<%#Eval("Copies") %>'></asp:Label>
                                         
                                      </ItemTemplate>
                                       <EditItemTemplate>
                                            <asp:TextBox ID="txtCopies" runat="server" Text='<%#Eval("Copies") %>'></asp:TextBox>
                                       </EditItemTemplate>
                                  </asp:TemplateField>
                      
                      <asp:CommandField ButtonType="Link" ShowEditButton="true" ItemStyle-Width="150" />
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
            
        </table>
        <table>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="auto-style9">

                </td>
                <td class="auto-style10">

                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>

                </td>
            </tr>
        </table>
        
    </div>
          
</asp:Content>
