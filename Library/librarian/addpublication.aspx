<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/MasterPage.Master" AutoEventWireup="true" CodeBehind="addpublication.aspx.cs" Inherits="Library.librarian.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div>
     <h3 style="text-align: center;background-color:purple;color:white">Add Publication</h3>
 </div>
 <div>
     <table align="center" class="style1">
         <tr>
             <td>
                 <asp:Label ID="lblpid" runat="server" Text="Publication ID" style="color:purple"></asp:Label>
             </td>
             <td>
                 <asp:TextBox ID="txtpid" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtpid"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:Label ID="lblpname" runat="server" Text="Pubication  Name"  style="color:purple"></asp:Label>
             </td>
             <td>
                 <asp:TextBox ID="txtpname" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtpname"></asp:RequiredFieldValidator>
             </td>
         </tr>
          <tr>
     <td>
         <asp:Label ID="lblpdate" runat="server" Text="Pubication  Date"  style="color:purple"></asp:Label>
     </td>
     <td>
         <asp:TextBox ID="txtpdate" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtpdate"></asp:RequiredFieldValidator>
     </td>
 </tr>
       
         <tr>
             <td>
                 <asp:Label ID="lblisactive" runat="server" Text="Is Active"  style="color:purple"></asp:Label>
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
                 <asp:Button ID="addpublication" runat="server" Text="Add Publication" CssClass="btnmenu" OnClick="addpublication_Click" /></td>
         </tr>

     </table>


 </div>







</asp:Content>
