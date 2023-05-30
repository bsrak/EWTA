<%@ Page Language="C#" AutoEventWireup="true" Codefile="rpt_EmployeeByDepartment.aspx.cs" Inherits="WebApplication2.rpt_EmployeeByDepartment" %>

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
            width: 183px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 175px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="10"><strong>Employee By Department Report</strong></td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Choose a Department:</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Dept_Name" DataValueField="Dept_ID" CssClass="auto-style6">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="9">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Empl_ID" DataSourceID="SqlDataSource2" Height="110px" Width="1450px">
                            <Columns>
                                <asp:BoundField DataField="Empl_ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Empl_ID" />
                                <asp:BoundField DataField="Empl_Name" HeaderText="Name" ReadOnly="True" SortExpression="Empl_Name" />
                                <asp:BoundField DataField="Empl_Email" HeaderText="Email" SortExpression="Empl_Email" />
                                <asp:BoundField DataField="Empl_City" HeaderText="City" SortExpression="Empl_City" />
                                <asp:BoundField DataField="Empl_Cell" HeaderText="Cell" SortExpression="Empl_Cell" />
                                <asp:BoundField DataField="Empl_Phone" HeaderText="Phone" SortExpression="Empl_Phone" />
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="9">
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Close Report" Width="170px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="9">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" SelectCommand="SELECT [Empl_ID], [Empl_Name], [Empl_Email], [Empl_City], [Empl_Cell], [Empl_Phone] FROM [tbl_Employees] WHERE ([Dept_ID] = @Dept_ID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Dept_ID" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
