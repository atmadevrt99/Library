<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/MasterPage.Master" AutoEventWireup="true" CodeBehind="addbranch.aspx.cs" Inherits="Library.librarian.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
     <h3 style="text-align: center;background-color:purple;color:white">Add Branch</h3>
 </div>
 <div>
     <table align="center" class="style1">
         <tr>
             <td>
                 <asp:Label ID="lblbranchid" runat="server" Text="Branch ID" style="color:purple"></asp:Label>
             </td>
             <td>
                 <asp:TextBox ID="txtbranchid" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtbranchid"></asp:RequiredFieldValidator>
             </td>
         </tr>
        
         <tr>
             <td>
                 <asp:Label ID="lbldeapartmentid" runat="server" Text="Department ID"  style="color:purple"></asp:Label>
             </td>
             <td>
                 <asp:DropDownList ID="departmentid" runat="server" AutoPostBack="True" OnSelectedIndexChanged="departmentid_SelectedIndexChanged"></asp:DropDownList>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="departmentid"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
            <td>
                <asp:Label ID="lblbranchname" runat="server" Text="Branch Name"  style="color:purple"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbranchname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtbranchname"></asp:RequiredFieldValidator>
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
                 <asp:Button ID="addbranch" runat="server" Text="Add Branch" CssClass="btnmenu" OnClick="addbranch_Click" /></td>
         </tr>

     </table>


 </div>









</asp:Content>
