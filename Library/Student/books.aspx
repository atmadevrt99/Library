<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.Master" AutoEventWireup="true" CodeBehind="books.aspx.cs" Inherits="Library.Student.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
    <h3 style="text-align: center; background-color: purple; color: white">BOOK LIST</h3>
</div>
            
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        Width="748px" BackColor="white" BorderColor="#f7f7f7" 
        BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" 
         style="text-align: center">
        <AlternatingRowStyle BackColor="#dfdfdf" />
        
        <Columns>
            
            <asp:BoundField DataField="BOOK_ID" HeaderText="Book Id" />
            <asp:BoundField DataField="BookName" HeaderText="Book Name" />
            <asp:BoundField DataField="AUTH_NAME" HeaderText="Auth Nmae" />
            
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="purple" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>


</asp:Content>
