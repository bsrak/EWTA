<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Codefile="Reports.aspx.cs" Inherits="WebApplication2.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td style="height: 35px"></td>
    </tr>
    <tr>
        <td style="font-size: x-large; height: 42px;"><strong>EWTA Reports</strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center">
            <asp:Button ID="Button1" runat="server" OnClientClick="target='_blank'" PostBackUrl="~/rpt_EmployeeComList.aspx" Text="Employee Communication Report" Width="253px" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center">
            <asp:Button ID="Button2" runat="server" OnClientClick="target='_blank'" Text="Wages By Employee Report" Width="253px" PostBackUrl="~/rpt_WageByEmployee.aspx" /></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center">
            <asp:Button ID="Button3" runat="server" OnClientClick="target='_blank'" Text="Employee By Department Report" Width="253px" PostBackUrl="~/rpt_EmployeeByDepartment.aspx" /></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center">
            <asp:Button ID="Button4" runat="server" OnClientClick="target='_blank'" Text="Employee Wage Graph Report" Width="253px" PostBackUrl="~/rpt_EmployeeWageTotalGraph.aspx" /></td>
    </tr>
</table>
</asp:Content>
