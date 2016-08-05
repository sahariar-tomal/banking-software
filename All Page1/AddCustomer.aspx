<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" Debug="true" AutoEventWireup="true" CodeFile="AddCustomer.aspx.cs" Inherits="AddCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <form>
    <div>
    
        <h2>
            Wellcome
            <asp:Label ID="Label28" runat="server"></asp:Label>
        </h2>
        <h2>
            <span style="font-weight: normal"><strong>Customer Login Page</strong></span></h2>
    </div>

    <table style="width: 100%;">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style4" style="width: 451px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                First name</td>
            <td class="style4" style="width: 451px">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="453px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Middle name</td>
            <td class="style4" style="width: 451px">
                <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="453px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Last&nbsp; name</td>
            <td class="style6" style="width: 451px">
                <asp:TextBox ID="TextBox13" runat="server" Height="25px" Width="453px"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Father&#39;s name</td>
            <td class="style6" style="width: 451px">
                <asp:TextBox ID="TextBox14" runat="server" Height="25px" Width="453px"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Mother&#39;s name</td>
            <td class="style6" style="width: 451px">
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="453px"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                coustmer id</td>
            <td class="style6" style="width: 451px">
                <asp:Label ID="Label2" runat="server" Text="************"></asp:Label>
&nbsp;
                <asp:Label ID="Label1" runat="server" Text="will be generated automitically"></asp:Label>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Date of birth</td>
            <td class="style6" style="width: 451px">
                day<asp:DropDownList ID="DropDownList1" runat="server" Height="24px" 
                    style="margin-bottom: 0px" Width="71px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
                month<asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Jan</asp:ListItem>
                    <asp:ListItem>Feb</asp:ListItem>
                    <asp:ListItem>Mar</asp:ListItem>
                    <asp:ListItem>Apr</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>Jun</asp:ListItem>
                    <asp:ListItem>Jul</asp:ListItem>
                    <asp:ListItem>Aug</asp:ListItem>
                    <asp:ListItem>Sep</asp:ListItem>
                    <asp:ListItem>Oct</asp:ListItem>
                    <asp:ListItem>Nov</asp:ListItem>
                    <asp:ListItem>Dec</asp:ListItem>
                </asp:DropDownList>
                year<asp:DropDownList ID="DropDownList3" runat="server" Height="24px" 
                    Width="61px">
                    <asp:ListItem>1901</asp:ListItem>
                    <asp:ListItem>1902</asp:ListItem>
                    <asp:ListItem>1903</asp:ListItem>
                    <asp:ListItem>1904</asp:ListItem>
                    <asp:ListItem>1905</asp:ListItem>
                    <asp:ListItem>1906</asp:ListItem>
                    <asp:ListItem>1907</asp:ListItem>
                    <asp:ListItem>1908</asp:ListItem>
                    <asp:ListItem>1909</asp:ListItem>
                    <asp:ListItem>1910</asp:ListItem>
                    <asp:ListItem>1911</asp:ListItem>
                    <asp:ListItem>1912</asp:ListItem>
                    <asp:ListItem>1913</asp:ListItem>
                    <asp:ListItem>1914</asp:ListItem>
                    <asp:ListItem>1915</asp:ListItem>
                    <asp:ListItem>1916</asp:ListItem>
                    <asp:ListItem>1917</asp:ListItem>
                    <asp:ListItem>1918</asp:ListItem>
                    <asp:ListItem>1919</asp:ListItem>
                    <asp:ListItem>1920</asp:ListItem>
                    <asp:ListItem>1921</asp:ListItem>
                    <asp:ListItem>1922</asp:ListItem>
                    <asp:ListItem>1923</asp:ListItem>
                    <asp:ListItem>1924</asp:ListItem>
                    <asp:ListItem>1925</asp:ListItem>
                    <asp:ListItem>1926</asp:ListItem>
                    <asp:ListItem>1927</asp:ListItem>
                    <asp:ListItem>1928</asp:ListItem>
                    <asp:ListItem>1929</asp:ListItem>
                    <asp:ListItem>1930</asp:ListItem>
                    <asp:ListItem>1931</asp:ListItem>
                    <asp:ListItem>1932</asp:ListItem>
                    <asp:ListItem>1933</asp:ListItem>
                    <asp:ListItem>1934</asp:ListItem>
                    <asp:ListItem>1935</asp:ListItem>
                    <asp:ListItem>1936</asp:ListItem>
                    <asp:ListItem>1937</asp:ListItem>
                    <asp:ListItem>1938</asp:ListItem>
                    <asp:ListItem>1939</asp:ListItem>
                    <asp:ListItem>1940</asp:ListItem>
                    <asp:ListItem>1941</asp:ListItem>
                    <asp:ListItem>1942</asp:ListItem>
                    <asp:ListItem>1943</asp:ListItem>
                    <asp:ListItem>1944</asp:ListItem>
                    <asp:ListItem>1945</asp:ListItem>
                    <asp:ListItem>1946</asp:ListItem>
                    <asp:ListItem>1947</asp:ListItem>
                    <asp:ListItem>1948</asp:ListItem>
                    <asp:ListItem>1949</asp:ListItem>
                    <asp:ListItem>1950</asp:ListItem>
                    <asp:ListItem>1951</asp:ListItem>
                    <asp:ListItem>1952</asp:ListItem>
                    <asp:ListItem>1953</asp:ListItem>
                    <asp:ListItem>1954</asp:ListItem>
                    <asp:ListItem>1955</asp:ListItem>
                    <asp:ListItem>1956</asp:ListItem>
                    <asp:ListItem>1957</asp:ListItem>
                    <asp:ListItem>1958</asp:ListItem>
                    <asp:ListItem>1959</asp:ListItem>
                    <asp:ListItem>1960</asp:ListItem>
                    <asp:ListItem>1961</asp:ListItem>
                    <asp:ListItem>1962</asp:ListItem>
                    <asp:ListItem>1963</asp:ListItem>
                    <asp:ListItem>1964</asp:ListItem>
                    <asp:ListItem>1965</asp:ListItem>
                    <asp:ListItem>1966</asp:ListItem>
                    <asp:ListItem>1967</asp:ListItem>
                    <asp:ListItem>1968</asp:ListItem>
                    <asp:ListItem>1969</asp:ListItem>
                    <asp:ListItem>1970</asp:ListItem>
                    <asp:ListItem>1971</asp:ListItem>
                    <asp:ListItem>1972</asp:ListItem>
                    <asp:ListItem>1973</asp:ListItem>
                    <asp:ListItem>1974</asp:ListItem>
                    <asp:ListItem>1975</asp:ListItem>
                    <asp:ListItem>1976</asp:ListItem>
                    <asp:ListItem>1977</asp:ListItem>
                    <asp:ListItem>1978</asp:ListItem>
                    <asp:ListItem>1979</asp:ListItem>
                    <asp:ListItem Selected="True">1980</asp:ListItem>
                    <asp:ListItem>1981</asp:ListItem>
                    <asp:ListItem>1982</asp:ListItem>
                    <asp:ListItem>1983</asp:ListItem>
                    <asp:ListItem>1984</asp:ListItem>
                    <asp:ListItem>1985</asp:ListItem>
                    <asp:ListItem>1986</asp:ListItem>
                    <asp:ListItem>1987</asp:ListItem>
                    <asp:ListItem>1988</asp:ListItem>
                    <asp:ListItem>1989</asp:ListItem>
                    <asp:ListItem>1990</asp:ListItem>
                    <asp:ListItem>1991</asp:ListItem>
                    <asp:ListItem>1992</asp:ListItem>
                    <asp:ListItem>1993</asp:ListItem>
                    <asp:ListItem>1994</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem>
                    <asp:ListItem>1999</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>2001</asp:ListItem>
                    <asp:ListItem>2002</asp:ListItem>
                    <asp:ListItem>2003</asp:ListItem>
                    <asp:ListItem>2004</asp:ListItem>
                    <asp:ListItem>2005</asp:ListItem>
                    <asp:ListItem>2006</asp:ListItem>
                    <asp:ListItem>2007</asp:ListItem>
                    <asp:ListItem>2008</asp:ListItem>
                    <asp:ListItem>2009</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                </asp:DropDownList>
                sex<asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Matrimonial Status<asp:DropDownList 
                    ID="DropDownList5" runat="server">
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Unmarried</asp:ListItem>
                </asp:DropDownList>
                Race<asp:DropDownList ID="DropDownList6" runat="server">
                    <asp:ListItem>Muslim</asp:ListItem>
                    <asp:ListItem>Hindu</asp:ListItem>
                    <asp:ListItem>Cristian</asp:ListItem>
                    <asp:ListItem>Buddish</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Piority</td>
            <td class="style6" style="width: 451px">
                <asp:DropDownList ID="DropDownList7" runat="server">
                    <asp:ListItem>High</asp:ListItem>
                    <asp:ListItem>Mid</asp:ListItem>
                    <asp:ListItem>Low</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style1">
                Picture<asp:Image 
                    ID="Image3" runat="server" Height="151px" 
                    Width="142px" />




                <br />




                <asp:FileUpload ID="FileUpload1" runat="server" Width="222px" />
                
                <asp:Button ID="Button2" runat="server" Text="Upload" onclick="Button2_Click" />


                <br />
                <asp:Label ID="StatusLabel" runat="server" Text="Label"></asp:Label>


            </td>
        </tr>
        <tr>
            <td class="style3">
                Picture authority</td>
            <td class="style6" style="width: 451px">
                <asp:CheckBox ID="pictureCheckBox" runat="server" />
                <asp:Label ID="Label25" runat="server"></asp:Label>
            </td>
            <td class="style1">
                Signature:<asp:Image 
                    ID="Image4" runat="server" Height="64px" 
                    Width="188px" />




                <br />




                <asp:FileUpload ID="FileUpload2" runat="server" Width="222px" />

                <asp:Button ID="Button3" runat="server" Text="Upload" onclick="Button3_Click" />

            </td>
        </tr>
        <tr>
            <td class="style3">
                Designation</td>
            <td class="style6" colspan="2">
                <asp:DropDownList ID="DropDownList12" runat="server" Height="16px" Width="85px">
                    <asp:ListItem Selected="True">Employee</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                National ID</td>
            <td class="style6" style="width: 451px">
                <asp:TextBox ID="TextBox4" runat="server" Height="24px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label10" runat="server"></asp:Label>
            </td>
            <td class="style1">
                Driving Licence:<asp:TextBox ID="TextBox5" runat="server" Height="24px" 
                    Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Resident Status</td>
            <td class="style6" style="width: 451px">
                <asp:DropDownList ID="DropDownList9" runat="server" Height="23px" Width="86px">
                    <asp:ListItem Selected="True">Permanent</asp:ListItem>
                    <asp:ListItem>Nonpermanent</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style1">
                Profession:<asp:DropDownList ID="DropDownList14" runat="server" Height="23px" 
                    Width="86px">
                    <asp:ListItem Selected="True">Teacher</asp:ListItem>
                    <asp:ListItem>Student</asp:ListItem>
                    <asp:ListItem>Police</asp:ListItem>
                    <asp:ListItem>Businessman</asp:ListItem>
                    <asp:ListItem>Service Holder</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Present address</td>
            <td class="style5" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                House no.</td>
            <td class="style5" colspan="2">
                <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
                <asp:Label ID="Label11" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Road no.</td>
            <td class="style5" colspan="2">
                <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
                <asp:Label ID="Label12" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Village</td>
            <td class="style5" colspan="2">
                <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
                <asp:Label ID="Label13" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Thana</td>
            <td class="style5" colspan="2">
                <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
                <asp:Label ID="Label14" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                District</td>
            <td class="style6" style="width: 451px">
                <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
                <asp:Label ID="Label15" runat="server"></asp:Label>
            </td>
            <td class="style1">
                Postal/zip code:<asp:TextBox ID="TextBox37" runat="server" Height="24px" 
                    Width="180px"></asp:TextBox>
                <asp:Label ID="Label16" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Permanent address</td>
            <td class="style5" colspan="2">
                <asp:CheckBox ID="PermanentAddressCheck" runat="server" 
                    Text="Same as Present Address" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                House no.</td>
            <td class="style5" colspan="2">
                <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Road no.</td>
            <td class="style5" colspan="2">
                <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Village:</td>
            <td class="style5" colspan="2">
                <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Thana:</td>
            <td class="style5" colspan="2">
                <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                District</td>
            <td class="style6" style="width: 451px">
                <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
            </td>
            <td class="style1">
                Postal/zip code:<asp:TextBox ID="TextBox8" runat="server" Height="24px" 
                    Width="180px"></asp:TextBox>
                <asp:Label ID="Label26" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Mobile</td>
            <td class="style6" style="width: 451px">
                1.<asp:TextBox ID="TextBox9" runat="server" Height="22px" Width="164px"></asp:TextBox>
&nbsp;2.<asp:TextBox ID="TextBox10" runat="server" Height="24px" Width="180px"></asp:TextBox>
                <asp:Label ID="Label17" runat="server"></asp:Label>
            </td>
            <td class="style1">
                Tele.(if any):<asp:TextBox ID="TextBox11" runat="server" Height="24px" 
                    Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Mail</td>
            <td class="style6" style="width: 451px">
                <asp:TextBox ID="TextBox12" runat="server" Height="29px" Width="350px"></asp:TextBox>
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style3">
                Division</td>
            <td class="style6" style="width: 451px">
                <asp:DropDownList ID="DropDownList11" runat="server" Height="19px" Width="70px">
                    <asp:ListItem>Dhaka</asp:ListItem>
                    <asp:ListItem>Rajshahi</asp:ListItem>
                    <asp:ListItem>Chittagong</asp:ListItem>
                    <asp:ListItem>Khulna</asp:ListItem>
                    <asp:ListItem>Sylet</asp:ListItem>
                    <asp:ListItem>Rangpur</asp:ListItem>
                    <asp:ListItem>Barisal</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style1">
                Country:<asp:RadioButton ID="RadioButton1" runat="server" Checked="True" 
                    Text="Banglaseh" />
            </td>
        </tr>
        </table>
     <table style="width: 101%; height: 60px;">
        <tr>
            <td class="style2">
                Title of the account:<asp:TextBox ID="TextBox15" runat="server" Height="27px" 
                    Width="411px"></asp:TextBox>
                <asp:Label ID="Label18" runat="server"></asp:Label>
            </td>
            <td >
            </td>
            <td >
            </td>
        </tr>
        <tr>
            <td >
                Type of account:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList15" runat="server">
                    <asp:ListItem Selected="True">Saving</asp:ListItem>
                    <asp:ListItem>Current</asp:ListItem>
                    <asp:ListItem>Fixed</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label19" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                Operating information:<asp:DropDownList 
                    ID="DropDownList16" runat="server">
                    <asp:ListItem>Single</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label20" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table style="width: 101%; height: 121px;">
        <tr>
            <td>
                Initial Deposit:<asp:TextBox ID="TextBox18" runat="server" Height="30px" 
                    Width="129px" style="margin-top: 1px"></asp:TextBox>
                <asp:Label ID="Label21" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Currency:<asp:DropDownList ID="DropDownList8" runat="server">
                    <asp:ListItem Selected="True">BDT</asp:ListItem>
                    <asp:ListItem>Doller</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td >
                Interest rate:<asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
                <asp:Label ID="Label27" runat="server"></asp:Label>
            </td>
            <td >
            </td>
        </tr>
        <tr>
            <td  colspan="3">
                Introducer information(must be filled and verified)</td>
        </tr>
    </table>
    <table style="width: 101%; height: 60px;">
        <tr>
            <td>
                Account:<asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                <asp:Label ID="Label22" runat="server"></asp:Label>
            </td>
            <td style="width: 671px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table style="width: 101%; height: 60px;">
        <tr>
            <td>
                Nominee&#39;s name:<asp:TextBox ID="TextBox23" runat="server" Height="29px" 
                    Width="183px"></asp:TextBox>
                <asp:Label ID="Label23" runat="server"></asp:Label>
            </td>
            <td >
                Relation with customer:<asp:DropDownList ID="DropDownList13" runat="server" 
                    style="margin-left: 3px" Width="95px">
                    <asp:ListItem Selected="True">Chidren</asp:ListItem>
                    <asp:ListItem>Parent</asp:ListItem>
                    <asp:ListItem>Siblings</asp:ListItem>
                    <asp:ListItem>Husband/wife</asp:ListItem>
                    <asp:ListItem>Relative</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                Details:<asp:TextBox ID="TextBox24" runat="server" Height="31px" Width="341px" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td >
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
            <td >
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table style="width: 101%; height: 60px;">
        <tr>
            <td colspan="3">
                Close account (Needed when account is needed to be cloased)
                <asp:CheckBox ID="CheckBox3" runat="server" Text="Yes" />
            </td>
        </tr>
        <tr>
            <td >
                Comment:</td>
            <td >
                Reason(s):</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:TextBox ID="TextBox25" runat="server" Height="53px" Width="317px"></asp:TextBox>
            </td>
            <td >
                <asp:TextBox ID="TextBox26" runat="server" Height="52px" 
                    Width="338px" style="margin-bottom: 0px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
            <td >
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td style="width: 444px" >
                <asp:Label ID="Label4" runat="server" 
                    Text="I agree to the terms and condition of the bank"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td style="width: 118px">
                &nbsp;<asp:CheckBox ID="CheckBox4" runat="server" Text="Yes" />
            </td>
            <td>
                <asp:CheckBox ID="CheckBox5" runat="server" Text="No" />
                <asp:Label ID="Label24" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td  align="center" style="width: 444px">


                <asp:HyperLink ID="HyperLink1" runat="server"><h2>Menu Page</h2></asp:HyperLink>


            </td>
            <td style="width: 118px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="48px" Text="Create account" 
                    Width="208px" 
                    style="float:left;margin-left:100px;font-weight:bolder" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3" >          


                <br />


                <br />
                <br />


            </td>
        </tr>
    </table>

    </form>
</asp:Content>

