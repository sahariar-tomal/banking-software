﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="empView.aspx.cs" Inherits="viewEmployee" Debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>
        <br />
        Wellcome
        <asp:Label ID="Label1" runat="server" Text="adminfname"></asp:Label>
    </h2>
    <p>
        &nbsp;</p>
        <table style="width: 101%; height: 75px;" __designer:mapid="640">
            <tr __designer:mapid="641">
                <td class="style1" __designer:mapid="642" style="width: 258px">
                    First Name:</td>
                <td __designer:mapid="643" style="width: 218px">
                    <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True">My textbox</asp:TextBox>
                </td>
                <td __designer:mapid="645" rowspan="6">
                    <asp:Image ID="Image1" runat="server" Height="148px" Width="139px" />
                </td>
            </tr>
            <tr __designer:mapid="641">
                <td class="style1" __designer:mapid="642" style="width: 258px">
                    Middle Name</td>
                <td __designer:mapid="643" style="width: 218px">
                    <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True">My textbox</asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="641">
                <td class="style1" __designer:mapid="642" style="width: 258px">
                    Last Name</td>
                <td __designer:mapid="643" style="width: 218px">
                    <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True">My textbox</asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="646">
                <td class="style1" __designer:mapid="647" style="width: 258px">
                    Father&#39;s name:</td>
                <td __designer:mapid="648" style="width: 218px">
                    <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True">My textbox</asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="64b">
                <td class="style1" __designer:mapid="64c" style="width: 258px">
                    Mother&#39;s name:</td>
                <td __designer:mapid="64d" style="width: 218px">
                    <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True">My textbox</asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="650">
                <td class="style1" __designer:mapid="651" style="width: 258px">
                    Gender</td>
                <td __designer:mapid="652" style="width: 218px">
                    <asp:TextBox ID="TextBox7" runat="server" ReadOnly="True">My textbox</asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="655">
                <td class="style1" __designer:mapid="656" style="width: 258px">
                    Department</td>
                <td __designer:mapid="657" style="width: 218px">
                    <asp:TextBox ID="TextBox8" runat="server" ReadOnly="True">My textbox</asp:TextBox>
                </td>
                <td __designer:mapid="659">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65a">
                <td class="style1" __designer:mapid="65b" style="width: 258px">
                    Section</td>
                <td __designer:mapid="65c" style="width: 218px">
                    <asp:TextBox ID="TextBox9" runat="server" ReadOnly="True">My textbox</asp:TextBox>
                </td>
                <td __designer:mapid="65e">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="65f">
                <td class="style1" __designer:mapid="660" style="width: 258px">
                    Present House No</td>
                <td __designer:mapid="661" style="width: 218px">
                    <asp:TextBox ID="TextBox10" runat="server" ReadOnly="True">My textbox</asp:TextBox>
                </td>
                <td __designer:mapid="663">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="664">
                <td class="style1" __designer:mapid="665" style="width: 258px">
                    Present Road No</td>
                <td __designer:mapid="666" style="width: 218px">
                    <asp:TextBox ID="TextBox11" runat="server" ReadOnly="True">My textbox</asp:TextBox>
                </td>
                <td __designer:mapid="668">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="669">
                <td class="style1" __designer:mapid="66a" style="width: 258px">
                    Present Location</td>
                <td __designer:mapid="66b" style="width: 218px">
                    <asp:TextBox ID="TextBox12" runat="server" ReadOnly="True">My textbox</asp:TextBox>
                </td>
                <td __designer:mapid="66d">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="66e">
                <td class="style1" __designer:mapid="66f" style="width: 258px">
                    Present City</td>
                <td __designer:mapid="670" style="width: 218px">
                    <asp:TextBox ID="TextBox13" runat="server" ReadOnly="True">My textbox</asp:TextBox>
                </td>
                <td __designer:mapid="672">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="673">
                <td class="style1" __designer:mapid="674" style="width: 258px">
                    Present Country</td>
                <td __designer:mapid="675" style="width: 218px">
                    <asp:TextBox ID="TextBox14" runat="server" ReadOnly="True">My textbox</asp:TextBox>
                </td>
                <td __designer:mapid="677">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="678">
                <td class="style1" __designer:mapid="679" style="width: 258px">
                    Permanent House No</td>
                <td __designer:mapid="67a" style="width: 218px">
                    <asp:TextBox ID="TextBox15" runat="server" ReadOnly="True">My textbox</asp:TextBox>
                </td>
                <td __designer:mapid="67c">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="67d">
                <td class="style1" __designer:mapid="67e" style="width: 258px">
                    Permanent Road No</td>
                <td __designer:mapid="67f" style="width: 218px">
                    <asp:TextBox ID="TextBox16" runat="server" ReadOnly="True">My textbox</asp:TextBox>
                </td>
                <td __designer:mapid="681">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="682">
                <td class="style1" __designer:mapid="683" style="width: 258px">
                    Permanent Location</td>
                <td __designer:mapid="684" style="width: 218px">
                    <asp:TextBox ID="TextBox17" runat="server" ReadOnly="True">My textbox</asp:TextBox>
                </td>
                <td __designer:mapid="686">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="687">
                <td class="style2" __designer:mapid="688" style="width: 258px">
                    Permanent City</td>
                <td class="style3" __designer:mapid="689" style="width: 218px">
                    <asp:TextBox ID="TextBox18" runat="server" ReadOnly="True">My textbox</asp:TextBox>
                </td>
                <td class="style3" __designer:mapid="68b">
                </td>
            </tr>
            <tr __designer:mapid="68c">
                <td class="style1" __designer:mapid="68d" style="width: 258px">
                    Permanent Country</td>
                <td __designer:mapid="68e" style="width: 218px">
                    <asp:TextBox ID="TextBox19" runat="server" ReadOnly="True">My textbox</asp:TextBox>
                </td>
                <td __designer:mapid="690">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="691">
                <td class="style4" __designer:mapid="692" style="width: 258px">
                    Mobile</td>
                <td class="style5" __designer:mapid="693" style="width: 218px">
                    <asp:TextBox ID="TextBox20" runat="server" ReadOnly="True">My textbox</asp:TextBox>
                </td>
                <td class="style5" __designer:mapid="695">
                </td>
            </tr>
            <tr __designer:mapid="691">
                <td class="style4" __designer:mapid="692" style="width: 258px">
                    Email Address</td>
                <td class="style5" __designer:mapid="693" style="width: 218px">
                    <asp:TextBox ID="TextBox21" runat="server" ReadOnly="True">My textbox</asp:TextBox>
                </td>
                <td class="style5" __designer:mapid="695">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="691">
                <td class="style4" __designer:mapid="692" style="height: 23px; width: 258px;">
                    </td>
                <td class="style5" __designer:mapid="693" style="height: 23px; width: 218px">
                    </td>
                <td class="style5" __designer:mapid="695" style="height: 23px">
                    </td>
            </tr>
            <tr __designer:mapid="696">
                <td class="style4" __designer:mapid="697" style="width: 258px">
                    
                        &nbsp;</td>
                <td class="style5" __designer:mapid="698" style="width: 218px">
                    &nbsp;</td>
                <td class="style5" __designer:mapid="69a">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="69b">
                <td class="style15" align="center" __designer:mapid="69c" style="width: 258px">


                <asp:HyperLink ID="HyperLink1" runat="server"><h2>Menu Page</h2></asp:HyperLink>


                </td>
            </tr>
        </table>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

