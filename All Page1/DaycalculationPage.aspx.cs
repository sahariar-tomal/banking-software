using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class transaction_statement : System.Web.UI.Page
{
    protected int account;
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
        Label8.Text = Session["name"].ToString();
        Panel1.Visible = true;
        
            DatabaseManagement dman = new DatabaseManagement();

            OracleConnection connection = dman.dbaseConn();
            dman.connOpen(connection);
            string query1 = "select to_char(sysdate,'DD-MON-YYYY') from dual";
            string sysdate = dman.ReadRow(query1, connection)[0].ToString();
            CurrentDateLabel.Text = sysdate;
            string totalDeposit = "0";
            string totalWithdraw = "0";
            double totalD = 0;
            double totalW = 0;
            try
            {
                string query2 = "select sum(amount) from money_deposit where deposit_date=to_char(sysdate,'DD-MON-YYYY')";
                totalDeposit = dman.ReadRow(query2, connection)[0].ToString();
                totalD = double.Parse(totalDeposit);
                TotalDepositLabel.Text = totalDeposit;
            }
            catch (Exception ii)
            {

                TotalDepositLabel.Text = "0";
                totalD = 0;
            }
            try
            {
                string query3 = "select sum(amount) from money_withdraw where withdraw_date=to_char(sysdate,'DD-MON-YYYY')";
                totalWithdraw = dman.ReadRow(query3, connection)[0].ToString();
                totalW = double.Parse(totalWithdraw);
                TotalWithdrawLabel.Text = totalWithdraw;
            }
            catch (Exception ii)
            {

                TotalDepositLabel.Text = "0";
                totalW = 0;
            }
            dman.connClose(connection);
            //double total = double.Parse(totalDeposit) + double.Parse(totalWithdraw);
            double total = totalD + totalW;
            TotalTransction.Text = total.ToString();
       }
}
