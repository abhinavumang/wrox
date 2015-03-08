using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ispostback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ListBox1.Items.Add("Red");
            ListBox1.Items.Add("Green");
            ListBox1.Items.Add("Blue");
            ListBox1.Rows = ListBox1.Items.Count;
            ListBox1.AutoPostBack = true;
        }
        if (!IsPostBack)
        {
            DropDownList1.Items.Add("Red");
            DropDownList1.Items.Add("Green");
            DropDownList1.Items.Add("Blue");
            DropDownList1.Items.Add("Yellow");
            DropDownList1.Items.Add("Black");
            DropDownList1.AutoPostBack = true;
        }
        Session["ZipCode"] = "211002";
        
    }
}