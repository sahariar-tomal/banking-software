using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();
    }
    protected void loginbutton_Click(object sender, EventArgs e)
    {
        /*OracleConnection cone = new OracleConnection(@"Data Source=xe;Persist Security Info=True;User ID=hbk;Password=hbk;Unicode=True");
        cone.Open();*/

        string str1 = UnameTbox.Text;
        string str2 = TextBox1.Text;

        DatabaseManagement dman=new DatabaseManagement();
        OracleConnection connection;
        connection = dman.dbaseConn();
        dman.connOpen(connection);
        try
        {
            string query = "select pass from Employee where eid='" + str1 + "'";


            string id = str1;
            string pass = dman.ReadRow(query, connection)["Pass"].ToString();

            if (pass.Equals(str2))
            {

                string usernamequery = "select fname from Employee where eid='" + str1 + "'";
                string username = dman.ReadRow(usernamequery, connection)["fname"].ToString();
                // string typefinding="select Section.Name as TypeName from Section where Section.Id=(select Employee.Sec_Id from Employee where Employee.Id='"+id+"')";
                // string typeofid=dman.ReadRow(typefinding,connection)["TypeName"].ToString();
                //string deptnamequery = "select Department.Name as DeptName from Department where Department.Id=(select Employee.Dept_Id from Employee where Employee.Id='" + id + "')";
                // string dept_name = dman.ReadRow(deptnamequery, connection)["DeptName"].ToString();
                string typefinding = "select section from Employee where eid='" + str1 + "'";
                string typeofid = dman.ReadRow(typefinding, connection)["section"].ToString();
                string deptnamequery = "select department from Employee where eid='" + str1 + "'";
                string dept_name = dman.ReadRow(deptnamequery, connection)["Department"].ToString();
                Label1.Text = "Successful login";
                //         Response.Redirect("~/Afterlogin.aspx?id="+id+"&type="+typeofid);
                Session["id"] = id;
                Session["type"] = typeofid;
                Session["name"] = username;
                Session["dept"] = dept_name;
                Response.Redirect("~/Afterlogin.aspx");

            }
            else
                Label1.Text = "Invalid Login";
        }
        catch (Exception ie)
        {
            Label1.Text = "Invalid Login";
        }







       /* OracleCommand cmd = new OracleCommand("select pass from Employee where Id='" + str1 + "'",cone);
        OracleDataReader reader;
        reader = cmd.ExecuteReader();*/
        /*OracleDataReader reader1;
        OracleCommand cmd1 = new OracleCommand("select pass from Employee where Id='" + str1 + "'", cone);
        reader1 = cmd1.ExecuteReader();
        while (reader1.Read())
        {
            if (str2.CompareTo(reader1["pass"].ToString()) == 0)*/
            {

                


               /* //Response.Redirect("~/newPage.aspx?id="+reader["ID"]);
               // Response.Redirect("~/Afterlogin.aspx");
               // try
                //{
                    Label1.Text += reader1["Id"].ToString() + "  " + reader1["Pass"].ToString();
                //}
                catch (Exception i)
                {
                    Label1.Text = i.Message;
                }*/

           /* }
            else
            {
                Label1.Text = "Invalid Login";
            }*/

       // }
       // cone.Close();

        }
    }
}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            