<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FinalProjectEmp.aspx.cs" Inherits="FinalProjectEmp.FinalProjectEmp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 120px">
    
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Overline="False" Font-Size="X-Large" Font-Underline="True" Text="Payroll Application"></asp:Label>
        <br />
        <br />
        <br />
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="Medium">First Name:</asp:Label>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmpFname" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Medium" style="margin-left: 3px" MaxLength="35"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="rfFirstName" runat="server" ControlToValidate="txtEmpFname" ErrorMessage="First Name is Missing" ForeColor="Red" ToolTip="First Name must be entered" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblErrorFName" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="Medium" Text="Last Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmpLname" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Medium" MaxLength="50"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="rfLastName" runat="server" ControlToValidate="txtEmpLname" ErrorMessage="Last Name is Missing" ForeColor="Red" ToolTip="Last Name must be entered" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblErrorLName" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="Medium" Text="Number of hours per week:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtNumHours" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Medium" style="margin-left: 0px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="rfNumHours" runat="server" ControlToValidate="txtNumHours" ErrorMessage="Number of hours is Missing" ForeColor="Red" ToolTip="Number of Hours must be entered" SetFocusOnError="True">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblErrorHours" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="Medium" Text="Rate per hour:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtHourlyRate" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Medium"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="rfRate" runat="server" ControlToValidate="txtHourlyRate" ErrorMessage="Hourly rate is Missing" ForeColor="Red" ToolTip="Hourly rate must be entered" SetFocusOnError="True">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblErrorRate" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BorderStyle="Outset" Font-Size="Large" ForeColor="Red" Width="273px" />
        <br />
        <br />
        <asp:Button ID="btnCalculate" runat="server" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="Medium" OnClick="btnCalculate_Click" Text="Calculate Pay" />
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="Medium" OnClick="btnClear_Click" Text="Clear" CausesValidation="False" />
    
        <br />
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Employee's name:" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="Medium" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtEmpNameOut" runat="server" Enabled="False" ReadOnly="True" Font-Names="Microsoft Sans Serif" Font-Size="Medium" BorderStyle="Outset" Visible="False" Width="250px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Number of hours per week:" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="Medium" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtNumHoursOut" runat="server" Enabled="False" Font-Names="Microsoft Sans Serif" Font-Size="Medium" BorderStyle="Outset" ReadOnly="True" Visible="False"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Rate per hour:" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="Medium" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtHourlyRateOut" runat="server" Enabled="False" Font-Names="Microsoft Sans Serif" Font-Size="Medium" BorderStyle="Outset" ReadOnly="True" Visible="False"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="Medium" Text="Regular Pay:" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRegPayOut" runat="server" Enabled="False" Font-Names="Microsoft Sans Serif" Font-Size="Medium" BorderStyle="Outset" ReadOnly="True" Visible="False"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="Medium" Text="Overtime hours:" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtOverHourOut" runat="server" Enabled="False" Font-Names="Microsoft Sans Serif" Font-Size="Medium" BorderStyle="Outset" ReadOnly="True" Visible="False"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="Medium" Text="Overtime Pay:" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtOverPayOut" runat="server" Enabled="False" Font-Names="Microsoft Sans Serif" Font-Size="Medium" BorderStyle="Outset" ReadOnly="True" Visible="False"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="Medium" Text="Tax deduction:" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtTaxOut" runat="server" Enabled="False" Font-Names="Microsoft Sans Serif" Font-Size="Medium" BorderStyle="Outset" ReadOnly="True" Visible="False"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Net pay:" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="Medium" Visible="False"></asp:Label>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:TextBox ID="txtNetPayOut" runat="server" Enabled="False" Font-Names="Microsoft Sans Serif" Font-Size="Medium" BorderStyle="Outset" ReadOnly="True" Visible="False"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
