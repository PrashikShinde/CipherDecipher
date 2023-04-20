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
    public partial class cu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString);
                con.Open();
                string iq = "insert into FeedbackData values (@n,@e,@r,@m)";
                SqlCommand cmd = new SqlCommand(iq, con);
                cmd.Parameters.AddWithValue("@n", TextBox1.Text);
                cmd.Parameters.AddWithValue("@e", TextBox2.Text);
                cmd.Parameters.AddWithValue("@r", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@m", TextBox3.Text);
                cmd.ExecuteNonQuery();
                int intId = 100;
                string strPopup = "<script language='javascript' ID='script1'>" + "window.open('popup.aspx?data=" + HttpUtility.UrlEncode(intId.ToString()) + "','new window', 'top=200, left=500, width=350, height=250, dependant=no, location=0, alwaysRaised=no, menubar=no, resizeable=no, scrollbars=n, toolbar=no, status=no, center=yes')" + "</script>";
                ScriptManager.RegisterStartupScript((Page)HttpContext.Current.Handler, typeof(Page), "Script1", strPopup, false);
                con.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error is /n" + ex.ToString());
            }
        }
    }
}