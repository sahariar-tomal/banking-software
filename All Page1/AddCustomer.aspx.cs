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

public partial class AddCustomer : System.Web.UI.Page
{
    protected string GlobalStringType = null;
    protected string GlobalStringID = null;
    string dummy = "";
    public string ppicpath;
    public string signpath;


    protected void Page_Load(object sender, EventArgs e)
    {        
        try
        {
            GlobalStringType = Session["type"].ToString();
            GlobalStringID = Session["id"].ToString();
            Label28.Text = Session["name"].ToString();
        }
        catch (Exception ie)
        {
            Response.Redirect("~/login.aspx");
        }
        HyperLink1.NavigateUrl = "~/Afterlogin.aspx";      
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

                        Image3.ImageUrl = ppicpath;

                        
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

                        Image4.ImageUrl = signpath;

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


    protected void Button1_Click(object sender, EventArgs e)
    {       
            bool flag = true;
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
            Label23.Text = dummy;
            Label24.Text = dummy;
            Label25.Text = dummy;
            Label26.Text = dummy;
            Label27.Text = dummy;
        
            if (TextBox1.Text.Equals(dummy))
            {
                flag = false;
                Label5.Text = "*";
                Label5.BackColor = System.Drawing.Color.Red;
            }
            if (TextBox3.Text.Equals(dummy))
            {
                flag = false;
                Label6.Text = "*";
                Label6.BackColor = System.Drawing.Color.Red;
            }
            if (TextBox13.Text.Equals(dummy))
            {
                flag = false;
                Label7.Text = "*";
                Label7.BackColor = System.Drawing.Color.Red;
            }
            if (TextBox14.Text.Equals(dummy))
            {
                flag = false;
                Label8.Text = "*";
                Label8.BackColor = System.Drawing.Color.Red;
            }
            if (TextBox2.Text.Equals(dummy))
            {
                flag = false;
                Label9.Text = "*";
                Label9.BackColor = System.Drawing.Color.Red;
            }
            //////////////////////////////////////////////////////
            if (TextBox4.Text.Equals(dummy))
            {
                flag = false;
                Label10.Text = "*";
                Label10.BackColor = System.Drawing.Color.Red;
            }
            if (TextBox32.Text.Equals(dummy))
            {
                flag = false;
                Label11.Text = "*";
                Label11.BackColor = System.Drawing.Color.Red;
            }
            if (TextBox33.Text.Equals(dummy))
            {
                flag = false;
                Label12.Text = "*";
                Label12.BackColor = System.Drawing.Color.Red;
            }

            if (TextBox34.Text.Equals(dummy))
            {
                flag = false;
                Label13.Text = "*";
                Label13.BackColor = System.Drawing.Color.Red;
            }
            if (TextBox35.Text.Equals(dummy))
            {
                flag = false;
                Label14.Text = "*";
                Label14.BackColor = System.Drawing.Color.Red;
            }
            if (TextBox36.Text.Equals(dummy))
            {
                flag = false;
                Label15.Text = "*";
                Label15.BackColor = System.Drawing.Color.Red;
            }
            if (TextBox37.Text.Equals(dummy))
            {
                flag = false;
                Label16.Text = "*";
                Label16.BackColor = System.Drawing.Color.Red;
            }
            if (TextBox9.Text.Equals(dummy))
            {
                flag = false;
                Label17.Text = "*";
                Label17.BackColor = System.Drawing.Color.Red;
            }
            if (TextBox15.Text.Equals(dummy))
            {
                flag = false;
                Label18.Text = "*";
                Label18.BackColor = System.Drawing.Color.Red;
            }
            if (TextBox18.Text.Equals(dummy))
            {
                flag = false;
                Label21.Text = "*";
                Label21.BackColor = System.Drawing.Color.Red;
                
            }
            if (TextBox18.Text.Equals(dummy)==false)
            {
                try
                {
                    double d = double.Parse(TextBox18.Text);
                    if (d < 500)
                    {
                        flag = false;
                        Label21.Text = "Minimum amount is 500 BDT";
                        Label21.BackColor = System.Drawing.Color.Red;
                    }
                }
                catch (Exception iee)
                {
                    flag = false;
                    Label21.Text = "Please enter a valid number";
                    Label21.BackColor = System.Drawing.Color.Red;
                }
            }
            if (TextBox38.Text.Equals(dummy))
            {
                 flag = false;
                 Label27.Text = "*";
                 Label27.BackColor = System.Drawing.Color.Red;

            }
            if (TextBox38.Text.Equals(dummy) == false)
            {
                 try
                 {
                     double d = double.Parse(TextBox38.Text);
                     if (d < 0)
                     {
                         flag = false;
                         Label27.Text = "Please enter a positive number";
                         Label27.BackColor = System.Drawing.Color.Red;

                     }
                }
                catch (Exception iee)
                {
                     flag = false;
                     Label27.Text = "Please enter a valid number";
                     Label27.BackColor = System.Drawing.Color.Red;
                }
            }



            if ((((Image3.ImageUrl).ToString()).Equals("")) || (((Image4.ImageUrl).ToString()).Equals("")))
            {
                flag = false;
                StatusLabel.Text="Upload proper Images";
                StatusLabel.BackColor=System.Drawing.Color.Red;
            
            }




            if (TextBox20.Text.Equals(dummy))
            {
                flag = false;
                Label22.Text = "*";
                Label22.BackColor = System.Drawing.Color.Red;
            }
            string intro_name="";
            if (TextBox20.Text.Equals(dummy)==false)
            {
                DatabaseManagement dman = new DatabaseManagement();
                OracleConnection connection = dman.dbaseConn();
                dman.connOpen(connection);
                try
                {
                    string introcmd = "select * from customer where cid=" + TextBox20.Text;
                    intro_name = dman.ReadRow(introcmd, connection)["fname"].ToString();
                  //  flag = false;
                   
                }
                catch (Exception iee)
                {

                    Label22.Text = "Invalid account number";
                    Label22.BackColor = System.Drawing.Color.Red;
                    flag = false;
                }
                dman.connClose(connection);
                
            }
             
            if (TextBox23.Text.Equals(dummy))
            {
                flag = false;
                Label23.Text = "*";
                Label23.BackColor = System.Drawing.Color.Red;
            }
            if (CheckBox4.Checked && CheckBox5.Checked)         /////specail//////
            {
                flag = false;
                Label24.Text = "you can not select two option";
                Label24.BackColor = System.Drawing.Color.Red;
            }
            if (!CheckBox4.Checked && !CheckBox5.Checked)         /////specail//////
            {
                flag = false;
                Label24.Text = "Select one";
                Label24.BackColor = System.Drawing.Color.Red;
            }
            if (pictureCheckBox.Checked == false)
            {
                flag = false;
                Label25.Text = "Check is necessary";
                Label25.BackColor = System.Drawing.Color.Red;

            }
            if (TextBox8.Text.Equals(dummy) && PermanentAddressCheck.Checked==false )
            {
                flag = false;
                Label26.Text = "Check is necessary";
                Label26.BackColor = System.Drawing.Color.Red;

            }
               
            if (flag && CheckBox4.Checked)
            {
               
                string fname, mname, lname, faname, moname, cid, dob ,sex , mstatus, race, piority, designation, nid, dlicence,rstatus, profession;
                fname = TextBox1.Text;
                mname = TextBox3.Text;
                lname = TextBox13.Text;
                faname = TextBox14.Text;
                moname = TextBox2.Text;
                //automatic generation customer_seq.nextval
                dob = DropDownList1.SelectedValue + "-" + DropDownList2.SelectedValue + "-" + DropDownList3.SelectedValue;
                sex = DropDownList4.SelectedValue;
                mstatus = DropDownList5.SelectedValue;
                race = DropDownList6.SelectedValue;
                piority = DropDownList7.SelectedValue;
                designation = DropDownList12.SelectedValue;
                nid = TextBox4.Text;
                dlicence = TextBox5.Text;
                rstatus = DropDownList9.SelectedValue;
                profession = DropDownList14.SelectedValue;

                string  paddress_hno, paddress_rno, village, thana, district,pcode;
                paddress_hno = TextBox32.Text;
                paddress_rno = TextBox33.Text;
                village = TextBox34.Text;
                thana = TextBox35.Text;
                district = TextBox36.Text;
                pcode = TextBox37.Text;
                string per_hno, per_rno, per_vil, per_thana, per_dis, per_pcode;
                if (PermanentAddressCheck.Checked == true)
                {
                    TextBox28.Text=per_hno = paddress_hno;
                    TextBox28.ReadOnly = true;
                    TextBox29.Text = per_rno = paddress_rno;
                    TextBox29.ReadOnly = true;
                    TextBox30.Text = per_vil = village;
                    TextBox30.ReadOnly = true;
                    TextBox31.Text = per_thana = thana;
                    TextBox31.ReadOnly = true;
                    TextBox27.Text = per_dis = district;
                    TextBox27.ReadOnly = true;
                    TextBox8.Text = per_pcode = pcode;
                    TextBox8.ReadOnly = true;
                }
                else
                {
                    per_hno = TextBox28.Text;
                    per_rno = TextBox29.Text;
                    per_vil = TextBox30.Text;
                    per_thana = TextBox31.Text;
                    per_dis = TextBox27.Text;
                    per_pcode = TextBox8.Text;

                }
                string mobile1, mobile2, tele,email;
                mobile1 = TextBox9.Text;
                mobile2 = TextBox10.Text;
                tele = TextBox11.Text;
                email = TextBox12.Text;

                string div, country;
                div = DropDownList11.SelectedValue;
                country = "Bangladesh";
                string title, type, oinfo;
                title = TextBox15.Text;
                type = DropDownList15.SelectedValue;
                oinfo = DropDownList16.SelectedValue;


                string ideposit, currency, irate;
                ideposit = TextBox18.Text;
                currency = DropDownList8.SelectedValue;
                irate = TextBox38.Text;

                string  intro_account;

                intro_account = TextBox20.Text;
                int in_acc = int.Parse(intro_account);

                string nname, nrel,ndetails;
                nname = TextBox23.Text;
                nrel=DropDownList13.SelectedValue;
                ndetails=TextBox24.Text;
                DatabaseManagement dman = new DatabaseManagement();
                OracleConnection connection = dman.dbaseConn();
                dman.connOpen(connection);
                string cidquery = "select customer_seq.nextval from dual ";
                cid = dman.ReadRow(cidquery, connection)[0].ToString();
                string cmd_name = "'" + fname + "'," + "'" + mname + "'," + "'" + lname + "'," + "'" + faname + "'," + "'" + moname + "',";
                string cmd_rest = "'" + sex + "'," + "'" + mstatus + "'," + "'" + race + "'," + "'" + piority + "'," + "'" + designation + "'," + "'" + nid + "'," + "'" + dlicence + "'," + "'" + rstatus + "'," + "'" + profession + "'," + "'" + mobile1 + "'," + "'" + mobile2 + "'," + "'" + tele + "'," + "'" + email + "'," + "'" + div + "'," + "'" + country + "'," + "'" + ideposit + "'," + "'" + currency + "'," + "'" + irate + "'," + "'" + nname + "'," + "'" + nrel + "'," + "'" + ndetails + "'";
                string InsertCommand = "insert into customer values("+cmd_name+cid+","+"'"+dob+"',"+cmd_rest+",to_char(sysdate))";
                string presentcmd= "insert into presentaddress values("+cid+",'" + paddress_hno + "',"+"'" + paddress_rno + "',"+"'" + village + "',"+"'" + thana + "',"+"'" + district + "',"+"'" + pcode + "')";
                string parmanentcmd = "insert into permanentaddress values("+cid + ",'" + per_hno + "'," + "'" + per_rno + "'," + "'" + per_vil + "'," + "'" + per_thana + "'," + "'" + per_dis + "'," + "'" + per_pcode + "')";
                
                
              
                string introducercmd = "insert into introducer values(" + TextBox20.Text + ",'" + intro_name + "'," + cid + ")";

                OracleCommand cmd4 = new OracleCommand(introducercmd, connection);
                cmd4.ExecuteNonQuery();
                   
                   
                OracleCommand cmd1 = new OracleCommand(InsertCommand, connection);
                cmd1.ExecuteNonQuery();
                OracleCommand cmd2 = new OracleCommand(presentcmd, connection);
                cmd2.ExecuteNonQuery();
                OracleCommand cmd3 = new OracleCommand(parmanentcmd, connection);
                cmd3.ExecuteNonQuery();
                Session["cid"] = cid;
                string accountNumberforImageStore = Session["cid"].ToString();

                /***************************************************************************************/

                string path1 = Image3.ImageUrl;
                string path2 = Image4.ImageUrl;


                string qString1 = "insert into image_temp1 values('" + accountNumberforImageStore + "'," + " :BlobParameter)";
                string qString2 = "insert into image_temp2 values('" + accountNumberforImageStore + "'," + " :BlobParameter)";

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

                Session["introid"] = intro_account;

                connection.Close();
                    
                Response.Redirect("~/custView.aspx");                           

            }
           

    }

   
}