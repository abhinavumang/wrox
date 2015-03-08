using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void b2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=.//SQLEXPRESS;initial catalog=office;Integrated Security=True";
        //con.ConnectionString =ConfigurationManager.ConnectionStrings["officeConnection"].ConnectionString;
        con.Open();
        /* try
        {
            con.Open();
            // Insert code to process data.
        }
        catch (Exception ex)
        {
           //MessageBox.Show("Failed to connect to data source");
            //ex.Message("Failed to connect to data source");
           
        }
        /*finally
        {
            con.Close();
        }*/
        SqlCommand cmd = new SqlCommand("insert into employee values('"+t1.Text+"','"+t2.Text+"')", con);
        cmd.ExecuteNonQuery();
        t1.Text = null;
        t2.Text = null;
    }
}