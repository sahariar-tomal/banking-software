using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;
public partial class viewCustomer : System.Web.UI.Page
{
    DatabaseManagement dman;
    OracleConnection connection;
    string query1;
    string query2;
    string query3;
    string query4;
    protected void Page_Load(object sender, EventArgs e)
    {


        
        if (Page.IsPostBack == false)
        {
            try
            {
                Image1.ImageUrl = "image/custpp.ashx?cid=" + Convert.ToInt16(Session["cid"]);
                Image2.ImageUrl = "image/custsign.ashx?cid=" + Convert.ToInt16(Session["cid"]);
                Label1.Text = Session["name"].ToString();
                string dummy1 = Session["cid"].ToString();
                string dummy2 = Session["introid"].ToString();

            }
            catch (Exception ie)
            {
                Response.Redirect("~/login.aspx");
            }
            HyperLink1.NavigateUrl = "~/Afterlogin.aspx";
            dman = new DatabaseManagement();

            connection = dman.dbaseConn();
            dman.connOpen(connection);
            query1 = "select * from Customer where cid='" + Session["cid"].ToString() + "'";
            query2 = "select * from presentaddress where cid='" + Session["cid"].ToString() + "'";
            query3 = "select * from permanentaddress where cid='" + Session["cid"].ToString() + "'";
            query4 = "select * from introducer where intro_account='" + Session["introid"].ToString() + "'";

            TextBox1.Text = dman.ReadRow(query1, connection)["fname"].ToString();
            TextBox2.Text = dman.ReadRow(query1, connection)["mname"].ToString();
            TextBox3.Text = dman.ReadRow(query1, connection)["lname"].ToString();
            TextBox4.Text = dman.ReadRow(query1, connection)["faname"].ToString();
            TextBox5.Text = dman.ReadRow(query1, connection)["moname"].ToString();
            TextBox6.Text = dman.ReadRow(query1, connection)["cid"].ToString();
            TextBox7.Text = dman.ReadRow(query1, connection)["dob"].ToString();
            TextBox8.Text = dman.ReadRow(query1, connection)["sex"].ToString();
            TextBox9.Text = dman.ReadRow(query1, connection)["mstatus"].ToString();
            TextBox10.Text = dman.ReadRow(query1, connection)["race"].ToString();
            TextBox11.Text = dman.ReadRow(query1, connection)["piority"].ToString();
            TextBox12.Text = dman.ReadRow(query1, connection)["designation"].ToString();
            TextBox13.Text = dman.ReadRow(query1, connection)["nid"].ToString();
            TextBox14.Text = dman.ReadRow(query1, connection)["dlicence"].ToString();
            TextBox15.Text = dman.ReadRow(query1, connection)["rstatus"].ToString();
            TextBox16.Text = dman.ReadRow(query1, connection)["profession"].ToString();
            TextBox17.Text = dman.ReadRow(query1, connection)["mobile1"].ToString();
            TextBox18.Text = dman.ReadRow(query1, connection)["mobile2"].ToString();
            TextBox19.Text = dman.ReadRow(query1, connection)["tele"].ToString();
            TextBox20.Text = dman.ReadRow(query1, connection)["email"].ToString();
            TextBox21.Text = dman.ReadRow(query1, connection)["div"].ToString();
            TextBox22.Text = dman.ReadRow(query1, connection)["country"].ToString();
            TextBox23.Text = dman.ReadRow(query1, connection)["ideposit"].ToString();
            TextBox24.Text = dman.ReadRow(query1, connection)["currency"].ToString();
            TextBox25.Text = dman.ReadRow(query1, connection)["irate"].ToString();
            TextBox26.Text = dman.ReadRow(query1, connection)["nname"].ToString();
            TextBox27.Text = dman.ReadRow(query1, connection)["nrel"].ToString();
            TextBox28.Text = dman.ReadRow(query1, connection)["ndetails"].ToString();


            TextBox29.Text = dman.ReadRow(query2, connection)["paddress_hno"].ToString();
            TextBox30.Text = dman.ReadRow(query2, connection)["paddress_rno"].ToString();
            TextBox31.Text = dman.ReadRow(query2, connection)["village"].ToString();
            TextBox32.Text = dman.ReadRow(query2, connection)["thana"].ToString();
            TextBox33.Text = dman.ReadRow(query2, connection)["district"].ToString();
            TextBox34.Text = dman.ReadRow(query2, connection)["pcode"].ToString();

            TextBox35.Text = dman.ReadRow(query3, connection)["per_hno"].ToString();
            TextBox36.Text = dman.ReadRow(query3, connection)["per_rno"].ToString();
            TextBox37.Text = dman.ReadRow(query3, connection)["per_vil"].ToString();
            TextBox38.Text = dman.ReadRow(query3, connection)["per_thana"].ToString();
            TextBox39.Text = dman.ReadRow(query3, connection)["per_dis"].ToString();
            TextBox40.Text = dman.ReadRow(query3, connection)["per_pcode"].ToString();

            TextBox41.Text = dman.ReadRow(query4, connection)["intro_name"].ToString();
            TextBox42.Text = dman.ReadRow(query4, connection)["intro_account"].ToString();

            dman.connClose(connection);
        }

    }
 /*   protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox17.ReadOnly = false;
        TextBox17.BackColor = System.Drawing.Color.Yellow;
        TextBox18.ReadOnly = false;
        TextBox18.BackColor = System.Drawing.Color.Yellow;
        TextBox19.ReadOnly = false;
        TextBox19.BackColor = System.Drawing.Color.Yellow;
        TextBox20.ReadOnly = false;
        TextBox20.BackColor = System.Drawing.Color.Yellow;

        TextBox29.ReadOnly = false;
        TextBox29.BackColor = System.Drawing.Color.Yellow;
        TextBox30.ReadOnly = false;
        TextBox30.BackColor = System.Drawing.Color.Yellow;
        TextBox31.ReadOnly = false;
        TextBox31.BackColor = System.Drawing.Color.Yellow;
        TextBox32.ReadOnly = false;
        TextBox32.BackColor = System.Drawing.Color.Yellow;
        TextBox33.ReadOnly = false;
        TextBox33.BackColor = System.Drawing.Color.Yellow;
        TextBox34.ReadOnly = false;
        TextBox34.BackColor = System.Drawing.Color.Yellow;

        TextBox35.ReadOnly = false;
        TextBox35.BackColor = System.Drawing.Color.Yellow;
        TextBox36.ReadOnly = false;
        TextBox36.BackColor = System.Drawing.Color.Yellow;
        TextBox37.ReadOnly = false;
        TextBox37.BackColor = System.Drawing.Color.Yellow;
        TextBox38.ReadOnly = false;
        TextBox38.BackColor = System.Drawing.Color.Yellow;
        TextBox39.ReadOnly = false;
        TextBox39.BackColor = System.Drawing.Color.Yellow;
        TextBox40.ReadOnly = false;
        TextBox40.BackColor = System.Drawing.Color.Yellow;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string upquery1 = "update Customer set mobile1='" + TextBox17.Text + "'," + "mobile2='" + TextBox18.Text + "'," + "tele='" + TextBox19.Text + "'," + "email='" + TextBox20.Text + "'";
        string upquery2 = "update presentaddress set paddress_hno='" + TextBox29.Text + "'," + "paddress_rno='" + TextBox30.Text + "'," + "village='" + TextBox31.Text + "'," + "thana='" + TextBox32.Text + "'," + "district='" + TextBox33.Text + "'," + "pcode='" + TextBox34.Text + "'";
        string upquery3 = "update permanentaddress set per_hno='" + TextBox35.Text + "'," + "per_rno='" + TextBox36.Text + "'," + "per_vil='" + TextBox37.Text + "'," + "per_thana='" + TextBox38.Text + "'," + "per_dis='" + TextBox39.Text + "'," + "per_pcode='" + TextBox40.Text + "'";

        Test.Text = upquery1 + upquery2 + upquery3;
    }*/
}