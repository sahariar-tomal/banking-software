using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Reflection;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Text;
using System.IO;
using System.Drawing.Imaging;

public partial class newPage : System.Web.UI.Page
{

    public string ppicpath;
    public string signpath;

    protected string GlobalStringType = null;
    protected string GlobalStringID = null;
    string dummy = "";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            GlobalStringType = Session["type"].ToString();
            GlobalStringID = Session["id"].ToString();
            Label23.Text = Session["name"].ToString();
            StatusLabel.Text = "The url is:"+Image1.ImageUrl;
        }
        catch (Exception ie)
        {
            Response.Redirect("~/login.aspx");
        }
        HyperLink1.NavigateUrl = "~/Afterlogin.aspx";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
     ///   Response.Redirect("~/login.aspx");
        bool flag = true;
       // Label1.Text = dummy;
        Label2.Text = dummy;
        Label3.Text = dummy;
        Label4.Text = dummy;
        Label5.Text = dummy;
        Label6.Text = dummy;
        Label7.Text = dummy;
        Label8.Text = dummy;
        Label9.Text = dummy;
        Label10.Text = dummy;
        Label11.Text = dummy;
        Label12.Text = dummy;
        Label13.Text = dummy;
        Label14.Text = dummy;
        Label15.Text = dummy;
        Label16.Text = dummy;
        Label17.Text = dummy;
        Label18.Text = dummy;
        Label19.Text = dummy;
        Label20.Text = dummy;
        Label21.Text = dummy;
        Label22.Text = dummy;
        if(TextBox1.Text.Equals(dummy))
        {
            flag = false;
            Label2.Text = "*";
            Label2.BackColor = System.Drawing.Color.Red;
        }
        if (TextBox2.Text.Equals(dummy))
        {
            flag = false;
            Label3.Text = "*";
            Label3.BackColor = System.Drawing.Color.Red;
        }
        if (TextBox3.Text.Equals(dummy))
        {
            flag = false;
            Label4.Text = "*";
            Label4.BackColor = System.Drawing.Color.Red;
        }
        if (TextBox4.Text.Equals(dummy))
        {
            flag = false;
            Label5.Text = "*";
            Label5.BackColor = System.Drawing.Color.Red;
        }
        if (TextBox5.Text.Equals(dummy))
        {
            flag = false;
            Label6.Text = "*";
            Label6.BackColor = System.Drawing.Color.Red;
        }
        if (salaryTextbox.Text.Equals(dummy))
        {
            flag = false;
            Label22.Text = "*";
            Label22.BackColor = System.Drawing.Color.Red;
                         
        }
        if (salaryTextbox.Text.Equals(dummy) == false)
        {
            try
            {
                double d = double.Parse(salaryTextbox.Text);
            }
            catch (Exception iee)
            {
                flag = false;
                Label22.Text = "Please enter a valid number";
                Label22.BackColor = System.Drawing.Color.Red;
            }
        }
        if (TextBox6.Text.Equals(dummy))
        {
            flag = false;
            Label7.Text = "*";
            Label7.BackColor = System.Drawing.Color.Red;
        }
        if (TextBox7.Text.Equals(dummy))
        {
            flag = false;
            Label8.Text = "*";
            Label8.BackColor = System.Drawing.Color.Red;
        }
        if (TextBox8.Text.Equals(dummy))
        {
            flag = false;
            Label9.Text = "*";
            Label9.BackColor = System.Drawing.Color.Red;
        }
        if (TextBox9.Text.Equals(dummy))
        {
            flag = false;
            Label10.Text = "*";
            Label10.BackColor = System.Drawing.Color.Red;
        }

        if ((((Image1.ImageUrl).ToString()).Equals("")) || (((Image2.ImageUrl).ToString()).Equals("")))
        {
            flag = false;
            StatusLabel.Text = "upload Image";
            StatusLabel.BackColor = System.Drawing.Color.Red;
 
        }
        if (TextBox10.Text.Equals(dummy) )
        {
            flag = false;
            Label11.Text = "*";
            Label11.BackColor = System.Drawing.Color.Red;
        }

        /*************************/
        if (TextBox11.Text.Equals(dummy) && !PermanetCheck.Checked)
        {
            flag = false;
            Label12.Text = "*";
            Label12.BackColor = System.Drawing.Color.Red;
        }
        if (TextBox12.Text.Equals(dummy) && !PermanetCheck.Checked)
        {
            flag = false;
            Label13.Text = "*";
            Label13.BackColor = System.Drawing.Color.Red;
        }
        if (TextBox13.Text.Equals(dummy) && !PermanetCheck.Checked)
        {
            flag = false;
            Label14.Text = "*";
            Label14.BackColor = System.Drawing.Color.Red;
        }
        if (TextBox14.Text.Equals(dummy) && !PermanetCheck.Checked)
        {
            flag = false;
            Label15.Text = "*";
            Label15.BackColor = System.Drawing.Color.Red;
        }
        if (TextBox15.Text.Equals(dummy) && !PermanetCheck.Checked)
        {
            flag = false;
            Label16.Text = "*";
            Label16.BackColor = System.Drawing.Color.Red;
        }

        /*permanent address*/
        if (TextBox16.Text.Equals(dummy))
        {
            flag = false;
            Label17.Text = "*";
            Label17.BackColor = System.Drawing.Color.Red;
        }
        if (TextBox17.Text.Equals(dummy))
        {
            flag = false;
            Label18.Text = "*";
            Label18.BackColor = System.Drawing.Color.Red;
        }
        if (TextBox18.Text.Equals(dummy))
        {
            flag = false;
            Label19.Text = "*";
            Label19.BackColor = System.Drawing.Color.Red;
        }
        
        if (TextBox18.Text.Equals(dummy)==false)
        {
            DatabaseManagement dman = new DatabaseManagement();

            OracleConnection connection = dman.dbaseConn();
            string d="nai",query="nai";
            try
            {
                
                query="select * from employee where uname='"+TextBox18.Text+"'";
                
                dman.connOpen(connection);
                d = dman.ReadRow(query, connection)["eid"].ToString();
                Label19.Text = "Username already in use";
                Label19.BackColor = System.Drawing.Color.Red;
                flag = false;
            }
            catch (Exception iee)
            {
             //   Label19.Text = iee.Message+" "+query;
               
                //flag = true;
            }
            dman.connClose(connection);
        }
        if (TextBox19.Text.Equals(dummy))
        {
            flag = false;
            Label20.Text = "*";
            Label20.BackColor = System.Drawing.Color.Red;
        }
        if (TextBox20.Text.Equals(dummy))
        {
            flag = false;
            Label21.Text = "*";
            Label21.BackColor = System.Drawing.Color.Red;
        }
        string uname, pass, confirmpass;
        uname = TextBox18.Text;
        pass = TextBox19.Text;
        confirmpass = TextBox20.Text;
        if (pass.Equals(confirmpass) == false)
        {
                flag=false;
                Label21.Text = "Invlid password";
                Label21.BackColor = System.Drawing.Color.Red;
        }

        if (flag)
        {
            string fname, mname, lname, faname, moname,gender,department,section;
            fname = TextBox1.Text;
            mname = TextBox2.Text;
            lname = TextBox3.Text;
            faname = TextBox4.Text;
            moname = TextBox5.Text;
            gender = DropDownList1.SelectedValue;
            department = DropDownList2.SelectedValue;
            section = DropDownList3.SelectedValue;
            string phouseno, proadno,plocation, pcity, pcountry;
            phouseno = TextBox6.Text;
            proadno = TextBox7.Text;
            plocation = TextBox8.Text;
            pcity = TextBox9.Text;
            pcountry = TextBox10.Text;
            string per_houseno, per_roadno, per_location, per_city, per_country;
            if (PermanetCheck.Checked)
            {
                per_houseno = phouseno;
                TextBox6.ReadOnly = true;
                per_roadno = proadno;
                TextBox7.ReadOnly = true;
                per_location = plocation;
                TextBox8.ReadOnly = true;
                per_city = pcity;
                TextBox9.ReadOnly = true;
                per_country = pcountry;
                TextBox10.ReadOnly = true;
            }
            else
            {
                per_houseno = TextBox11.Text;
                per_roadno = TextBox12.Text;
                per_location = TextBox13.Text;
                per_city = TextBox14.Text;
                per_country = TextBox15.Text;
            }
            string mobile,mail;
            mobile=TextBox16.Text;
            mail=TextBox17.Text;
           
           // else
       //     {
                DatabaseManagement dman = new DatabaseManagement();

                OracleConnection connection = dman.dbaseConn();
                dman.connOpen(connection);
                string salary = salaryTextbox.Text;
                string query = "'" + fname + "'," + "'" + mname + "'," + "'" + lname + "'," + "'" + faname + "'," + "'" + moname + "'," + "'" + gender + "'," + "'" + department + "'," + "'" + section + "'," + "'" + phouseno + "'," + "'" + proadno + "'," + "'" + plocation + "'," + "'" + pcity + "'," + "'" + pcountry + "'," + "'" + per_houseno + "'," + "'" + per_roadno + "'," + "'" + per_location + "'," + "'" + per_city + "'," + "'" + per_country + "'," + "'" + mobile + "'," + "'" + mail + "'," + "'" + uname + "'," + "'" + pass + "'," + "'" + confirmpass + "',"+salary;
                string empinsert = "insert into employee values(employee_seq.nextval," + query+")";
                OracleCommand cmd = new OracleCommand(empinsert, connection);
                cmd.ExecuteNonQuery();
                string eidquery = "select * from Employee where uname='" + uname + "'";
                Session["eid"] = dman.ReadRow(eidquery, connection)["eid"].ToString();

                string eidforImageStore = Session["eid"].ToString(); ;


                /***************************************************************************************/
              
                    string path1 = Image1.ImageUrl;
                    string path2 = Image2.ImageUrl;


                    string qString1 = "insert into image_temp3 values('" + eidforImageStore + "'," + " :BlobParameter)";
                    string qString2 = "insert into image_temp4 values('" + eidforImageStore + "'," + " :BlobParameter)";

                    System.Drawing.Image imgforppic;
                    System.Drawing.Image imgforsignpic;

                    imgforppic = System.Drawing.Image.FromFile(Server.MapPath(path1));
                    imgforsignpic = System.Drawing.Image.FromFile(Server.MapPath(path2));

                    MemoryStream stream1 = new MemoryStream();
                    MemoryStream stream2 = new MemoryStream();

                    imgforppic.Save(stream1, ImageFormat.Jpeg);
                    imgforsignpic.Save(stream2, ImageFormat.Jpeg);

                    StatusLabel.Text = (dman.ImageInsert(imgforppic, qString1)).ToString();
                    StatusLabel.Text += (dman.ImageInsert(imgforsignpic, qString2)).ToString();
       

                /********************************************************************************************/

                Response.Redirect("~/afterCreationEmployee.aspx");
                dman.connClose(connection);
          //  }
        }
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {



        DatabaseManagement dm = new DatabaseManagement();
        OracleConnection connection = dm.dbaseConn();
        dm.connOpen(connection);
        if (FileUpload2.HasFile)
        {
            try
            {
                if (FileUpload2.PostedFile.ContentType == "image/jpeg")
                {
                    if (FileUpload2.PostedFile.ContentLength < 102400)
                    {
                        string filename = Path.GetFileName(FileUpload2.FileName);
                        FileUpload2.SaveAs(Server.MapPath("~/TemporaryImages/") + filename);

                        signpath = ("~/TemporaryImages/") + filename;
                        StatusLabel.Text = "Upload status: File uploaded!";

                        Image2.ImageUrl = signpath;

                        //string qstrig = "insert into image_temp2 values('" + (TextBox1.Text).ToString() + "','" + ppicpath + "')";
                        //StatusLabel.Text = (dm.InsertRow(qstrig, connection)).ToString();

                        //string query = "select imageid , imagepath from image_temp2 where imageid='11'";
                        //string path = dm.ReadRow(query, connection)["imagepath"].ToString();
                        //Image1.ImageUrl = path;
                        // StatusLabel.Text = ppicpath;
                        /*******************this is for main database/********************/

                        /*string qString = "insert into image_temp1 values('" + (TextBox1.Text).ToString() + "'," + " :BlobParameter)";

                        System.Drawing.Image img;

                        img = System.Drawing.Image.FromFile(Server.MapPath(ppicpath));
                        MemoryStream stream = new MemoryStream();
                        img.Save(stream, ImageFormat.Jpeg);
                        StatusLabel.Text = (dm.ImageInsert(img, qString)).ToString();
                        //StatusLabel.Text = Server.MapPath(ppicpath);*/

                        /*******************this is end of main database/********************/
                    }
                    else
                        StatusLabel.Text = "Upload status: The file has to be less than 100 kb!";
                }
                else
                    StatusLabel.Text = "Upload status: Only JPEG files are accepted!";
            }
            catch (Exception ex)
            {
                StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }
        }



    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DatabaseManagement dm = new DatabaseManagement();
        OracleConnection connection = dm.dbaseConn();
        dm.connOpen(connection);

        if (FileUpload1.HasFile)
        {
            try
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                {
                    if (FileUpload1.PostedFile.ContentLength < 102400)
                    {
                        string filename = Path.GetFileName(FileUpload1.FileName);
                        FileUpload1.SaveAs(Server.MapPath("~/TemporaryImages/") + filename);

                        ppicpath = ("~/TemporaryImages/") + filename;
                        StatusLabel.Text = "Upload status: File uploaded!";

                        Image1.ImageUrl = ppicpath;

                        //string qstrig = "insert into image_temp2 values('" + (TextBox1.Text).ToString() + "','" + ppicpath + "')";
                        //StatusLabel.Text = (dm.InsertRow(qstrig, connection)).ToString();
                        //string query = "select imageid , imagepath from image_temp2 where imageid='11'";

                        //string path = dm.ReadRow(query, connection)["imagepath"].ToString();
                        //Image1.ImageUrl = path;
                        // StatusLabel.Text = ppicpath;
                        /*******************this is for main database/********************/

                        /*string qString = "insert into image_temp1 values('" + (TextBox1.Text).ToString() + "'," + " :BlobParameter)";

                        System.Drawing.Image img;

                        img = System.Drawing.Image.FromFile(Server.MapPath(ppicpath));
                        MemoryStream stream = new MemoryStream();
                        img.Save(stream, ImageFormat.Jpeg);
                        StatusLabel.Text = (dm.ImageInsert(img, qString)).ToString();
                        //StatusLabel.Text = Server.MapPath(ppicpath);*/

                        /*******************this is end of main database/********************/
                    }
                    else
                        StatusLabel.Text = "Upload status: The file has to be less than 100 kb!";
                }
                else
                    StatusLabel.Text = "Upload status: Only JPEG files are accepted!";
            }
            catch (Exception ex)
            {
                StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }
        }
    }
}