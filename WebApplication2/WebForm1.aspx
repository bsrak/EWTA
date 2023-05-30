<%@ Page Language="C#" AutoEventWireup="true" Codefile="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 265px;
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
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Dept_ID" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="Dept_ID" HeaderText="Dept_ID" InsertVisible="False" ReadOnly="True" SortExpression="Dept_ID" />
                                <asp:BoundField DataField="Dept_Name" HeaderText="Dept_Name" SortExpression="Dept_Name" />
                                <asp:BoundField DataField="Dept_Phone" HeaderText="Dept_Phone" SortExpression="Dept_Phone" />
                                <asp:BoundField DataField="Manager_ID" HeaderText="Manager_ID" SortExpression="Manager_ID" />
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Department Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Phone"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Manager ID"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Empl_Name" DataValueField="Empl_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
                    <asp:Button ID="Button2" runat="server" OnClientClick="window.close()" Text="Close Form" Width="150px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" SelectCommand="SELECT [Dept_ID], [Dept_Name], [Dept_Phone], [Manager_ID] FROM [tbl_Departments]" UpdateCommand="UPDATE tbl_Departments SET Dept_Name = @Dept_Name, Dept_Phone = @Dept_Phone, Manager_ID = @Manager_ID WHERE (Dept_ID = @Dept_ID)">
                            <UpdateParameters>
                                <asp:Parameter Name="Dept_Name" />
                                <asp:Parameter Name="Dept_Phone" />
                                <asp:Parameter Name="Manager_ID" />
                                <asp:Parameter Name="Dept_ID" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" InsertCommand="INSERT INTO tbl_Departments(Dept_Name, Dept_Phone, Manager_ID) VALUES (@Dept_Name, @Dept_Phone, @Manager_ID)" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]">
                            <InsertParameters>
                                <asp:Parameter Name="Dept_Name" />
                                <asp:Parameter Name="Dept_Phone" />
                                <asp:Parameter Name="Manager_ID" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
