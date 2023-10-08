<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/MasterPage.Master" AutoEventWireup="true" CodeBehind="addbooks.aspx.cs" Inherits="Library.librarian.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h3 style="text-align: center;background-color:purple;color:white">Add Books</h3>
    </div>
    <div>
        <table align="center" class="style1">
            <tr>
                <td>
                    <asp:Label ID="lblbookid" runat="server" Text="Book No." style="color:purple"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbookid" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtbookid"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblbookname" runat="server" Text="Book Name"  style="color:purple"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbookname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtbookname"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblauthor" runat="server" Text="Author"  style="color:purple"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtauthor" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtauthor"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="lblpublicationid" runat="server" Text="Production ID"  style="color:purple"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="publicationid" runat="server" AutoPostBack="True" OnSelectedIndexChanged="publicationid_SelectedIndexChanged"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="publicationid"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbltotalbook" runat="server" Text="Total Books"  style="color:purple"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txttotalbook" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txttotalbook"></asp:RequiredFieldValidator>
                </td>
            
            <tr>
                <td>
                    <asp:Label ID="lblisactive" runat="server" Text="Is Active"  style="color:purple"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtisactive" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtisactive"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td colspan="2" align="center">
                    <asp:Label ID="lblMsg" runat="server" Font-Bold="True"></asp:Label>

                </td>
 
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="addbook" runat="server" Text="Add book" CssClass="btnmenu" OnClick="addbook_Click" /></td>
            </tr>

        </table>


    </div>

</asp:Content>
