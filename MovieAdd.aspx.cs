using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace Backend
{
    public partial class MovieAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (fileUploadControl.HasFile)
            {
                try
                {
                    string fileName = Path.GetFileName(fileUploadControl.FileName);
                    string movieName = TextBox1.Text; // Get the movie name from the TextBox

                    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand($"Insert Into Movies(m_name,img_url) Values('{movieName}', '{fileName}');", con);
                        int result = cmd.ExecuteNonQuery();
                        if (result > 0)
                        {
                            try
                            {
                                fileUploadControl.SaveAs(Server.MapPath("./Images/") + fileName);

                            }
                            catch (HttpException exc)
                            {
                                lblError.Text = "An Error Occured While Uploading Data : " + exc.Message;
                            }
                        }
                        con.Close();
                    }
                    
                }
                catch (Exception ex)
                {
                    lblError.Text = "An Error Occured While Uploading Data : " + ex.Message;
                }
                
                Response.Redirect("Webform1.aspx");
            }
            else
            {
                Response.Redirect("Webform1.aspx");
            }



            //protected void UploadButton_Click(object sender, EventArgs e)
            //{
            //    if (fileUploadControl.HasFile)
            //    {
            //        try
            //        {
            //            string fileName = Path.GetFileName(fileUploadControl.FileName);
            //            string movieName = TextBox1.Text; // Get the movie name from the TextBox

            //            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString))
            //            {
            //                con.Open();
            //                SqlCommand cmd = new SqlCommand("INSERT INTO Movies (m_name, img_url) VALUES (@movieName, @fileName)", con);
            //                cmd.Parameters.AddWithValue("@movieName", movieName);
            //                cmd.Parameters.AddWithValue("@fileName", fileName);

            //                int result = cmd.ExecuteNonQuery();
            //                if (result > 0)
            //                {
            //                    try
            //                    {
            //                        fileUploadControl.SaveAs(Server.MapPath("./Images/") + fileName);
            //                    }
            //                    catch (HttpException exc)
            //                    {
            //                        lblError.Text = "An Error Occurred While Uploading Data: " + exc.Message;
            //                    }
            //                }
            //            }
            //        }
            //        catch (Exception ex)
            //        {
            //            lblError.Text = "An Error Occurred While Uploading Data: " + ex.Message;
            //        }
            //    }
            //}





            //}

        }

        }
}