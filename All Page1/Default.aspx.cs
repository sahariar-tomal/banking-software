using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Accountant_Default : System.Web.UI.Page
{

    protected string GlobalStringType = null;
    protected string GlobalStringID = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            GlobalStringType = Session["type"].ToString();
            GlobalStringID = Session["id"].ToString();
        }
        catch (Exception ie)
        {
            Response.Redirect("~/login.aspx");
        }
        
        HyperLink1.NavigateUrl = "~/Afterlogin.aspx";//?id=" + GlobalStringID + "&type=" + GlobalStringType;

        

    }
}