<%@ Page Language="C#" AutoEventWireup="true" Codefile="frm_DepartmantData.aspx.cs" Inherits="WebApplication2.frm_DepartmantData" %>

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
            text-align: center;
        }
        .auto-style5 {
            width: 148px;
        }
        .auto-style6 {
            width: 148px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            width: 148px;
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="5"><strong>Department Data Entry And Update Form</strong></td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="5" class="auto-style4">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Dept_ID" DataSourceID="SqlDataSource1" Width="1450px" Height="302px">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="Dept_ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Dept_ID" />
                                <asp:BoundField DataField="Dept_Name" HeaderText="Department Name" SortExpression="Dept_Name" />
                                <asp:BoundField DataField="Dept_Phone" HeaderText="Department Phone" SortExpression="Dept_Phone" />
                                <asp:BoundField DataField="Manager_ID" HeaderText="Manager ID" SortExpression="Manager_ID" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Open Data Entry Form" Width="150px" />
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Close Form" Width="150px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label2" runat="server" Text="Department Name: " Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label3" runat="server" Text="Phone:" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label4" runat="server" Text="Manager:" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Empl_Name" DataValueField="Empl_ID" Visible="False">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Save" Visible="False" Width="150px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style7">
                        </td>
                    <td colspan="2" class="auto-style7">
                        </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" SelectCommand="SELECT [Dept_ID], [Dept_Name], [Dept_Phone], [Manager_ID] FROM [tbl_Departments]" UpdateCommand="UPDATE tbl_Departments SET Dept_Name = @Dept_Name, Dept_Phone = @Dept_Phone, Manager_ID = @Manager_ID WHERE (Dept_ID = @Dept_ID)">
                            <UpdateParameters>
                                <asp:Parameter Name="Dept_Name" />
                                <asp:Parameter Name="Dept_Phone" />
                                <asp:Parameter Name="Manager_ID" />
                                <asp:Parameter Name="Dept_ID" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]" InsertCommand="INSERT INTO tbl_Departments(Dept_Name, Dept_Phone, Manager_ID) VALUES (@Dept_Name, @Dept_Phone, @Manager_ID)">
                            <InsertParameters>
                                <asp:Parameter Name="Dept_Name" />
                                <asp:Parameter Name="Dept_Phone" />
                                <asp:Parameter Name="Manager_ID" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
