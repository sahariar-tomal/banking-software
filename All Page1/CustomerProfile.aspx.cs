using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class CustomerProfile : System.Web.UI.Page
{
    protected string GlobalStringType = null;
    protected string GlobalStringID = null;
    protected string GlobalStringName = null;
    protected string GlobalStringDept = null;



    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            GlobalStringType = Session["type"].ToString(); ///type=manager read from manager else reader from employyee
            GlobalStringID = Session["id"].ToString();
            GlobalStringName = Session["name"].ToString();
            GlobalStringDept = Session["dept"].ToString();

        }
        catch (Exception ie)
        {
            Response.Redirect("~/login.aspx");
        }
        Label1.Text = GlobalStringName;
        DatabaseManagement dman = new DatabaseManagement();

        OracleConnection connection = dman.dbaseConn();
        dman.connOpen(connection);
        string query = "select * from Employee where eid='" + GlobalStringID + "'";
       // string pass = dman.ReadRow(query, connection)["Pass"].ToString();
        Label2.Text = dman.ReadRow(query,connection)["fname"].ToString();
        Label3.Text = dman.ReadRow(query, connection)["eid"].ToString();
        Label4.Text = dman.ReadRow(query, connection)["Pass"].ToString();
        //Label5.Text = dman.ReadRow(query, connection)["Sec_Id"].ToString();
        Label6.Text = GlobalStringType;//dman.ReadRow(query, connection)["Name"].ToString();
        //Label7.Text = dman.ReadRow(query, connection)["Dept_Id"].ToString();
        Label8.Text = GlobalStringDept;//dman.ReadRow(query, connection)["Name"].ToString();
        Label9.Text = dman.ReadRow(query, connection)["Mobile"].ToString();
        //Label10.Text = dman.ReadRow(query, connection)["Address"].ToString();
        Label11.Text = dman.ReadRow(query, connection)["Gender"].ToString();
        //Label12.Text = dman.ReadRow(query, connection)["Working_hour"].ToString();

        HyperLink1.NavigateUrl = "~/Afterlogin.aspx";
    }


  /*  protected void GoToMainPageButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Afterlogin.aspx");//?id=" +GlobalStringID + "&type=" + GlobalStringType);
       // Context.RewritePath("/foo.aspx")
       
    }*/
}