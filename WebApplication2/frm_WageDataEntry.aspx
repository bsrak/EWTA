<%@ Page Language="C#" AutoEventWireup="true" Codefile="frm_WageDataEntry.aspx.cs" Inherits="WebApplication2.frm_WageDataEntry" %>

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
            width: 185px;
        }
        .auto-style4 {
            width: 185px;
            height: 7px;
        }
        .auto-style5 {
            height: 7px;
        }
        .auto-style6 {
            text-align: center;
            font-size: x-large;
            height: 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2"><strong>Wage Data Entry Form</strong></td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Employee Name:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Date:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Wage Amount:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Commission:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Month:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Month_Name" DataValueField="LK_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"><asp:Button ID="Button2" runat="server" Text="Save Record" OnClick="Button2_Click" Width="170px" /></td>
                    <td>
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Close Form" Width="170px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" SelectCommand="SELECT LK_ID, Month_Name FROM tbl_Lookups WHERE (Month_Name IS NOT NULL)"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" InsertCommand="INSERT INTO tbl_EmployeeWages(Empl_ID, Wage_Amount, Wage_Date, Wage_Commission, Month_ID) VALUES (@Empl_ID, @Wage_Amount, @Wage_Date, @Wage_Commission, @Month_ID)" SelectCommand="SELECT * FROM [tbl_EmployeeWages]">
                            <InsertParameters>
                                <asp:Parameter Name="Empl_ID" />
                                <asp:Parameter Name="Wage_Amount" />
                                <asp:Parameter Name="Wage_Date" />
                                <asp:Parameter Name="Wage_Commission" />
                                <asp:Parameter Name="Month_ID" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
