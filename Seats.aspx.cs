using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Backend
{
    public partial class Seats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                if (!IsPostBack)
                {
                    selectedSeatCount = 0;
                }

            if (Request.QueryString["movieID"] != null)
            {
                string movieID = Request.QueryString["movieID"];
                int numberOfSeats = 32; 

                for (int i = 1; i <= numberOfSeats; i++)
                {
                    HtmlGenericControl checkBox = new HtmlGenericControl("input");
                    checkBox.Attributes["type"] = "checkbox";
                    checkBox.ID = "SeatCheckBox" + i.ToString(); 
                    checkBox.Attributes["Value"] = movieID.ToString() + "_" + i.ToString(); 
                    checkBox.Attributes["class"] = "seats";
                    checkBox.Attributes["runat"] = "server";
                    checkBox.Attributes["onchange"] = "handleCheckboxChange()";
                    checkboxContainer.Controls.Add(checkBox); 
                }
            }
            else
            {
                Response.Redirect("WebForm1.aspx");
            }

        }
                protected int selectedSeatCount = 0;
            protected void Seat_CheckedChanged(object sender, EventArgs e)
            {
                CheckBox checkbox = (CheckBox)sender;

                if (checkbox.Checked)
                {
                    if (selectedSeatCount >= 8) 
                    {
                        checkbox.Checked = false;
                    }
                    else
                    {
                        selectedSeatCount++;
                    }
                }
                else
                {
                    selectedSeatCount--;
                }
                lblSelectedSeatCount.Text = "Selected Seats: " + selectedSeatCount;
            }
         
         }

      }
