<%@ Page Title="" Language="C#" MasterPageFile="~/librarian/MasterPage.Master" AutoEventWireup="true" CodeBehind="issuebook.aspx.cs" Inherits="Library.librarian.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <h3 style="text-align: center;background-color:purple;color:white">Issue Book </h3>
</div>
    <div>
        <table align="center" class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="USER ID"  style="color:purple"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="search" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="search" ValidationGroup="SearchValidation"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Search" CssClass="btnmenu" OnClick="Button1_Click" ValidationGroup="SearchValidation" />
</td>
            </tr>            
        </table>
        <center>
            <h3 style="width:500px; text-align: center;background-color:purple;color:white">User Detail's </h3>
    <asp:GridView ID="gvViewDetailsU" runat="server" AutoGenerateColumns="TRUE" 
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
    </asp:GridView>        </center>
        <center>
                <h3 style="width:500px; text-align: center;background-color:purple;color:white">Taken Book's </h3>
<asp:GridView ID="GridViewIssued" runat="server" AutoGenerateColumns="TRUE" 
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
    </div>
    <center>
     <asp:Label ID="issuedBooksLabel" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
        </center>
<div>
    <table align="center" class="style1" >
         <tr>
             <td>
                <asp:Label ID="Label2" runat="server" Text="User Id"  style="color:purple"></asp:Label>
            </td>
            <td>
                <asp:Label ID="issue_user_id" runat="server" Text=""  style="color:purple"></asp:Label>
            </td>
             
             <td>
                 <asp:Label ID="lblbookid" runat="server" Text="Book ID"  style="color:purple"></asp:Label>
             </td>
             <td>
                 <asp:DropDownList ID="bookid" runat="server" AutoPostBack="True" ></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="bookid" ValidationGroup="IssueBookValidation"></asp:RequiredFieldValidator>

             </td>
             <td>
                <asp:Label ID="lblreturndate" runat="server" Text="Return Date "  style="color:purple"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtreturndate" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtreturndate" ValidationGroup="IssueBookValidation"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            
            <td colspan="2" align="center">
                <asp:Button ID="issuebook" runat="server" Text="Issue Book" CssClass="btnmenu" OnClick="issuebook_Click" ValidationGroup="IssueBookValidation" />

            </td>
        </tr>
        <tr>
            
            <td></td>
            <td></td>
    <td colspan="2" align="center">
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True"></asp:Label>

    </td>
 
</tr>

    </table>


</div>




</asp:Content>
