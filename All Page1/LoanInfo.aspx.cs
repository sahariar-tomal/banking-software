using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class LoanInfo : System.Web.UI.Page{

      protected string GlobalStringType = null;
      protected string GlobalStringID = null;

    string dummy = "";

    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            GlobalStringType = Session["type"].ToString();
            GlobalStringID = Session["id"].ToString();
            CustomerLable.Text = Session["name"].ToString();
            AccountLable.Text = Session["cid"].ToString();
        }
        catch (Exception ie)
        {
            Response.Redirect("~/login.aspx");
        }

        HyperLink1.NavigateUrl = "~/Afterlogin.aspx";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      //  Response.Redirect("~/LoanProfile.aspx?id=" + GlobalStringID + "&type=" + GlobalStringType);
        Label1.Text = dummy;
        Label2.Text = dummy;
        Label3.Text = dummy;
        Label4.Text = dummy;
        Label5.Text = dummy;
        Label6.Text = dummy;

        bool flag = true;
        try
        {
            double d = double.Parse(TextBox1.Text);
        }
        catch (Exception ie)
        {
            flag = false;
            Label1.Text = "Invalid number";
            Label1.BackColor = System.Drawing.Color.Red;
        }
        if (TextBox1.Text.Equals(dummy))
        {
            flag = false;
            Label1.Text = "*";
            Label1.BackColor = System.Drawing.Color.Red;
        }
        try
        {
            double d = double.Parse(TextBox2.Text);
        }
        catch (Exception ie)
        {
            flag = false;
            Label2.Text = "Invalid number";
            Label2.BackColor = System.Drawing.Color.Red;
        }
        if (TextBox2.Text.Equals(dummy))
        {
            flag = false;
            Label2.Text = "*";
            Label2.BackColor = System.Drawing.Color.Red;
        }
        try
        {
            double d = double.Parse(TextBox3.Text);
        }
        catch (Exception ie)
        {
            flag = false;
            Label3.Text = "Invalid number";
            Label3.BackColor = System.Drawing.Color.Red;
        }
        if (TextBox3.Text.Equals(dummy))
        {
            flag = false;
            Label3.Text = "*";
            Label3.BackColor = System.Drawing.Color.Red;
        }
        if (TextBox4.Text.Equals(dummy))
        {
            flag = false;
            Label4.Text = "*";
            Label4.BackColor = System.Drawing.Color.Red;   
        }
        if (TextBox5.Text.Equals(dummy))
        {
            flag = false;
            Label5.Text = "*";
            Label5.BackColor = System.Drawing.Color.Red;
        }
        if (TextBox6.Text.Equals(dummy))
        {
            flag = false;
            Label6.Text = "*";
            Label6.BackColor = System.Drawing.Color.Red;
        }
        if (flag)
        {
            string amount,sanctiondate,paymentdate,irate,mammount,mor_description,warntee,lealissue;
            amount = TextBox1.Text;
            sanctiondate = DropDownList1.SelectedValue + "-" + DropDownList2.SelectedValue + "-" + DropDownList3.SelectedValue;
            paymentdate = DropDownList4.SelectedValue + "-" + DropDownList5.SelectedValue + "-" + DropDownList6.SelectedValue;
            irate = TextBox2.Text;
            mammount = TextBox3.Text;
            mor_description = TextBox4.Text;
            warntee = TextBox5.Text;
            lealissue = TextBox6.Text;
           
            DatabaseManagement dm = new DatabaseManagement();
            OracleConnection connection = dm.dbaseConn();
            dm.connOpen(connection);
            string seqquery = "select loan_seq.nextval from dual";
            string lnumber = dm.ReadRow(seqquery, connection)[0].ToString();
           // string lnumber = "3012";
            double installamount = (double.Parse(amount) * double.Parse(irate))/100;
            string query = "insert into loan values(" + AccountLable.Text + ",'"+lnumber+"'," + amount + ",'" + sanctiondate + "','" + paymentdate + "'," + irate + ",'" + mammount + "','" + mor_description + "','" + warntee + "','" + lealissue + "',to_char(sysdate),"+installamount+",0)";
            
            try
            {
                OracleCommand cmd = new OracleCommand(query, connection);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ie)
            {
             //   InsertLabel.Text = query+ ie.Message;
            }
            Session["loannumber"] = lnumber;
           
            dm.connClose(connection);
            Response.Redirect("~/LoanProfile.aspx");
         /*   dm.connOpen(connection);
            string query2 = "select * from loan where cid=" + Session["cid"].ToString();
            Session["loannumber"] = dm.ReadRow(query, connection)["loannumber"].ToString();
            dm.connClose(connection);   */     
        }
    }
}