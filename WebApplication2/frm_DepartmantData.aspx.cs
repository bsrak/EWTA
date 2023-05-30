using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class frm_DepartmantData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            DropDownList1.Visible = true;
            Button4.Visible = true;
            Button3.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlDataSource2.InsertParameters["Dept_Name"].DefaultValue = TextBox1.Text;
            SqlDataSource2.InsertParameters["Dept_Phone"].DefaultValue = TextBox2.Text;
            SqlDataSource2.InsertParameters["Manager_ID"].DefaultValue = DropDownList1.SelectedValue;

            int s = SqlDataSource2.Insert();
            if (s > 0)
            {
                Label5.Text = "New Department Record: <b>" + TextBox1.Text + "</b><p>Added Successfully";
                Label5.Visible = true;
            }
            else
                Label5.Text = "New Department Record Failed. Try Again.";
            Label5.Visible = true;
        }
    }
}