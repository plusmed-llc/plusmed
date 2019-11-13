using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class pages_login : System.Web.UI.Page
{

    string ConStr = @"Data Source=LOCALHOST;Initial Catalog=plusmed_bd;Persist Security Info=True;User ID=SA;Password=123123";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_signup_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConStr);
        con.Open();
        try
        {
            string Sql = "SELECT * FROM patients WHERE cli_email = @txt_cliEmail";
            SqlCommand cmd = new SqlCommand(Sql, con);
            cmd.Parameters.AddWithValue("@txt_cliEmail", txt_email.Text);
            cmd.ExecuteNonQuery();
        }
    }
}