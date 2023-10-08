<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Library.librarian.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table   style="width:100%">
        <tr>
            <td class="tblhead">
                Welcome to Digital Library System</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Image Style="width:600px; height:400px; padding-top:50px;" ID="Image2" runat="server" ImageUrl="~/img/kipm.jpg" />
            </td>
        </tr>
    </table>
</asp:Content>
