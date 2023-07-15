using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection conn = new SqlConnection("Data Source=Anonymous;Initial Catalog=Records;Integrated Security=True");
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        TextBox name = GridView1.FooterRow.FindControl("name") as TextBox;
        TextBox user = GridView1.FooterRow.FindControl("user") as TextBox;
        TextBox pass = GridView1.FooterRow.FindControl("pass") as TextBox;

        conn.Open();
        SqlCommand cmd = new SqlCommand("INSERT into Info values('" + name.Text + "','" + user.Text + "','" + pass.Text + "')", conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        GridView1.DataBind();

    }

    public void GridView1_SelectedIndexChanged(Object sender, EventArgs e)
    {
        
    }
}