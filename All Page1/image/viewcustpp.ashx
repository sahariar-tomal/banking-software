<%@ WebHandler Language="C#" Class="viewcustpp" %>

using System;
using System.Web;

using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OracleClient;
using System.Diagnostics;
using System.Text;
using System.IO;
using System.Drawing.Imaging;
using System.Drawing;

public class viewcustpp : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        DatabaseManagement db = new DatabaseManagement();
        OracleConnection connection = db.dbaseConn();
        connection.Open();
        //string ImgString = "SELECT image from image_temp1 where AccountNumber='111'";//ispro = 1 and pid=" + Context.Request.QueryString["id"];
        //"SELECT image from PROPIC where ispro = 1 and pid=" + Context.Request.QueryString["id"];
        string ImgString = "select picture from image_temp1 where AccountNumber='" + context.Request.QueryString["sid"] + "'";
        OracleCommand cmd = new OracleCommand(ImgString, connection);
        cmd.Prepare();
        OracleDataReader dr = cmd.ExecuteReader();
        dr.Read();

        Stream str = new MemoryStream((Byte[])dr[0]);

        Bitmap loBMP = new Bitmap(str);

        Bitmap bmpOut = new Bitmap(100, 100);



        Graphics g = Graphics.FromImage(bmpOut);

        g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;

        g.FillRectangle(Brushes.White, 0, 0, 100, 100);

        g.DrawImage(loBMP, 0, 0, 100, 100);



        MemoryStream ms = new MemoryStream();

        bmpOut.Save(ms, System.Drawing.Imaging.ImageFormat.Png);

        byte[] bmpBytes = ms.GetBuffer();

        bmpOut.Dispose();

        ms.Close();

        context.Response.BinaryWrite(bmpBytes);

        connection.Close();

        context.Response.End();
    
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}