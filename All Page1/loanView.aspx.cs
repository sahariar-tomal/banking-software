using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class LoanProfile : System.Web.UI.Page
{   
    protected string GlobalStringType = null;
    protected string GlobalStringID = null;
    protected string GlobalStringLoan = null;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink1.NavigateUrl = "~/Afterlogin.aspx";
        try
        {
            GlobalStringType = Session["type"].ToString();
            GlobalStringID = Session["id"].ToString();
            GlobalStringLoan =Session["sid"].ToString();
        }
        catch (Exception ie)
        {
            Response.Redirect("~/login.aspx");
        }
        string query = "select * from loan where loannumber='" + Session["sid"].ToString()+"'";
        TextBox1.Text = GlobalStringLoan;
        TextBox2.Text = query;
        DatabaseManagement dman = new DatabaseManagement();
        OracleConnection connection = dman.dbaseConn();
        dman.connOpen(connection);
        
        TextBox2.Text = dman.ReadRow(query, connection)["cid"].ToString();
        TextBox3.Text = dman.ReadRow(query, connection)["amount"].ToString();
        TextBox4.Text = dman.ReadRow(query, connection)["dateofsanction"].ToString();
        TextBox5.Text = dman.ReadRow(query, connection)["dateofpayment"].ToString();
        TextBox6.Text = dman.ReadRow(query, connection)["interestrate"].ToString();
        TextBox7.Text = dman.ReadRow(query, connection)["mortgageammount"].ToString();
        TextBox8.Text = dman.ReadRow(query, connection)["mortgagedescription"].ToString();
        TextBox9.Text = dman.ReadRow(query, connection)["warrantee"].ToString();
        TextBox10.Text = dman.ReadRow(query, connection)["legalissue"].ToString();
        LastUpdateTextBox.Text = dman.ReadRow(query, connection)["last_update"].ToString();
        InstallAmountTextBox.Text = dman.ReadRow(query, connection)["installamount"].ToString();
        PaidAmountTextBox.Text = dman.ReadRow(query, connection)["paidamount"].ToString();
        dman.connClose(connection);

    }
/*    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Afterlogin.aspx");
    }*/
}