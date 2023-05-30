<%@ Page Language="C#" AutoEventWireup="true" Codefile="rpt_EmployeeComList.aspx.cs" Inherits="WebApplication2.rpt_EmployeeComList" %>

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
            font-size: medium;
        }
        .auto-style4 {
            text-align: left;
            font-size: medium;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>Employee Communication Report</strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Empl_ID" DataSourceID="SqlDataSource1" Height="302px" Width="1450px">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="Empl_ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Empl_ID" />
                                <asp:BoundField DataField="Empl_Name" HeaderText="Name" ReadOnly="True" SortExpression="Empl_Name" />
                                <asp:BoundField DataField="Empl_Phone" HeaderText="Phone" SortExpression="Empl_Phone" />
                                <asp:BoundField DataField="Empl_Cell" HeaderText="Cell" SortExpression="Empl_Cell" />
                                <asp:BoundField DataField="Empl_Email" HeaderText="Email" SortExpression="Empl_Email" />
                                <asp:BoundField DataField="Empl_City" HeaderText="City" SortExpression="Empl_City" />
                                <asp:BoundField DataField="Title_Name" HeaderText="Title" SortExpression="Title_Name" />
                                <asp:BoundField DataField="Dept_Name" HeaderText="Department" SortExpression="Dept_Name" />
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Close Report" Width="170px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" SelectCommand="SELECT tbl_Employees.Empl_ID, tbl_Employees.Empl_Name, tbl_Employees.Empl_Phone, tbl_Employees.Empl_Cell, tbl_Employees.Empl_Email, tbl_Employees.Empl_City, tbl_Lookups.Title_Name, tbl_Departments.Dept_Name FROM tbl_Employees INNER JOIN tbl_Departments ON tbl_Employees.Dept_ID = tbl_Departments.Dept_ID INNER JOIN tbl_Lookups ON tbl_Employees.Title_ID = tbl_Lookups.LK_ID">
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
