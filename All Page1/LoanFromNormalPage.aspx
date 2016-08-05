<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoanFromNormalPage.aspx.cs" Inherits="LoanFromNormalPage" Debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

 <form>
    <div>
    
        <h1>
            Wellcome
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </h1>
        <h1>
            <asp:Label ID="Label1" runat="server"  style="color: #CC66FF"
                Text="Sign up for Loan "></asp:Label>
        </h1>
    
    </div>
    <table style="width:100%;">
        <tr>
            <td class="style1">
                Enter the Account number:
                <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="158px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Search Availability" 
                    onclick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td class="style3">
            </td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="style2">
                <asp:Label ID="CheckLabel" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="CID" 
        DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black">
        <AlternatingItemStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <ItemTemplate>
            <table style="width: 101%; height: 75px;">
                <tr>
                    <td class="style6" style="width: 228px">
                        First name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="style3">
                        <asp:Label ID="FNAMELabel" runat="server" Text='<%# Eval("FNAME") %>' />
                    </td>
                    <td class="style3">
                    </td>
                </tr>
                <tr>
                    <td class="style6" style="width: 228px">
                        Middle Name</td>
                    <td class="style3">
                        <asp:Label ID="MNAMELabel" runat="server" Text='<%# Eval("MNAME") %>' />
                    </td>
                    <td class="style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style6" style="width: 228px">
                        Last Name</td>
                    <td class="style3">
                        <asp:Label ID="LNAMELabel" runat="server" Text='<%# Eval("LNAME") %>' />
                    </td>
                    <td class="style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Father&#39;s name</td>
                    <td>
                        <asp:Label ID="FANAMELabel" runat="server" Text='<%# Eval("FANAME") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Mother&#39;s name</td>
                    <td>
                        <asp:Label ID="MONAMELabel" runat="server" Text='<%# Eval("MONAME") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        &nbsp;Customer ID</td>
                    <td>
                        <asp:Label ID="CIDLabel" runat="server" Text='<%# Eval("CID") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Date of Birth</td>
                    <td>
                        <asp:Label ID="DOBLabel" runat="server" Text='<%# Eval("DOB") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Gender</td>
                    <td>
                        <asp:Label ID="SEXLabel" runat="server" Text='<%# Eval("SEX") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Matrial Status</td>
                    <td>
                        <asp:Label ID="MSTATUSLabel" runat="server" Text='<%# Eval("MSTATUS") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Race</td>
                    <td>
                        <asp:Label ID="RACELabel" runat="server" Text='<%# Eval("RACE") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Piority</td>
                    <td>
                        <asp:Label ID="PIORITYLabel" runat="server" Text='<%# Eval("PIORITY") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Designation</td>
                    <td>
                        <asp:Label ID="DESIGNATIONLabel" runat="server" 
                            Text='<%# Eval("DESIGNATION") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        National ID</td>
                    <td>
                        <asp:Label ID="NIDLabel" runat="server" Text='<%# Eval("NID") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Driving licence</td>
                    <td>
                        <asp:Label ID="DLICENCELabel" runat="server" Text='<%# Eval("DLICENCE") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Resident Status</td>
                    <td>
                        <asp:Label ID="RSTATUSLabel" runat="server" Text='<%# Eval("RSTATUS") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Profession:</td>
                    <td>
                        <asp:Label ID="PROFESSIONLabel" runat="server" 
                            Text='<%# Eval("PROFESSION") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Moblie No1</td>
                    <td>
                        <asp:Label ID="MOBILE1Label" runat="server" Text='<%# Eval("MOBILE1") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Mobile no2</td>
                    <td>
                        <asp:Label ID="MOBILE2Label" runat="server" Text='<%# Eval("MOBILE2") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Telephone</td>
                    <td>
                        <asp:Label ID="TELELabel" runat="server" Text='<%# Eval("TELE") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Email</td>
                    <td>
                        <asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Division</td>
                    <td>
                        <asp:Label ID="DIVLabel" runat="server" Text='<%# Eval("DIV") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Country</td>
                    <td>
                        <asp:Label ID="COUNTRYLabel" runat="server" Text='<%# Eval("COUNTRY") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Initial Deposit</td>
                    <td>
                        <asp:Label ID="IDEPOSITLabel" runat="server" Text='<%# Eval("IDEPOSIT") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Currency</td>
                    <td>
                        <asp:Label ID="CURRENCYLabel" runat="server" Text='<%# Eval("CURRENCY") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Interest Rate</td>
                    <td>
                        <asp:Label ID="IRATELabel" runat="server" Text='<%# Eval("IRATE") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Nominee name</td>
                    <td>
                        <asp:Label ID="NNAMELabel" runat="server" Text='<%# Eval("NNAME") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Nominee relation</td>
                    <td>
                        <asp:Label ID="NRELLabel" runat="server" Text='<%# Eval("NREL") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" style="width: 228px">
                        Nominee Details</td>
                    <td>
                        <asp:Label ID="NDETAILSLabel" runat="server" Text='<%# Eval("NDETAILS") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;CUSTOMER&quot; WHERE (&quot;CID&quot; = :CID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="CID" PropertyName="Text" 
                Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2"  runat="server" Height="30px" onclick="Button2_Click"
                            Text="Proceed" Width="295px" />
                        <asp:HyperLink ID="HyperLink1" runat="server"><h2>Menu Page</h2></asp:HyperLink>
           
    <br />
    </form>
</asp:Content>

