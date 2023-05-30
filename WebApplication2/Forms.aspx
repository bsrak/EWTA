<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Forms.aspx.cs" Inherits="WebApplication2.Forms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td style="font-size: x-large; height: 35px;"></td>
    </tr>
    <tr>
        <td style="font-size: x-large; height: 1px;"></td>
    </tr>
    <tr>
        <td style="font-size: x-large; height: 42px;"><strong>EWTA Forms</strong></td>
    </tr>
    <tr>
        <td class="text-center">&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center">
            <asp:Button ID="Button1" runat="server" Text="Employee Data Entry Form" Width="270px" OnClientClick="target='_blank'" PostBackUrl="~/frm_EmployeeDataEntry.aspx" />
        </td>
    </tr>
    <tr>
        <td class="text-center">&nbsp;</td>
    </tr>
    <tr>
        <td class="text-center" style="height: 20px">
            <asp:Button ID="Button2" runat="server" Text="Employee Data Update Form" Width="270px" OnClientClick="target='_blank'" PostBackUrl="~/frm_EmployeeDataUpdate.aspx" /></td>
    </tr>
    <tr>
        <td class="text-center">&nbsp;</td>
    </tr>
    <tr>
         <td class="text-center">
             <asp:Button ID="Button3" runat="server" Text="Wage Data Entry Form" Width="270px" OnClientClick="target='_blank'" PostBackUrl="~/frm_WageDataEntry.aspx" /></td>
    </tr>
    <tr>
        <td class="text-center">&nbsp;</td>
    </tr>
    <tr>
         <td class="text-center">
             <asp:Button ID="Button4" runat="server" Text="Wage Data Update Form" Width="270px" OnClientClick="target='_blank'" PostBackUrl="~/frm_WageUpdate.aspx" /></td>
    </tr>
    <tr>
        <td class="text-center">&nbsp;</td>
    </tr>
    <tr>
         <td class="text-center">
             <asp:Button ID="Button5" runat="server" Text="Department Data Entry and Update Form" Width="270px" OnClientClick="target='_blank'" PostBackUrl="~/frm_DepartmantData.aspx" /></td>
    </tr>
        <tr>
            <td class="text-center">&nbsp;</td>
    </tr>
</table>
</asp:Content>
