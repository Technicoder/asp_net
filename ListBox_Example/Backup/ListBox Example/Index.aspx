<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ListBox_Example.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
            Text="Add to Team"></asp:Label>
&nbsp;
        <asp:DropDownList ID="dlTerm" runat="server" Font-Bold="True" Font-Size="Large">
            <asp:ListItem Value="-1">Select Team</asp:ListItem>
            <asp:ListItem Value="1">Green</asp:ListItem>
            <asp:ListItem Value="2">Red</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
            Text="Main List"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            Text="Green Team"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
            Text="Red Team"></asp:Label>
        <br />
   
    <asp:ListBox ID="lstMembers" runat="server" Height="250px" Width="219px">
        <asp:ListItem>Kevin Bacon</asp:ListItem>
        <asp:ListItem>Linda Cole</asp:ListItem>
        <asp:ListItem>Brenda Lee</asp:ListItem>
        <asp:ListItem>Susan Fell</asp:ListItem>
        <asp:ListItem>Maria Jose</asp:ListItem>
        <asp:ListItem>Barney Rubble</asp:ListItem>
        <asp:ListItem>Wilma Flintstone</asp:ListItem>
        <asp:ListItem>Homer Simipson</asp:ListItem>
        <asp:ListItem>Bruce Wayne</asp:ListItem>
        <asp:ListItem>Troy edgar</asp:ListItem>
        <asp:ListItem>Sally Smith</asp:ListItem>
        <asp:ListItem>Kathy Brown</asp:ListItem>
        <asp:ListItem>Howard Duck</asp:ListItem>
        <asp:ListItem></asp:ListItem>
        </asp:ListBox> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ListBox ID="ListBox1" runat="server" Height="250px" Width="205px">
            <asp:ListItem>Peter Brown</asp:ListItem>
        </asp:ListBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ListBox ID="ListBox2" runat="server" Height="250px" Width="205px">
            <asp:ListItem>Lisa Stanko</asp:ListItem>
        </asp:ListBox>
        <br />
        <br />
        <asp:Button ID="Team" runat="server" Font-Bold="True" Font-Size="Large" 
            Text="Select Term" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClearSelection" runat="server" Font-Bold="True" 
            Font-Size="Large" Text="Clear Selection" />
&nbsp;&nbsp;
        <asp:Button ID="btnResetLists" runat="server" Font-Bold="True" 
            Font-Size="Large" Text="Reset Lists" />
    </div>
    </form>
</body>
</html>
