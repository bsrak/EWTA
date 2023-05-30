<%@ Page Language="C#" AutoEventWireup="true" Codefile="frm_EmployeeDataEntry.aspx.cs" Inherits="WebApplication2.frm_EmployeeDataEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            width: 230px;
        }
        .auto-style5 {
            height: 29px;
            width: 230px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
        .auto-style7 {
            width: 234px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="4" style="font-weight: 700; text-align: center" class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4" style="font-weight: 700; text-align: center" class="auto-style3">Employee Data Entry Form</td>
            </tr>
            <tr>
                <td colspan="4" style="font-weight: 700; text-align: center" class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">First Name:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="170px"></asp:TextBox>
                </td>
                <td class="auto-style7">Last Name:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Birth Date:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Date" Width="170px"></asp:TextBox>
                </td>
                <td class="auto-style7">Start Date:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Date" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Gender:</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" Width="90px">
                        <asp:ListItem Value="1">Woman</asp:ListItem>
                        <asp:ListItem Value="2">Man</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style7">Is Employee Active?</td>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Title:</td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="Title_Name" DataValueField="LK_ID">
                        <asp:ListItem>Sarıyer</asp:ListItem>
                        <asp:ListItem>Kavacık</asp:ListItem>
                        <asp:ListItem>Mecidiyeköy</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style7">Department:</td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server" DataTextField="Dept_Name" DataValueField="Dept_ID" DataSourceID="SqlDataSource2">
                        <asp:ListItem>Sarıyer</asp:ListItem>
                        <asp:ListItem>Kavacık</asp:ListItem>
                        <asp:ListItem>Mecidiyeköy</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Email:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Email" Width="170px" CssClass="auto-style6"></asp:TextBox>
                </td>
                <td class="auto-style7">Cell Phone:</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Phone" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Address:</td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox8" runat="server" Width="1115px" Height="29px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">City:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="City_Name" DataValueField="City_Name" DataSourceID="SqlDataSource3">
                        <asp:ListItem>Sarıyer</asp:ListItem>
                        <asp:ListItem>Kavacık</asp:ListItem>
                        <asp:ListItem>Mecidiyeköy</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style7">Province:</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataTextField="Province_Name" DataValueField="Province_Name" DataSourceID="SqlDataSource4">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">CV Info:</td>
                <td class="auto-style2" colspan="3">
                    <asp:TextBox ID="TextBox7" runat="server" Height="60px"  Width="1115px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style2" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="font-weight: 700" class="auto-style4">
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" SelectCommand="SELECT [Empl_ID], [Empl_FName], [Empl_LName], [Empl_BDate], [Empl_Start_Date], [Empl_City], [Empl_Province], [Empl_Phone], [Empl_Cell], [Empl_Email], [Dept_ID], [Gender_ID], [Is_Empl_Active] FROM [tbl_Employees]" InsertCommand="INSERT INTO tbl_Employees(Empl_FName, Empl_LName, Empl_BDate, Empl_Start_Date, Empl_City, Empl_Province, Empl_Cell, Empl_Email, Dept_ID, Gender_ID, Is_Empl_Active, Title_ID, Empl_Address, Empl_CV) VALUES (@Empl_FName, @Empl_LName, @Empl_BDate, @Empl_Start_Date, @Empl_City, @Empl_Province, @Empl_Cell, @Empl_Email, @Dept_ID, @Gender_ID, @Is_Empl_Active, @Title_ID, @Empl_Address, @Empl_CV)">
                        <InsertParameters>
                            <asp:Parameter Name="Empl_FName"></asp:Parameter>
                            <asp:Parameter Name="Empl_LName"></asp:Parameter>
                            <asp:Parameter Name="Empl_BDate"></asp:Parameter>
                            <asp:Parameter Name="Empl_Start_Date"></asp:Parameter>
                            <asp:Parameter Name="Empl_City"></asp:Parameter>
                            <asp:Parameter Name="Empl_Province"></asp:Parameter>
                            <asp:Parameter Name="Empl_Cell"></asp:Parameter>
                            <asp:Parameter Name="Empl_Email"></asp:Parameter>
                            <asp:Parameter Name="Dept_ID"></asp:Parameter>
                            <asp:Parameter Name="Gender_ID"></asp:Parameter>
                            <asp:Parameter Name="Is_Empl_Active"></asp:Parameter>
                            <asp:Parameter Name="Title_ID"></asp:Parameter>
                            <asp:Parameter Name="Empl_Address" />
                            <asp:Parameter Name="Empl_CV" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;<asp:Button ID="Button2" runat="server" Text="Save Record" OnClick="Button2_Click" Width="170px" /></td>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Close Form" Width="170px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" SelectCommand="SELECT LK_ID, Title_Name FROM tbl_Lookups WHERE (Title_Name IS NOT NULL)"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                </td>                

                <td class="auto-style7">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" SelectCommand="SELECT [City_Name] FROM [tbl_Lookups]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" SelectCommand="SELECT Province_Name FROM tbl_Lookups WHERE (Province_Name IS NOT NULL)"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>                

                <td class="auto-style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
