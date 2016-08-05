using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class viewEmployee : System.Web.UI.Page
{
    DatabaseManagement dman;
    OracleConnection connection;
    string query;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            try
            {
                Label1.Text = Session["name"].ToString();
                Image1.ImageUrl = "image/newemppp.ashx?eid=" + Convert.ToInt16(Session["eid"]);
                Image2.ImageUrl = "image/newempsign.ashx?eid=" + Convert.ToInt16(Session["eid"]);
            }
            catch (Exception ie)
            {
                Response.Redirect("~/login.aspx");
            }
            dman = new DatabaseManagement();

            connection = dman.dbaseConn();
            dman.connOpen(connection);
            query = "select * from Employee where eid='" + Session["eid"].ToString() + "'";
            TextBox22.Text = dman.ReadRow(query, connection)["eid"].ToString();
            TextBox2.Text = dman.ReadRow(query, connection)["fname"].ToString();
            TextBox3.Text = dman.ReadRow(query, connection)["mname"].ToString();
            TextBox4.Text = dman.ReadRow(query, connection)["lname"].ToString();
            TextBox5.Text = dman.ReadRow(query, connection)["faname"].ToString();
            TextBox6.Text = dman.ReadRow(query, connection)["moname"].ToString();
            TextBox7.Text = dman.ReadRow(query, connection)["gender"].ToString();
            TextBox8.Text = dman.ReadRow(query, connection)["department"].ToString();
            TextBox9.Text = dman.ReadRow(query, connection)["section"].ToString();
            TextBox10.Text = dman.ReadRow(query, connection)["phouseno"].ToString();
            TextBox11.Text = dman.ReadRow(query, connection)["proadno"].ToString();
            TextBox12.Text = dman.ReadRow(query, connection)["plocation"].ToString();
            TextBox13.Text = dman.ReadRow(query, connection)["pcity"].ToString();
            TextBox14.Text = dman.ReadRow(query, connection)["pcountry"].ToString();
            TextBox15.Text = dman.ReadRow(query, connection)["per_houseno"].ToString();
            TextBox16.Text = dman.ReadRow(query, connection)["per_roadno"].ToString();
            TextBox17.Text = dman.ReadRow(query, connection)["per_location"].ToString();
            TextBox18.Text = dman.ReadRow(query, connection)["per_city"].ToString();
            TextBox19.Text = dman.ReadRow(query, connection)["per_country"].ToString();
            TextBox20.Text = dman.ReadRow(query, connection)["mobile"].ToString();
            TextBox21.Text = dman.ReadRow(query, connection)["mail"].ToString();
            dman.connClose(connection);
        }

    }
   /* protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox10.ReadOnly = false;
        TextBox10.BackColor = System.Drawing.Color.Yellow;
        TextBox11.ReadOnly = false;
        TextBox11.BackColor = System.Drawing.Color.Yellow;
        TextBox12.ReadOnly = false;
        TextBox12.BackColor = System.Drawing.Color.Yellow;
        TextBox13.ReadOnly = false;
        TextBox13.BackColor = System.Drawing.Color.Yellow;
        TextBox14.ReadOnly = false;
        TextBox14.BackColor = System.Drawing.Color.Yellow;
        TextBox15.ReadOnly = false;
        TextBox15.BackColor = System.Drawing.Color.Yellow;
        TextBox16.ReadOnly = false;
        TextBox16.BackColor = System.Drawing.Color.Yellow;
        TextBox17.ReadOnly = false;
        TextBox17.BackColor = System.Drawing.Color.Yellow;
        TextBox18.ReadOnly = false;
        TextBox18.BackColor = System.Drawing.Color.Yellow;
        TextBox19.ReadOnly = false;
        TextBox19.BackColor = System.Drawing.Color.Yellow;
        TextBox20.ReadOnly = false;
        TextBox20.BackColor = System.Drawing.Color.Yellow;
        TextBox21.ReadOnly = false;
        TextBox21.BackColor = System.Drawing.Color.Yellow;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string upquery = "update Employee set phouseno='"+TextBox10.Text+"',"+"proadno='"+TextBox11.Text+"',"+"plocation='"+TextBox12.Text+"',"+"pcity='"+TextBox13.Text+"',"+"pcountry='"+TextBox14.Text+"',"+"per_houseno='"+TextBox15.Text+"',"+"per_roadno='"+TextBox16.Text+"',"+"per_location='"+TextBox17.Text+"',"+"per_city='"+TextBox18.Text+"',"+"per_country='"+TextBox19.Text+"',"+"mobile='"+TextBox20.Text+"',"+"mail='"+TextBox21.Text+"', where eid='"+Session["sid"].ToString()+"'";
        TestLabel.Text = upquery;
        
    }*/
}