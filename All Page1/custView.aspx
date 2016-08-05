<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="custView.aspx.cs" Inherits="viewCustomer" Debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>
        <br />
        Welcome
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </h2>
    <div>
            
            <br />
            
        </div>
        <table style="width: 101%; height: 75px;" __designer:mapid="640">
            <tr __designer:mapid="641">
                <td class="style1" __designer:mapid="642" style="width: 259px">
                    <h2 style="margin-right: 0px">
                        Basic Information</h2>
                </td>
                <td __designer:mapid="643" style="width: 302px">
                    &nbsp;</td>
                <td __designer:mapid="645">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="641">
                <td class="style1" __designer:mapid="642" style="width: 259px">
                    First Name:</td>
                <td __designer:mapid="643" style="width: 302px">
                    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="645" rowspan="6">
            
            <asp:Image runat="server" ID="Image1" style="margin-left:95px;" Height="152px" 
                        Width="141px" />
        
                </td>
            </tr>
            <tr __designer:mapid="641">
                <td class="style1" __designer:mapid="642" style="width: 259px">
                    Middle Name</td>
                <td __designer:mapid="643" style="width: 302px">
                    <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="641">
                <td class="style1" __designer:mapid="642" style="width: 259px">
                    Last Name</td>
                <td __designer:mapid="643" style="width: 302px">
                    <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="646">
                <td class="style1" __designer:mapid="647" style="width: 259px">
                    Father&#39;s name:</td>
                <td __designer:mapid="648" style="width: 302px">
                    <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="64b">
                <td class="style1" __designer:mapid="64c" style="width: 259px">
                    Mother&#39;s name:</td>
                <td __designer:mapid="64d" style="width: 302px">
                    <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="64b">
                <td class="style1" __designer:mapid="64c" style="width: 259px">
                    Customer Id</td>
                <td __designer:mapid="64d" style="width: 302px">
                    <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="64b">
                <td class="style1" __designer:mapid="64c" style="width: 259px">
                    Date of Birth</td>
                <td __designer:mapid="64d" style="width: 302px">
                    <asp:TextBox ID="TextBox7" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="64f" rowspan="4">
                    <asp:Image ID="Image2" runat="server" Height="58px" style="margin-left: 38px" 
                        Width="267px" />
                </td>
            </tr>
            <tr __designer:mapid="650">
                <td class="style1" __designer:mapid="651" style="width: 259px">
                    Gender</td>
                <td __designer:mapid="652" style="width: 302px">
                    <asp:TextBox ID="TextBox8" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="655">
                <td class="style1" __designer:mapid="656" style="width: 259px">
                    Matrimonial Status</td>
                <td __designer:mapid="657" style="width: 302px">
                    <asp:TextBox ID="TextBox9" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    Race</td>
                <td __designer:mapid="65c" style="width: 302px">
                    <asp:TextBox ID="TextBox10" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    Piority</td>
                <td __designer:mapid="65c" style="width: 302px">
                    <asp:TextBox ID="TextBox11" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    Designation</td>
                <td __designer:mapid="65c" style="width: 302px">
                    <asp:TextBox ID="TextBox12" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    National id</td>
                <td __designer:mapid="65c" style="width: 302px">
                    <asp:TextBox ID="TextBox13" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    Driving Licence</td>
                <td __designer:mapid="65c" style="width: 302px">
                    <asp:TextBox ID="TextBox14" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    Resident Status</td>
                <td __designer:mapid="65c" style="width: 302px">
                    <asp:TextBox ID="TextBox15" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    Profession</td>
                <td __designer:mapid="65c" style="width: 302px">
                    <asp:TextBox ID="TextBox16" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    Mobile1</td>
                <td __designer:mapid="65c" style="width: 302px">
                    <asp:TextBox ID="TextBox17" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    Mobile2</td>
                <td __designer:mapid="65c" style="width: 302px">
                    <asp:TextBox ID="TextBox18" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    Telephone</td>
                <td __designer:mapid="65c" style="width: 302px">
                    <asp:TextBox ID="TextBox19" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    Email</td>
                <td __designer:mapid="65c" style="width: 302px">
                    <asp:TextBox ID="TextBox20" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    Division</td>
                <td __designer:mapid="65c" style="width: 302px">
                    <asp:TextBox ID="TextBox21" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    Country</td>
                <td __designer:mapid="65c" style="width: 302px">
                    <asp:TextBox ID="TextBox22" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    Initial Deposit</td>
                <td __designer:mapid="65c" style="width: 302px">
                    <asp:TextBox ID="TextBox23" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    Currency</td>
                <td __designer:mapid="65c" style="width: 302px">
                    <asp:TextBox ID="TextBox24" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    Interest Rate</td>
                <td __designer:mapid="65c" style="width: 302px">
                    <asp:TextBox ID="TextBox25" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    Nominee Name</td>
                <td __designer:mapid="65c" style="width: 302px">
                    <asp:TextBox ID="TextBox26" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    Relation with Nominee</td>
                <td __designer:mapid="65c" style="width: 302px">
                    <asp:TextBox ID="TextBox27" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    Nominee Details</td>
                <td __designer:mapid="65c" style="width: 302px">
                    <asp:TextBox ID="TextBox28" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    &nbsp;</td>
                <td __designer:mapid="65c" style="width: 302px">
                    &nbsp;</td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 259px">
                    <h2>
                        Present Address</h2>
                </td>
                <td __designer:mapid="65c" style="width: 302px">
                    &nbsp;</td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65f">
                <td class="style1" __designer:mapid="660" style="width: 259px">
                    &nbsp;House No</td>
                <td __designer:mapid="661" style="width: 302px">
                    <asp:TextBox ID="TextBox29" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="663">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="664">
                <td class="style1" __designer:mapid="665" style="width: 259px">
                    &nbsp;Road No</td>
                <td __designer:mapid="666" style="width: 302px">
                    <asp:TextBox ID="TextBox30" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="668">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="669">
                <td class="style1" __designer:mapid="66a" style="width: 259px">
                    Village</td>
                <td __designer:mapid="66b" style="width: 302px">
                    <asp:TextBox ID="TextBox31" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="66d">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="66e">
                <td class="style1" __designer:mapid="66f" style="width: 259px">
                    Thana</td>
                <td __designer:mapid="670" style="width: 302px">
                    <asp:TextBox ID="TextBox32" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="672">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="673">
                <td class="style1" __designer:mapid="674" style="width: 259px">
                    District</td>
                <td __designer:mapid="675" style="width: 302px">
                    <asp:TextBox ID="TextBox33" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="677">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="673">
                <td class="style1" __designer:mapid="674" style="width: 259px">
                    Postal Code</td>
                <td __designer:mapid="675" style="width: 302px">
                    <asp:TextBox ID="TextBox34" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="677">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="673">
                <td class="style1" __designer:mapid="674" style="width: 259px">
                    &nbsp;</td>
                <td __designer:mapid="675" style="width: 302px">
                    &nbsp;</td>
                <td __designer:mapid="677">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="673">
                <td class="style1" __designer:mapid="674" style="width: 259px">
                    <h2>
                        Permanant Address</h2>
                </td>
                <td __designer:mapid="675" style="width: 302px">
                    &nbsp;</td>
                <td __designer:mapid="677">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="678">
                <td class="style1" __designer:mapid="679" style="width: 259px">
                    House No</td>
                <td __designer:mapid="67a" style="width: 302px">
                    <asp:TextBox ID="TextBox35" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="67c">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="67d">
                <td class="style1" __designer:mapid="67e" style="width: 259px">
                    Road No</td>
                <td __designer:mapid="67f" style="width: 302px">
                    <asp:TextBox ID="TextBox36" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="681">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="682">
                <td class="style1" __designer:mapid="683" style="width: 259px">
                    Village</td>
                <td __designer:mapid="684" style="width: 302px">
                    <asp:TextBox ID="TextBox37" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="686">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="687">
                <td class="style2" __designer:mapid="688" style="width: 259px">
                    Thana</td>
                <td class="style3" __designer:mapid="689" style="width: 302px">
                    <asp:TextBox ID="TextBox38" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td class="style3" __designer:mapid="68b">
                </td>
            </tr>
            <tr __designer:mapid="68c">
                <td class="style1" __designer:mapid="68d" style="width: 259px">
                    District</td>
                <td __designer:mapid="68e" style="width: 302px">
                    <asp:TextBox ID="TextBox39" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td __designer:mapid="690">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="691">
                <td class="style4" __designer:mapid="692" style="width: 259px">
                    Postal Code</td>
                <td class="style5" __designer:mapid="693" style="width: 302px">
                    <asp:TextBox ID="TextBox40" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td class="style5" __designer:mapid="695">
                </td>
            </tr>
            <tr __designer:mapid="691">
                <td class="style4" __designer:mapid="692" style="width: 259px">
                    &nbsp;</td>
                <td class="style5" __designer:mapid="693" style="width: 302px">
                    &nbsp;</td>
                <td class="style5" __designer:mapid="695">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="691">
                <td class="style4" __designer:mapid="692" style="width: 259px">
                    <h2>
                        Introducer Information</h2>
                </td>
                <td class="style5" __designer:mapid="693" style="width: 302px">
                    &nbsp;</td>
                <td class="style5" __designer:mapid="695">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="691">
                <td class="style4" __designer:mapid="692" style="width: 259px">
                    Name</td>
                <td class="style5" __designer:mapid="693" style="width: 302px">
                    <asp:TextBox ID="TextBox41" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td class="style5" __designer:mapid="695">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="691">
                <td class="style4" __designer:mapid="692" style="width: 259px">
                    Account Number</td>
                <td class="style5" __designer:mapid="693" style="width: 302px">
                    <asp:TextBox ID="TextBox42" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                </td>
                <td class="style5" __designer:mapid="695">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="691">
                <td class="style4" __designer:mapid="692" style="height: 23px; width: 259px;">
                    </td>
                <td class="style5" __designer:mapid="693" style="height: 23px; width: 302px">
                    </td>
                <td class="style5" __designer:mapid="695" style="height: 23px">
                    </td>
            </tr>
            <tr __designer:mapid="696">
                <td class="style4" __designer:mapid="697" style="width: 259px">
                    
                        &nbsp;</td>
                <td class="style5" __designer:mapid="698" style="width: 302px">
                    
                        &nbsp;</td>
                <td class="style5" __designer:mapid="69a">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="69b">
                <td class="style15" align="center" __designer:mapid="69c" style="width: 259px">


                <asp:HyperLink ID="HyperLink1" runat="server"><h2>Menu Page</h2></asp:HyperLink>


                </td>
            </tr>
        </table>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

