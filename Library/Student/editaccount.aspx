<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.Master" AutoEventWireup="true" CodeBehind="editaccount.aspx.cs" Inherits="Library.Student.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
      <div>
     <h3 style="text-align: center; background-color: purple; color: white">Enter Details</h3>
 </div>
     <div>
     <table align="center" class="style1">
         <tr>
     <td>
         <asp:Label ID="lbluserid" runat="server" Text="User ID" Style="color: purple"></asp:Label>
     </td>
     <td>
         <asp:Label ID="lblUserLogin" runat="server" ForeColor="#000"></asp:Label>
     </td>
 </tr>
                <tr>
    <td>
        <asp:Label ID="lblbranchid" runat="server" Text="Branch ID" Style="color: purple"></asp:Label>
    </td>
    <td>
        <asp:DropDownList ID="branchid" runat="server" AutoPostBack="True" ></asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="branchid"></asp:RequiredFieldValidator>
    </td>
</tr>
      
            <tr>
       <td>
           <asp:Label ID="lblmbno" runat="server" Text="Mobile No." Style="color: purple"></asp:Label>
       </td>
       <td>
           <asp:TextBox ID="txtmbno" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtmbno"></asp:RequiredFieldValidator>
   
       </td>
   </tr> 
            <tr>
       <td>
           <asp:Label ID="lbladdress" runat="server" Text="Address" Style="color: purple"></asp:Label>
       </td>
       <td>
           <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
           </td>
   </tr>
         <tr>
       <td>
           <asp:Label ID="lblcity" runat="server" Text="City" Style="color: purple"></asp:Label>
       </td>
       <td>
           <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
       </td>
   </tr>
               <tr>
    <td>
        <asp:Label ID="lblpincode" runat="server" Text="Pin Code " Style="color: purple"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="txtpincode" runat="server"></asp:TextBox>
    </td>
</tr>

               <tr>
    <td>
        <asp:Label ID="lbldob" runat="server" Text="D.O.B" Style="color: purple"></asp:Label>
    </td>
    <td>
         <asp:TextBox ID="txtdob" runat="server"  ></asp:TextBox>
        
       
    </td>
</tr>
          <tr>
     <td>
         <asp:Label ID="lblgender" runat="server" Text="Gender" Style="color: purple"></asp:Label>
         </td>
         <td>

         <asp:DropDownList ID="selectgender" runat="server">
             <asp:ListItem>--Select Gender--</asp:ListItem>
             <asp:ListItem>MALE</asp:ListItem>
             <asp:ListItem>FEMALE</asp:ListItem>
             <asp:ListItem>INTERSEX</asp:ListItem>
         </asp:DropDownList>
   </td>
     </tr>
                        <tr>
    <td>
        <asp:Label ID="lblemail" runat="server" Text="Email" Style="color: purple"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    </td>
</tr>
          <tr>
             <td colspan="2" align="center">
                 <asp:Label ID="lblMsg" runat="server" Font-Bold="True"></asp:Label>

             </td>
 
         </tr>
         <tr>
             <td colspan="2" align="center">
                 <asp:Button ID="adduser" runat="server" Text="Add Details" CssClass="btnmenu" OnClick="adduser_Click" /></td>
         </tr>

     </table>


 </div>



 </div>

</asp:Content>
