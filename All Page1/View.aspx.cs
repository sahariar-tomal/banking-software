using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class View : System.Web.UI.Page
{
    protected string GlobalStringType = null;
    protected string GlobalStringID = null;
    protected string GlobalStringName = null;
    protected string GlobalStringDept = null;
    DatabaseManagement dman;
    OracleConnection connection;
    string query;
    protected void Page_Load(object sender, EventArgs e)
    {
        GlobalStringType = Session["type"].ToString();
        if (GlobalStringType.Equals("Accountant") || GlobalStringType.Equals("Cash Officer"))
        {
            //DropDownList1.Items.RemoveAt(0);
            //DropDownList1.Items.RemoveAt(0);
            DropDownList1.Items.Remove("Employee");
            
        }
        
        Panel1.Visible = false;
        try
        {
            
            GlobalStringID = Session["id"].ToString();
            GlobalStringName = Session["name"].ToString();
            GlobalStringDept = Session["dept"].ToString();
            Label22.Text = GlobalStringName;
        }
        catch (Exception ie)
        {
            Response.Redirect("~/login.aspx");
        }
        HyperLink1.NavigateUrl = "~/Afterlogin.aspx";
        dman = new DatabaseManagement();

        connection = dman.dbaseConn();
        dman.connOpen(connection);

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label21.Visible = false;
        try
        {
            string id;
            if (DropDownList1.SelectedValue.Equals("Customer"))
            {
                id = "cid";
                query = "select * from " + DropDownList1.SelectedValue + " where " + id + "='" + TextBox1.Text + "'";
                string check = dman.ReadRow(query, connection)["fname"].ToString();
                
            }
            else if (DropDownList1.SelectedValue.Equals("Employee"))
            {
                id = "eid";
                query = "select * from " + DropDownList1.SelectedValue + " where " + id + "='" + TextBox1.Text + "'";
                string check = dman.ReadRow(query, connection)["fname"].ToString();
            }
            else
            {
                id = "loannumber";
                query = "select * from " + DropDownList1.SelectedValue + " where " + id + "='" + TextBox1.Text + "'";
                string check = dman.ReadRow(query, connection)["cid"].ToString();
            }
           // string check = dman.ReadRow(query, connection)["fname"].ToString();
            Session["sid"] = dman.ReadRow(query, connection)[id].ToString();
            if (id.Equals("eid")) Response.Redirect("~/viewEmployee.aspx");
            else if (id.Equals("cid")) Response.Redirect("~/viewCustomer.aspx");
            else Response.Redirect("~/loanView.aspx?id=" + Session["sid"].ToString());
            

            
        }
        catch (Exception ie)
        {
            Label21.Visible = true;
            Label21.Text = "Invalid login";
        }
        
       
    }

}