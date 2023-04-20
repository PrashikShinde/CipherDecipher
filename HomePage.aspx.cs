using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AspMiniPrj
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cipher_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string iq1="insert into UserData(cd) values (@int1)";
                SqlCommand cmd1 = new SqlCommand(iq1, conn);
                cmd1.Parameters.AddWithValue("@int1", 1);
                cmd1.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error is as follows \n" + ex.ToString());
            }
        }

        protected void dec_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string iq1 = "insert into UserData(cd) values (@int1)";
                SqlCommand cmd1 = new SqlCommand(iq1, conn);
                cmd1.Parameters.AddWithValue("@int1", 2);
                cmd1.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error is as follows \n" + ex.ToString());
            }
        }


    }
}