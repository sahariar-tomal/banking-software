using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class TransactionForm : System.Web.UI.Page
{
    private bool flag = true;
    private string AccountType;
    protected string GlobalStringType = null;
    protected string GlobalStringID = null;
   // protected string installamount = null;
   // protected string paidamount;

    protected void Page_Load(object sender, EventArgs e)
    {
        StatusLabel.Text = "";
        
        if (Page.IsPostBack == false)
        {
            Panel1.Visible = false;
        }
        try
        {
            GlobalStringType = Session["type"].ToString();
            GlobalStringID = Session["id"].ToString();
        }
        catch (Exception ie)
        {
            Response.Redirect("~/login.aspx");
        }
        Label2.Text = Session["name"].ToString();
        HyperLink1.NavigateUrl = "~/Afterlogin.aspx";
        status2.Text = "";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
       
        if (((radioGroup.SelectedItem).ToString()).Equals("") || (AccountNumberTextBox.Text).Equals(""))
        {
            flag = false;
        }
        else
        {
            DatabaseManagement dm = new DatabaseManagement();
            OracleConnection connection;
            connection = dm.dbaseConn();
            dm.connOpen(connection);
            string ifLoan;
            string ifsavings;
            string gotString;
            try
            {
                if (((radioGroup.SelectedItem).ToString()).Equals("Savings Account"))
                {
                    ifsavings = "select * from customer where cid=" + int.Parse(AccountNumberTextBox.Text);
                    gotString = dm.ReadRow(ifsavings, connection)["fname"].ToString();

                }
                else if (((radioGroup.SelectedItem).ToString()).Equals("Loan Account"))
                {
                    ifLoan = "select * from loan where LOANNUMBER='" + AccountNumberTextBox.Text + "'";
                    gotString = dm.ReadRow(ifLoan, connection)["cid"].ToString();
                }
            }
            catch (Exception ex)
            {
                flag = false;
                StatusLabel.Text = ex.Message;
                Panel1.Visible = false;
            }
            string accountLastUpdateDate;

            string accountOwner;
            string accountBalance;
            if (flag)
            {
                Panel1.Visible = true;
                AccountNumber.Text = AccountNumberTextBox.Text;

               // paidamount = "";
                if (((radioGroup.SelectedItem).ToString()).Equals("Savings Account"))
                {
                  
                   ifsavings = "select * from customer where cid=" + int.Parse(AccountNumberTextBox.Text);
                   AccountOwner.Text= dm.ReadRow(ifsavings, connection)["fname"].ToString();
                   Balance.Text = dm.ReadRow(ifsavings, connection)["IDEPOSIT"].ToString();
                   LastUpdateDate.Text = dm.ReadRow(ifsavings, connection)["UPDATE_DATE"].ToString();
                   Session["t_cid"] = AccountNumberTextBox.Text;
                   Image1.ImageUrl = "image/fortranpp.ashx?t_cid=" + Convert.ToInt16(Session["t_cid"]);
                   Image2.ImageUrl = "image/fortransign.ashx?t_cid=" + Convert.ToInt16(Session["t_cid"]);

                }

                

                if (((radioGroup.SelectedItem).ToString()).Equals("Loan Account"))
                {
                    ifLoan = "select * from loan where LOANNUMBER='" +AccountNumberTextBox.Text+"'";
                    AccountOwner.Text= dm.ReadRow(ifLoan, connection)["cid"].ToString();
                    Session["t_cid"] = AccountOwner.Text;
                    AccountOwner.Text += dm.ReadRow("select fname from customer where cid=" + AccountOwner.Text, connection)["fname"].ToString();
                    Balance.Text= dm.ReadRow(ifLoan, connection)["amount"].ToString();
                    TestLabel1.Text = dm.ReadRow(ifLoan,connection)["installamount"].ToString();
                    TestLabel2.Text = dm.ReadRow(ifLoan,connection)["paidamount"].ToString();
                    LastUpdateDate.Text= dm.ReadRow(ifLoan, connection)["DATEOFPAYMENT"].ToString();
                    Image1.ImageUrl = "image/fortranpp.ashx?t_cid=" + Convert.ToInt16(Session["t_cid"]);
                    Image2.ImageUrl = "image/fortransign.ashx?t_cid=" + Convert.ToInt16(Session["t_cid"]);            


                }
            }            
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        DatabaseManagement dm = new DatabaseManagement();
        OracleConnection connection;
        connection = dm.dbaseConn();
        dm.connOpen(connection);

        if ((DepositOrWithDraw.SelectedItem).ToString().Equals("") || AmountIntext.Text.Equals(""))
        {
            status2.Text = "Enter all the criteria";
            status2.BackColor = System.Drawing.Color.Red;

        }
        else 
        {
            if (DepositOrWithDraw.SelectedItem.ToString().Equals("Deposit") && radioGroup.SelectedValue.Equals("Savings Account"))
            {
                string query1 = "insert into money_deposit values('" + Session["id"].ToString() + "'," + Session["t_cid"].ToString() + "," + AmountIntext.Text + "," + "to_char(sysdate,'HH:MI:SS')" + ",to_char(sysdate,'dd:mon:yyyy'))"; 
               
                OracleCommand cmd1 = new OracleCommand(query1, connection);
                cmd1.ExecuteNonQuery();
                string updatequery = "update Customer set ideposit=ideposit+" + double.Parse(AmountIntext.Text) + "," + "update_date=to_char(sysdate,'DD-MON-YYYY') where cid=" + Session["t_cid"].ToString();
                TestLabel.Text = updatequery;
                OracleCommand cmd2 = new OracleCommand(updatequery,connection);
                cmd2.ExecuteNonQuery();
            }

            else if (DepositOrWithDraw.SelectedItem.ToString().Equals("Withdraw") && radioGroup.SelectedValue.Equals("Savings Account"))
            {
                if ((double.Parse(Balance.Text) - double.Parse(AmountIntext.Text)) >= 500)
                {
                    string query2 = "insert into money_withdraw values('" + Session["id"].ToString() + "'," + Session["t_cid"].ToString() + "," + AmountIntext.Text + "," + "to_char(sysdate,'HH:MI:SS')" + ",to_char(sysdate,'dd:mon:yyyy'))";
                    OracleCommand cmd2 = new OracleCommand(query2, connection);
                    cmd2.ExecuteNonQuery();
                    string updatequery = "update Customer set ideposit=ideposit-" + double.Parse(AmountIntext.Text) + "," + "update_date=to_char(sysdate,'DD-MON-YYYY') where cid=" + Session["t_cid"].ToString();
                    TestLabel.Text = updatequery;
                    OracleCommand cmd3 = new OracleCommand(updatequery, connection);
                    cmd3.ExecuteNonQuery();
                    Response.Redirect("~/TransactionForm.aspx");
                }
                else
                {
                    TestLabel.Text = "Not permitted";
                }
            }
            else if(radioGroup.SelectedValue.Equals("Loan Account") )
            {
                if (DepositOrWithDraw.SelectedItem.ToString().Equals("Deposit"))
                {

                    double newpaidamount = double.Parse(AmountIntext.Text);
                    double totalamount = double.Parse(Balance.Text);
                    double paid = double.Parse(TestLabel2.Text);
                    double restpayment=totalamount-paid;
                    if (newpaidamount >= double.Parse(TestLabel1.Text) && newpaidamount <= restpayment)
                    {
                        string query3 = "update loan set last_update=to_char(sysdate,'DD-MON-YYYY'),paidamount=paidamount+" + newpaidamount + " where loannumber=" + AccountNumberTextBox.Text;
                        // TestLabel2.Text = query3;
                        OracleCommand cmd4 = new OracleCommand(query3, connection);
                        cmd4.ExecuteNonQuery();
                        Response.Redirect("~/TransactionForm.aspx");
                    }
                    else
                    {
                        status2.Text = "you should pay between"+TestLabel1.Text+" to " + restpayment.ToString();
                        status2.BackColor = System.Drawing.Color.Red;
                    }
                }
     //////////////////*************sould be checked*******************/////////////////////////////
                else
                {
                    status2.Text = "You must select the deposit option";
                    status2.BackColor = System.Drawing.Color.Red;
                }
            }
        }
        dm.connClose(connection);

    }

}