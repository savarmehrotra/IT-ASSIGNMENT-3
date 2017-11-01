using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Page1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(localdb)\MSSQLlocalDB;Initial Catalog=Travel;Integrated Security=True");

        SqlCommand comm = null;

       
        conn.Open();

        if(DDLAjax1.SelectedIndex == 0)
        {
            comm = new SqlCommand("SELECT * FROM Flights WHERE Src=@src AND Dest=@dest AND class=@class AND Dept_time=@dept",conn);
            comm.Parameters.AddWithValue("@src", TextBox1.Text);
            comm.Parameters.AddWithValue("@dest", TextBox2.Text);
            comm.Parameters.AddWithValue("@class", RadioButtonList1.Items[RadioButtonList1.SelectedIndex].Text);
            comm.Parameters.AddWithValue("@dept", CheckBoxList1.SelectedItem.Text);


        }
        else if(DDLAjax1.SelectedIndex == 1)
        {
            comm = new SqlCommand("SELECT * FROM Train WHERE src=@src AND dest=@dest AND class=@class AND Dept_time=@dept", conn);
            comm.Parameters.AddWithValue("@src", TextBox1.Text);
            comm.Parameters.AddWithValue("@dest", TextBox2.Text);
            comm.Parameters.AddWithValue("@class", RadioButtonList1.Items[RadioButtonList1.SelectedIndex].Text);
            comm.Parameters.AddWithValue("@dept", CheckBoxList1.SelectedItem.Text);


        }
        else
        {
            comm = new SqlCommand("SELECT * FROM Bus WHERE src=@src AND dest=@dest AND class=@class AND dept_time=@dept", conn);
            comm.Parameters.AddWithValue("@src", TextBox1.Text);
            comm.Parameters.AddWithValue("@dest", TextBox2.Text);
            comm.Parameters.AddWithValue("@class", RadioButtonList1.Items[RadioButtonList1.SelectedIndex].Text);
            comm.Parameters.AddWithValue("@dept", CheckBoxList1.SelectedItem.Text);


        }

        GridView1.DataSource = comm.ExecuteReader();
        GridView1.DataBind();


    }
}