<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/MasterPage.Master" AutoEventWireup="true" CodeBehind="adddepartment.aspx.cs" Inherits="Library.librarian.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <h3 style="text-align: center;background-color:purple;color:white">Add Department</h3>
</div>
<div>
    <table align="center" class="style1">
        <tr>
            <td>
                <asp:Label ID="lbldepartmentid" runat="server" Text="Deprtment ID" style="color:purple"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdepartmentid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtdepartmentid"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbldepartmentname" runat="server" Text="Department  Name"  style="color:purple"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdepartmentname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtdepartmentname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblcourseid" runat="server" Text="Course ID"  style="color:purple"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="courseid" runat="server" AutoPostBack="True" OnSelectedIndexChanged="courseid_SelectedIndexChanged" ></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="courseid"></asp:RequiredFieldValidator>
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
                <asp:Button ID="adddepartmenr" runat="server" Text="Add Department" CssClass="btnmenu" OnClick="adddepartmenr_Click" /></td>
        </tr>

    </table>


</div>








</asp:Content>
