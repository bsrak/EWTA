<%@ Page Language="C#" AutoEventWireup="true" Codefile="frm_EmployeeDataUpdate.aspx.cs" Inherits="WebApplication2.frm_EmployeeDataUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style6 {
            height: 29px;
        }
        .auto-style7 {
            width: 238px;
        }
        .auto-style8 {
            height: 29px;
            width: 238px;
        }
        .auto-style9 {
            height: 29px;
            width: 172px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="11" style="font-weight: 700; text-align: center" class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="11" style="font-weight: 700; text-align: center" class="auto-style4">Employee Data Update Form</td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="8">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Choose an Employee:</td>  
                <td class="auto-style9">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_ID">
                    </asp:DropDownList>
                </td>  
                <td class="auto-style9">&nbsp;</td>  
                <td class="auto-style9">&nbsp;</td>  
                <td class="auto-style8">&nbsp;</td>  
                <td class="auto-style8">&nbsp;</td>  
                <td class="auto-style8">&nbsp;</td>  
                <td class="auto-style8">&nbsp;</td>  
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="8">&nbsp;</td>  
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="8">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Empl_ID" DataSourceID="SqlDataSource2" Height="302px" Width="1450px" AllowPaging="True">
                <Fields>
                    <asp:BoundField DataField="Empl_ID" HeaderText="Employee ID" InsertVisible="False" ReadOnly="True" SortExpression="Empl_ID" />
                    <asp:BoundField DataField="Empl_FName" HeaderText="First Name" SortExpression="Empl_FName" />
                    <asp:BoundField DataField="Empl_LName" HeaderText="Last Name" SortExpression="Empl_LName" />
                    <asp:BoundField DataField="Empl_BDate" HeaderText="Birth Date" SortExpression="Empl_BDate" />
                    <asp:BoundField DataField="Empl_Name" HeaderText="Name" ReadOnly="True" SortExpression="Empl_Name" />
                    <asp:BoundField DataField="Empl_Start_Date" HeaderText="Start Date" SortExpression="Empl_Start_Date" />
                    <asp:BoundField DataField="Empl_Left_Date" HeaderText="Left Date" SortExpression="Empl_Left_Date" />
                    <asp:BoundField DataField="Empl_Address" HeaderText="Address" SortExpression="Empl_Address" />
                    <asp:BoundField DataField="Empl_City" HeaderText="City" SortExpression="Empl_City" />
                    <asp:BoundField DataField="Empl_Province" HeaderText="Province" SortExpression="Empl_Province" />
                    <asp:BoundField DataField="Empl_Phone" HeaderText="Phone" SortExpression="Empl_Phone" />
                    <asp:BoundField DataField="Empl_Cell" HeaderText="Cell" SortExpression="Empl_Cell" />
                    <asp:BoundField DataField="Empl_Email" HeaderText="Email" SortExpression="Empl_Email" />
                    <asp:BoundField DataField="Dept_ID" HeaderText="Department" SortExpression="Dept_ID" />
                    <asp:BoundField DataField="Gender_ID" HeaderText="Gender" SortExpression="Gender_ID" />
                    <asp:BoundField DataField="Title_ID" HeaderText="Title" SortExpression="Title_ID" />
                    <asp:BoundField DataField="Empl_CV" HeaderText="Employee CV" SortExpression="Empl_CV" />
                    <asp:BoundField DataField="Empl_CV_File" HeaderText="Employee CV File" SortExpression="Empl_CV_File" />
                    <asp:BoundField DataField="Empl_CV_Web" HeaderText="Employee CV Web" SortExpression="Empl_CV_Web" />
                    <asp:BoundField DataField="Entered_By" HeaderText="Entered By" SortExpression="Entered_By" />
                    <asp:BoundField DataField="Entered_Date" HeaderText="Entered Date" SortExpression="Entered_Date" />
                    <asp:CheckBoxField DataField="Is_Empl_Active" HeaderText="Is Employee Active" SortExpression="Is_Empl_Active" />
                    <asp:CommandField ShowEditButton="True" />
                </Fields>
            </asp:DetailsView>
                </td>  
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="8">&nbsp;</td>  
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <div>
            <br />
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Close Form" Width="170px" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_EWTA %>" SelectCommand="SELECT * FROM [tbl_Employees] WHERE ([Empl_ID] = @Empl_ID)" UpdateCommand="UPDATE tbl_Employees SET Empl_LName = @Empl_LName, Empl_Left_Date = @Empl_Left_Date, Empl_Address = @Empl_Address, Empl_City = @Empl_City, Empl_Cell = @Empl_Cell, Empl_Email = @Empl_Email, Dept_ID = @Dept_ID, Title_ID = @Title_ID, Empl_Province = @Empl_Province, Empl_Phone = @Empl_Phone WHERE (Empl_ID = @Empl_ID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Empl_ID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Empl_LName" />
                    <asp:Parameter Name="Empl_Left_Date" />
                    <asp:Parameter Name="Empl_Address" />
                    <asp:Parameter Name="Empl_City" />
                    <asp:Parameter Name="Empl_Cell" />
                    <asp:Parameter Name="Empl_Email" />
                    <asp:Parameter Name="Dept_ID" />
                    <asp:Parameter Name="Title_ID" />
                    <asp:Parameter Name="Empl_Province" />
                    <asp:Parameter Name="Empl_Phone" />
                    <asp:Parameter Name="Empl_ID" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
