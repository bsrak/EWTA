<%@ Page Language="C#" AutoEventWireup="true" Codefile="frm_WageUpdate.aspx.cs" Inherits="WebApplication2.frm_WageUpdate" %>

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
            height: 5px;
        }
        .auto-style4 {
            width: 176px;
        }
        .auto-style5 {
            height: 5px;
            width: 176px;
        }
        .auto-style6 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2"><strong>Wage Data Update Form</strong></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Choose an Employee:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style6">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Wage_ID" DataSourceID="SqlDataSource2" Width="1450px" Height="302px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="Wage_Amount" HeaderText="Wage Amount" SortExpression="Wage_Amount" />
                                <asp:BoundField DataField="Wage_ID" HeaderText="Wage ID" InsertVisible="False" ReadOnly="True" SortExpression="Wage_ID" />
                                <asp:BoundField DataField="Wage_Date" HeaderText="Wage Paid Date" SortExpression="Wage_Date" />
                                <asp:BoundField DataField="Wage_Commission" HeaderText="Commission" SortExpression="Wage_Commission" />
                                <asp:BoundField DataField="Month_ID" HeaderText="Month" SortExpression="Month_ID" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Close Form" Width="170px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" SelectCommand="SELECT [Wage_Amount], [Wage_ID], [Wage_Date], [Wage_Commission], [Month_ID] FROM [tbl_EmployeeWages] WHERE ([Empl_ID] = @Empl_ID)" UpdateCommand="UPDATE tbl_EmployeeWages SET Wage_Date = @Wage_Date, Wage_Amount = @Wage_Amount, Wage_Commission = @Wage_Commission, Month_ID = @Month_ID
WHERE Wage_ID=@Wage_ID">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Empl_ID" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Wage_Date" Type="DateTime" />
                                <asp:Parameter Name="Wage_Amount" Type="Decimal" />
                                <asp:Parameter Name="Wage_Commission" Type="Decimal" />
                                <asp:Parameter Name="Month_ID" Type="Int16" />
                                <asp:Parameter Name="Wage_ID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
