<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Library._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

        .style1
        {
            width: 100px;
        }
        .auto-style1 {
            background-color:white;
            border:2px solid black;
            width: 14px;
            height: 94px;
        }
        .auto-style2 {
            background-color:purple;
            border:2px solid black;
            max-height: 55px;
            width: 100%;
        }
        .menu {
    
            background-color:purple;
            color:white;
            height: 30px;
        }
        .link {
            color:white;
            margin-left:20px;
        }                        
        .auto-style4 {
            height: 95px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    
        <div class="header">
        <table class="auto-style3">
            <tr>
                <td class="auto-style1">
                    <asp:Image class="auto-style4" runat="server" ImageUrl="~/img/kipm_logo.png"/>
                    
                </td>
                <td class="auto-style2">
                    <h2 style="text-align: center; color:white;">KIPM COLLEGE OF ENGINEERING AND TECHNOLOGY</h2>
                    <h3 style="text-align:center; color:white;">GIDA, GORAKHPUR</h3>
                </td>
            </tr>
        </table>
    </div>
    
    
    
    <div id="login">
        <table class="tbl">
            <tr>
                <td>
    &nbsp;</td>
            </tr>
                    <tr>
            <td>
&nbsp;</td>
        </tr>
            <tr>
                <td class="tblhead" colspan="2">
                    Login Area</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lbl" runat="server" Font-Size="11px" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    UserName :</td>
                <td>
                    <asp:TextBox ID="txtuname" runat="server" CssClass="txt" Width="175px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtuname" ErrorMessage="*" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    Password :
                </td>
                <td>
                    <asp:TextBox ID="txtupass" runat="server" CssClass="txt" TextMode="Password" Width="175px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtupass" ErrorMessage="*" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RadioButton ID="rdolibrary" runat="server" Checked="True" 
                        ForeColor="black" GroupName="a" Text="Librarian" />
                            &nbsp;<asp:RadioButton ID="rdosudent" runat="server" ForeColor="black" GroupName="a" 
                        Text="Student" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="btnmenu" Text="Login" 
                        Width="80px" Font-Size="10pt" OnClick="lnkbtnLogin_Click"  />
                </td>
            </tr>
            
        </table>

    </div>
    
    
    </form>
</body>
</html>
