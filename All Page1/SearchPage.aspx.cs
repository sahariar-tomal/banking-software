using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
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
        Label1.Text = Session["name"].ToString();
        HyperLink1.NavigateUrl = "~/Afterlogin.aspx";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
        if (DropDownList1.SelectedValue.Equals("Employee"))
        {
            if (DropDownList2.SelectedValue.Equals("Section"))
            {
                GridView1.DataSourceID = "sectiondata";
            }
            else if (DropDownList2.SelectedValue.Equals("Department"))
            {
                GridView1.DataSourceID = "departmentdata";
            }
            else if (DropDownList2.SelectedValue.Equals("Salary"))
            {
                GridView1.DataSourceID = "salarydata";
            }
            else if (DropDownList2.SelectedValue.Equals("City"))
            {
                GridView1.DataSourceID = "citydata";
            }
            

        }
        else
        {
            if (DropDownList2.SelectedValue.Equals("Balance"))
            {
                GridView1.DataSourceID = "cbalancedata";
            }
            else if (DropDownList2.SelectedValue.Equals("Thana"))
            {
                GridView1.DataSourceID = "cthanadata";
            }
            else if (DropDownList2.SelectedValue.Equals("District"))
            {
                GridView1.DataSourceID = "cdistrictdata";
            }
            else if (DropDownList2.SelectedValue.Equals("Loan"))
            {
                GridView1.DataSourceID = "loandata";
            }
            else if (DropDownList2.SelectedValue.Equals("Postalcode"))
            {
                GridView1.DataSourceID = "postalcode";
            }
            

        }
        


    }
}