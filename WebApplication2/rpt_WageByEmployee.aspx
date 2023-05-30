<%@ Page Language="C#" AutoEventWireup="true" Codefile="rpt_WageByEmployee.aspx.cs" Inherits="WebApplication2.rpt_WageByDepartment" %>

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
        .auto-style4 {
            width: 10%;
        }
        .auto-style5 {
            width: 83%;
        }
        .auto-style6 {
            width: 10%;
            height: 11px;
        }
        .auto-style7 {
            width: 83%;
            height: 11px;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2"><strong>Wages By Employee Report</strong></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Choose an Employee:</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style8">
                        <asp:GridView ID="GridView1" runat="server" Height="302px" Width="1450px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Wage_ID,LK_ID" DataSourceID="SqlDataSource2">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="Wage_ID" HeaderText="Wage ID" InsertVisible="False" ReadOnly="True" SortExpression="Wage_ID" />
                                <asp:BoundField DataField="Wage_Amount" HeaderText="Wage Amount" SortExpression="Wage_Amount" />
                                <asp:BoundField DataField="Wage_Date" HeaderText="Wage Paid Date" SortExpression="Wage_Date" />
                                <asp:BoundField DataField="Wage_Commission" HeaderText="Commission" SortExpression="Wage_Commission" />
                                <asp:BoundField DataField="Wage_Total" HeaderText="Total" ReadOnly="True" SortExpression="Wage_Total" />
                                <asp:BoundField DataField="Month_ID" HeaderText="Month ID" SortExpression="Month_ID" />
                                <asp:BoundField DataField="LK_ID" HeaderText="Lookup ID" InsertVisible="False" ReadOnly="True" SortExpression="LK_ID" />
                                <asp:BoundField DataField="Month_Name" HeaderText="Month" SortExpression="Month_Name" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Close Report" Width="170px" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" SelectCommand="SELECT tbl_EmployeeWages.Wage_ID, tbl_EmployeeWages.Wage_Amount, tbl_EmployeeWages.Wage_Date, tbl_EmployeeWages.Wage_Commission, tbl_EmployeeWages.Wage_Total, tbl_EmployeeWages.Month_ID, tbl_Lookups.LK_ID, tbl_Lookups.Month_Name FROM tbl_EmployeeWages INNER JOIN tbl_Lookups ON tbl_EmployeeWages.Month_ID = tbl_Lookups.LK_ID WHERE (tbl_EmployeeWages.Empl_ID = @Empl_ID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Empl_ID" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style5">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
