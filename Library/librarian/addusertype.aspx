<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/MasterPage.Master" AutoEventWireup="true" CodeBehind="addusertype.aspx.cs" Inherits="Library.librarian.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div>
     <h3 style="text-align: center; background-color: purple; color: white">Add User Type</h3>
 </div>
 <div>
     <table align="center" class="style1">
         <tr>
             <td>
                 <asp:Label ID="lblusertypeid" runat="server" Text="User Type ID" Style="color: purple"></asp:Label>
             </td>
             <td>
                 <asp:TextBox ID="txtusertypeid" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtusertypeid"></asp:RequiredFieldValidator>
             </td>
         </tr>
          <tr>
     <td>
         <asp:Label ID="lblusertype" runat="server" Text="User Type" Style="color: purple"></asp:Label>
     </td>
     <td>
         <asp:TextBox ID="txtusertype" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtusertype"></asp:RequiredFieldValidator>
     </td>
 </tr>
         <tr>
             <td>
                 <asp:Label ID="lblusername" runat="server" Text="User Name" Style="color: purple"></asp:Label>
             </td>
             <td>
                 <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtusername"></asp:RequiredFieldValidator>
             </td>
         </tr>
        

        
         <tr>
             <td>
                 <asp:Label ID="lblisactive" runat="server" Text="Is Active" Style="color: purple"></asp:Label>
             </td>
             <td>
                 <asp:TextBox ID="txtisactive" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtisactive"></asp:RequiredFieldValidator>
             </td>
         </tr>
         
         <tr>
            <td colspan="2" align="center">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True"></asp:Label>

            </td>
 
        </tr>
         <tr>
             <td colspan="2" align="center">
                 <asp:Button ID="adduser" runat="server" Text="Add User" CssClass="btnmenu" OnClick="adduser_Click" /></td>
         </tr>

     </table>


 </div>







</asp:Content>
