<%@ Page Language="C#" AutoEventWireup="true" Codefile="rpt_EmployeeWageTotalGraph.aspx.cs" Inherits="WebApplication2.rpt_EmployeeWageTotalGraph" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2"><strong>Employee Wage Total Report</strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="460px">
                            <series>
                                <asp:Series ChartArea="ChartArea1" Name="Series1" XValueMember="Empl_Name" YValueMembers="WTotal">
                                </asp:Series>
                            </series>
                            <chartareas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                            </chartareas>
                        </asp:Chart>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Close Report" Width="170px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" SelectCommand="SELECT tbl_Employees.Empl_Name, SUM(tbl_EmployeeWages.Wage_Total) AS WTotal, tbl_EmployeeWages.Wage_Year FROM tbl_Employees INNER JOIN tbl_EmployeeWages ON tbl_Employees.Empl_ID = tbl_EmployeeWages.Empl_ID GROUP BY tbl_Employees.Empl_Name, tbl_EmployeeWages.Wage_Year"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
