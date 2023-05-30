using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class frm_EmployeeDataEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource5.InsertParameters["Empl_FName"].DefaultValue = TextBox1.Text;
            SqlDataSource5.InsertParameters["Empl_LName"].DefaultValue = TextBox2.Text;
            SqlDataSource5.InsertParameters["Empl_BDate"].DefaultValue = TextBox3.Text;
            SqlDataSource5.InsertParameters["Gender_ID"].DefaultValue = RadioButtonList1.SelectedValue;
            SqlDataSource5.InsertParameters["Title_ID"].DefaultValue = DropDownList3.SelectedValue;
            SqlDataSource5.InsertParameters["Dept_ID"].DefaultValue = DropDownList4.SelectedValue;
            SqlDataSource5.InsertParameters["Empl_Start_Date"].DefaultValue = TextBox4.Text;
            SqlDataSource5.InsertParameters["Empl_Cell"].DefaultValue = TextBox6.Text;
            SqlDataSource5.InsertParameters["Empl_Email"].DefaultValue = TextBox5.Text;
            SqlDataSource5.InsertParameters["Empl_City"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource5.InsertParameters["Empl_Province"].DefaultValue = DropDownList2.SelectedValue;
            SqlDataSource5.InsertParameters["Empl_CV"].DefaultValue = TextBox7.Text;
            SqlDataSource5.InsertParameters["Empl_Address"].DefaultValue = TextBox8.Text;


            int s = SqlDataSource5.Insert();

            if (s > 0)
            {
                Label1.Text = "New Employee record : <b>" + TextBox1.Text + "</b><p>Saved successfully...";
                Label1.Visible = true;
            }
            else
                Label1.Text = "New employee record entry not successfull. After controlling your data, please reenterit..";
            Label1.Visible = true;
        }

       
    }
}