<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.Master" AutoEventWireup="true" CodeBehind="myprofile.aspx.cs" Inherits="Library.Student.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <asp:GridView ID="gvViewDetails" runat="server"></asp:GridView>
    </center>
</asp:Content>
