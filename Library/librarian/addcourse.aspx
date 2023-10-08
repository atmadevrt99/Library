<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/MasterPage.Master" AutoEventWireup="true" CodeBehind="addcourse.aspx.cs" Inherits="Library.librarian.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <h3 style="text-align: center;background-color:purple;color:white">Add Course</h3>
</div>
<div>
    <table align="center" class="style1">
        <tr>
            <td>
                <asp:Label ID="lblcourseid" runat="server" Text="Course ID" style="color:purple"></asp:Label>                
            </td>
            <td>
                <asp:TextBox ID="txtcourseid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtcourseid"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblcoursename" runat="server" Text="course  Name"  style="color:purple"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcoursename" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtcoursename"></asp:RequiredFieldValidator>
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
                <asp:Button ID="addcourse" runat="server" Text="Add Course" CssClass="btnmenu" OnClick="addcourse_Click" /></td>
        </tr>

    </table>


</div>








</asp:Content>
