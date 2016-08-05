using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class Afterlogin : System.Web.UI.Page
{
    protected string GlobalStringType = null;
    protected string GlobalStringID = null;
    protected void Page_Load(object sender, EventArgs e)
    {

        /*   GlobalStringType=Label1.Text= Request.QueryString["type"].ToString();
           GlobalStringID = Request.QueryString["id"].ToString();*/
        try
        {
            GlobalStringType = Session["type"].ToString();
            GlobalStringID = Session["id"].ToString();
        }
        catch (Exception ie)
        {
            Response.Redirect("~/login.aspx");
        }
        Label1.Text = Session["name"].ToString();

        //if ((GlobalStringType.Equals("Accountant")) || (GlobalStringType.Equals("Cash Officer"))
        if(GlobalStringType.Equals("Accountant")||GlobalStringType.Equals("Cash Officer"))
        {
            //CreateAccountButton.Visible = false;
            //CreateLoanButtton.Visible = false;
            //View.Visible = false;
            CreateLoanButtton2.Visible=false;
            CreateEmployeeButton.Visible=false;
        }
        /*if ((GlobalStringType.Equals("Manager")) == false)
        {
            CreateEmployeeButton.Visible = false;
            View.Visible = false;
        }

        if (GlobalStringType.Equals("Manager") || GlobalStringType.Equals("2nd_Officer") || GlobalStringType.Equals("1st_Officer") || GlobalStringType.Equals("Cash_officer") || GlobalStringType.Equals("Senior_Officer"))
        {
            TransactionButton.Visible = true;

        }
        else
        {
            TransactionButton.Visible = false;
            View.Visible = false;
        }*/
    }





       

    protected void ViewProfileButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/empView.aspx");//?id="+GlobalStringID+"&type="+GlobalStringType);
    }
    protected void CreateAccountButton_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("~/AddCustomer.aspx");//?id=" + GlobalStringID + "&type=" + GlobalStringType);
    }
    protected void CreateEmployeeButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/newPage.aspx");

    }
   protected void CreateLoanButtton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/LoanFromNormalPage.aspx");

    }
    protected void TransactionButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/TransactionForm.aspx");
        
    }
    protected void View_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/View.aspx");
    }
   /* protected void CreateLoanButtton0_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SearchPage.aspx");
    }


    protected void CreateLoanButtton1_Click(object sender, EventArgs e)
    {

    }**/
    protected void search(object sender, EventArgs e)
    {
        Response.Redirect("~/SearchPage.aspx");
    }
    protected void Account_Statement(object sender, EventArgs e)
    {
        Response.Redirect("~/transaction_statement.aspx");
    }
    protected void DayStatement_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/DaycalculationPage.aspx");
    }
}