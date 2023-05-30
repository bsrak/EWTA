using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlDataSource2.InsertParameters["Dept_Name"].DefaultValue=TextBox1.Text;
            SqlDataSource2.InsertParameters["Dept_Phone"].DefaultValue=TextBox2.Text;

            SqlDataSource2.InsertParameters["Manager_ID"].DefaultValue = DropDownList1.SelectedValue;


            int s = SqlDataSource2.Insert();
            if (s > 0)
            {
                Label1.Text = "New Staff Salary Data: <b>" + TextBox1.Text + "</b><p>Added Successfully";
                Label1.Visible = true;
            }
            else
                Label1.Text = "New Staff Salary Registration Failed. Try Again After Checking Your Data";
            Label1.Visible = true;

        }
    }
}