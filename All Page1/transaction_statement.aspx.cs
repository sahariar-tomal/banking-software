using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class transaction_statement : System.Web.UI.Page
{
    protected int account;
    protected string GlobalStringType = null;
    protected string GlobalStringID = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;     
        try
        {
            GlobalStringType = Session["type"].ToString();
            GlobalStringID = Session["id"].ToString();
        }
        catch (Exception ie)
        {
            Response.Redirect("~/login.aspx");
        }
     //   Label1.Text = Session["name"].ToString();
    }



    protected void ShowButton_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        string fdate=FromDateLabel.Text = DropDownList1.SelectedValue+"-"+ DropDownList2.SelectedValue +"-"+ DropDownList3.SelectedValue;
        string tdate=ToDateLabel.Text = DropDownList8.SelectedValue + "-" + DropDownList7.SelectedValue + "-" + DropDownList6.SelectedValue;
        //account = int.Parse(TextBox1.Text);
        
        
        
    }
}