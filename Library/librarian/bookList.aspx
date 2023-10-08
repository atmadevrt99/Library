<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/MasterPage.Master" AutoEventWireup="true" CodeBehind="bookList.aspx.cs" Inherits="Library.librarian.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <asp:GridView ID="gvViewDetails" runat="server" AutoGenerateColumns="TRUE" 
    Width="748px" BackColor="white" BorderColor="#f7f7f7" 
    BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" 
     style="text-align: center">
    <AlternatingRowStyle BackColor="#dfdfdf" />
    
    
    <FooterStyle BackColor="Tan" />
    <HeaderStyle BackColor="purple" ForeColor="White" Font-Bold="True" />
    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
        HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    <SortedAscendingCellStyle BackColor="#FAFAE7" />
    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
    <SortedDescendingCellStyle BackColor="#E1DB9C" />
    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
</asp:GridView>
</center>
</asp:Content>
