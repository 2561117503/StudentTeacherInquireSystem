using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Exitlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cookies["username"].Value = "";
        Response.Cookies["username"].Expires = DateTime.Now.AddSeconds(-1);
        HttpContext.Current.Response.Write(" <script language=javascript>parent.location.href= 'Login.aspx'; </script> ");

    }
}