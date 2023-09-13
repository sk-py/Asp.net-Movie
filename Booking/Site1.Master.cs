using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Booking
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Header.Attributes["data-simplebar"] = "true";
            // if(User.Identity.IsAuthenticated)
            /*  {
                  menuUname.Visible = true;
                  menuSignin.Visible = false;
            //  }else
              {
                  menuUname.Visible = false;
                  menuSignin.Visible = true;
              }*/
        }
    }
}