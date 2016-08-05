using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class LoanFromNormalPage : System.Web.UI.Page
{
    protected string GlobalStringType = null;
    protected string GlobalStringID = null;
    string loannumber="";
    int flag;
    DatabaseManagement dman;
    OracleConnection connection;
    protected void Page_Load(object sender, EventArgs e)
    {
        flag = 0;
        try
        {
            GlobalStringType = Session["type"].ToString();
            GlobalStringID = Session["id"].ToString();
            Label3.Text = Session["name"].ToString();
        }
        catch (Exception ie)
        {
            Response.Redirect("~/login.aspx");
        }

        HyperLink1.NavigateUrl = "~/Afterlogin.aspx";//?id=" + GlobalStringID + "&type=" + GlobalStringType;
        Button2.Visible = false;

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        CheckLabel.Visible = false;
        loannumber = TextBox1.Text;
       
            
           /* OracleConnection connection = new OracleConnection("Data Source=xe;Persist Security Info=True;User ID=project;Password=1;Unicode=True");
            connection.Open();
            string query = "select NID from Customer where cid=" + TextBox1.Text;
            OracleDataReader dr = new OracleCommand(query, connection).ExecuteReader();*/
        dman = new DatabaseManagement();

        connection = dman.dbaseConn();
        dman.connOpen(connection);
        string query = "select * from Customer where cid='"+TextBox1.Text.ToString() + "'";

        try{
            int ival = int.Parse(TextBox1.Text);
            if (!dman.ReadRow(query, connection)["fname"].ToString().Equals(""))
            {
                flag = 1;
               // CheckLabel.Text = dman.ReadRow(query, connection)["fname"].ToString();
                Button2.Visible = true;
                Label2.Text = flag.ToString();
            }
            else
            {
                flag = 0;
                //CheckLabel.Text = "You have to enter a valid account number";
                CheckLabel.Visible = true;
                CheckLabel.Text = "You cannot proceed without checking";
            }
        }
        catch (Exception ie)
        {
            flag = 0;
            CheckLabel.Visible = true;
            CheckLabel.Text = "You cannot proceed without checking";
        }
            connection.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
        
            Session["cid"] = TextBox1.Text;
            Response.Redirect("~/loaninfo.aspx");//?id=" + GlobalStringID + "&type=" + GlobalStringType);
        
        /*else
        {
            CheckLabel.Visible = true;
            CheckLabel.Text = "You cannot proceed without checking";
            CheckLabel.BackColor = System.Drawing.Color.Red;
        }*/
    }
}