<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="newPage.aspx.cs" Inherits="newPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <form >
    <div>
    
    </div>
    <h2>
        Wellcome
        <asp:Label ID="Label23" runat="server"></asp:Label>
    </h2>
    <table style="width:100%;">
        <tr>
            <td class="style1" style="width: 153px">
                First name</td>
            <td class="style2" style="width: 353px">
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 1px" 
                    Width="227px"></asp:TextBox>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td rowspan="6">
                <asp:Image ID="Image1" runat="server" Height="166px" Width="181px" AlternateText="Profile Image"/>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" Width="224px" />
                <asp:Button ID="Button2" runat="server" Text="Upload" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                &nbsp;</td>
            <td class="style2" style="width: 353px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                Middle name</td>
            <td class="style2" style="width: 353px">
                <asp:TextBox ID="TextBox2" runat="server"
                    Width="227px"></asp:TextBox>
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                Last name</td>
            <td class="style2" style="width: 353px">
                <asp:TextBox ID="TextBox3" runat="server" 
                    Width="227px"></asp:TextBox>
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                Father Name</td>
            <td class="style2" style="width: 353px">
                <asp:TextBox ID="TextBox4" runat="server" 
                    Width="227px"></asp:TextBox>
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                Mother Name</td>
            <td class="style2" style="width: 353px">
                <asp:TextBox ID="TextBox5" runat="server"
                    Width="227px"></asp:TextBox>
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                Gender</td>
            <td class="style2" style="width: 353px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px; height: 35px;">
                Department</td>
            <td class="style2" style="width: 353px; height: 35px;">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>IT</asp:ListItem>
                    <asp:ListItem>Loan</asp:ListItem>
                    <asp:ListItem>Foreign Exchange</asp:ListItem>
                    <asp:ListItem Selected="True">General</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td rowspan="5">
                <asp:Image ID="Image2" runat="server" Height="65px"  Width="192px" AlternateText="Signature Image" />
                <br />
                <asp:Label ID="StatusLabel" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:FileUpload ID="FileUpload2" runat="server" Width="226px" />
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Upload" />
                </td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                Section</td>
            <td class="style2" style="width: 353px">
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem Selected="True">1st Officer</asp:ListItem>
                    <asp:ListItem>2nd Officer</asp:ListItem>
                    <asp:ListItem>Cash Officer</asp:ListItem>
                    <asp:ListItem>Accountant</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                &nbsp;</td>
            <td class="style2" style="width: 353px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                Salary</td>
            <td class="style2">
                <asp:TextBox ID="salaryTextbox" runat="server" 
                    Width="238px" Height="26px"></asp:TextBox>
                <asp:Label ID="Label22" runat="server"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                &nbsp;</td>
            <td class="style2" style="width: 353px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                Present Address</td>
            <td class="style2" style="width: 353px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                House No:</td>
            <td class="style2" style="width: 353px">
                <asp:TextBox ID="TextBox6" runat="server" 
                    Width="238px" Height="26px"></asp:TextBox>
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                Road No:</td>
            <td class="style2" style="width: 353px">
                <asp:TextBox ID="TextBox7" runat="server"  Width="238px"  
                    ></asp:TextBox>
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                Location</td>
            <td class="style2" style="width: 353px">
                <asp:TextBox ID="TextBox8" runat="server" Width="231px" Height="23px"  
                    ></asp:TextBox>
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                City</td>
            <td class="style2" style="width: 353px">
                <asp:TextBox ID="TextBox9" runat="server" Width="229px" Height="23px"  
                    ></asp:TextBox>
                <asp:Label ID="Label10" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                Country</td>
            <td class="style2" style="width: 353px">
                <asp:TextBox ID="TextBox10" runat="server" Width="225px"  
                    ></asp:TextBox>
                <asp:Label ID="Label11" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                Permanent Address (If different from above )</td>
            <td class="style2" style="width: 353px">
                <asp:CheckBox ID="PermanetCheck" runat="server" 
                    Text="Same as present address" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                House No:</td>
            <td class="style2" style="width: 353px">
                <asp:TextBox ID="TextBox11" runat="server"
                    Width="227px"></asp:TextBox>
                <asp:Label ID="Label12" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                Road No:</td>
            <td class="style2" style="width: 353px">
                <asp:TextBox ID="TextBox12" runat="server"
                    Width="227px"></asp:TextBox>
                <asp:Label ID="Label13" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                City:</td>
            <td class="style2" style="width: 353px">
                <asp:TextBox ID="TextBox13" runat="server" Width="225px"  
                    ></asp:TextBox>
                <asp:Label ID="Label14" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                Location</td>
            <td class="style2" style="width: 353px">
                <asp:TextBox ID="TextBox14" runat="server" Width="224px"  
                    ></asp:TextBox>
                <asp:Label ID="Label15" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                Country:</td>
            <td class="style2" style="width: 353px">
                <asp:TextBox ID="TextBox15" runat="server" Width="225px"  
                    ></asp:TextBox>
                <asp:Label ID="Label16" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                &nbsp;</td>
            <td class="style2" style="width: 353px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                &nbsp;</td>
            <td class="style2" style="width: 353px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                Mobile:</td>
            <td class="style2" style="width: 353px">
                <asp:TextBox ID="TextBox16" runat="server"  
                    Width="227px"></asp:TextBox>
                <asp:Label ID="Label17" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                Mailing Address</td>
            <td class="style2" style="width: 353px">
                <asp:TextBox ID="TextBox17" runat="server" 
                    Width="226px"></asp:TextBox>
                <asp:Label ID="Label18" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                &nbsp;</td>
            <td class="style2" style="width: 353px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                Username:</td>
            <td class="style2" style="width: 353px">
                <asp:TextBox ID="TextBox18" runat="server" 
                    Width="227px"></asp:TextBox>
                <asp:Label ID="Label19" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                Password:</td>
            <td class="style2" style="width: 353px">
                <asp:TextBox ID="TextBox19" runat="server"
                    Width="227px" TextMode="Password"></asp:TextBox>
                <asp:Label ID="Label20" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                Confirm Password:</td>
            <td class="style2" style="width: 353px">
                <asp:TextBox ID="TextBox20" runat="server"  
                    Width="228px" TextMode="Password"></asp:TextBox>
                <asp:Label ID="Label21" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" style="width: 153px">
                &nbsp;</td>
            <td class="style2" style="width: 353px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 153px">
                <asp:HyperLink ID="HyperLink1" runat="server"><h2>Menu Page</h2></asp:HyperLink>
            </td>
            <td class="style4" style="width: 353px">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" Height="35px" Text="Submit" 
                    Width="217px" onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="style1" colspan="3">
                &nbsp;</td>
        </tr>
    </table>
    </form>

</asp:Content>

