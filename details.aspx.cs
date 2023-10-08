using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Backend
{
    public partial class details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            String cnStr;
            SqlConnection cn;
       
                if (Request.QueryString["movieID"] != null)
                {
                    string movieID = Request.QueryString["movieID"];
                HyperLink1.NavigateUrl = $"Seats.aspx?MovieID={movieID}";
                    cnStr = @"Server=DELL690\SQLEXPRESS;Database=booking;Integrated Security=True;";
                    cn = new SqlConnection(cnStr);
                    cn.Open();

                    String query = "SELECT * FROM Movies WHERE m_id=" + movieID;

                    SqlCommand cmd = new SqlCommand(query,cn);
                    SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Image1.ImageUrl = "./Images/"+ reader.GetString(2);
                    lblName.Text = reader.GetString(1);
                }
                
            }
                else
                {
                    Response.Redirect("Webform1.aspx");
                }

            
        }

    }
}