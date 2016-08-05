<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchPage.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>
        Welcome&nbsp;
                <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
    </h2>
    <p>
    </p>
    <table style="width: 100%; margin-top: 7px;">
        <tr>
            <td style="width: 203px">
                &nbsp;</td>
            <td style="width: 206px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 203px">
                <asp:Label ID="Label2" runat="server">Search Table</asp:Label>
            </td>
            <td style="width: 206px">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="91px">
                    <asp:ListItem Selected="True">Employee</asp:ListItem>
                    <asp:ListItem>Customer</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 203px">
                <asp:Label ID="Label3" runat="server">Search by</asp:Label>
            </td>
            <td style="width: 206px">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem Selected="True">Section</asp:ListItem>
                    <asp:ListItem>Department</asp:ListItem>
                    <asp:ListItem Value="Salary">Salary Range</asp:ListItem>
                    <asp:ListItem Value="City">City</asp:ListItem>
                    <asp:ListItem>Balance</asp:ListItem>
                    <asp:ListItem>Thana</asp:ListItem>
                    <asp:ListItem>District</asp:ListItem>
                    <asp:ListItem>Loan</asp:ListItem>
                    <asp:ListItem>Postalcode</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 203px">
                &nbsp;</td>
            <td style="width: 206px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 203px">
                <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="201px"></asp:TextBox>
            </td>
            <td style="width: 206px">
                <asp:Button ID="Button1" runat="server" Height="28px" onclick="Button1_Click" 
                    Text="Button" Width="208px" />
            </td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server"><h2>Menu Page</h2></asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td style="width: 203px">
                &nbsp;</td>
            <td style="width: 206px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 203px">
                &nbsp;</td>
            <td style="width: 206px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" 
            EmptyDataText="There are no data records to display.">
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="sectiondata" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            
            SelectCommand="SELECT &quot;EID&quot;, &quot;FNAME&quot;, &quot;GENDER&quot;, &quot;DEPARTMENT&quot;, &quot;PCITY&quot;, &quot;PCOUNTRY&quot;, &quot;MOBILE&quot;, &quot;MAIL&quot;, &quot;SALARY&quot; FROM &quot;EMPLOYEE&quot; WHERE (&quot;SECTION&quot; = :SECTION)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="SECTION" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="salarydata" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            SelectCommand="SELECT &quot;EID&quot;, &quot;FNAME&quot;, &quot;GENDER&quot;, &quot;DEPARTMENT&quot;, &quot;SECTION&quot;, &quot;PCITY&quot;, &quot;PCOUNTRY&quot;, &quot;MOBILE&quot;, &quot;MAIL&quot;, &quot;SALARY&quot; FROM &quot;EMPLOYEE&quot; WHERE (&quot;SALARY&quot; &lt;= :SALARY)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="SALARY" PropertyName="Text" 
                    Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
        <asp:SqlDataSource ID="departmentdata" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            
        SelectCommand="SELECT &quot;EID&quot;, &quot;FNAME&quot;, &quot;GENDER&quot;, &quot;SECTION&quot;, &quot;PCITY&quot;, &quot;PCOUNTRY&quot;, &quot;MOBILE&quot;, &quot;MAIL&quot;, &quot;SALARY&quot; FROM &quot;EMPLOYEE&quot; WHERE (&quot;DEPARTMENT&quot; = :DEPARTMENT)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="DEPARTMENT" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="citydata" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            
        SelectCommand="SELECT &quot;EID&quot;, &quot;FNAME&quot;, &quot;GENDER&quot;, &quot;DEPARTMENT&quot;, &quot;SECTION&quot;, &quot;PCOUNTRY&quot;, &quot;MAIL&quot;, &quot;MOBILE&quot; FROM &quot;EMPLOYEE&quot; WHERE (&quot;PCITY&quot; = :PCITY)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="PCITY" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="postalcode" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
        SelectCommand="SELECT &quot;CID&quot;, &quot;PCODE&quot;, &quot;THANA&quot;, &quot;VILLAGE&quot;, &quot;PADDRESS_HNO&quot;, &quot;PADDRESS_RNO&quot; FROM &quot;PRESENTADDRESS&quot; WHERE (&quot;PCODE&quot; = :PCODE)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="PCODE" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p>
        &nbsp;</p>
    <div>
    
        <asp:SqlDataSource ID="cbalancedata" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            SelectCommand="SELECT &quot;FNAME&quot;, &quot;MNAME&quot;, &quot;LNAME&quot;, &quot;CID&quot;, &quot;SEX&quot;, &quot;PIORITY&quot;, &quot;DESIGNATION&quot;, &quot;RSTATUS&quot;, &quot;PROFESSION&quot;, &quot;IDEPOSIT&quot;, &quot;IRATE&quot; FROM &quot;CUSTOMER&quot; WHERE (&quot;IDEPOSIT&quot; &lt;= :IDEPOSIT)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="IDEPOSIT" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="cthanadata" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            SelectCommand="SELECT &quot;CID&quot;, &quot;VILLAGE&quot;, &quot;THANA&quot; FROM &quot;PRESENTADDRESS&quot; WHERE (&quot;THANA&quot; = :THANA)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="THANA" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="cdistrictdata" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            
            SelectCommand="SELECT &quot;CID&quot;, &quot;DISTRICT&quot; FROM &quot;PRESENTADDRESS&quot; WHERE (&quot;DISTRICT&quot; = :DISTRICT)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="DISTRICT" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="loandata" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            SelectCommand="SELECT &quot;CID&quot;, &quot;LOANNUMBER&quot;, &quot;AMOUNT&quot;, &quot;DATEOFSANCTION&quot;, &quot;DATEOFPAYMENT&quot;, &quot;MORTGAGEAMMOUNT&quot;, &quot;INTERESTRATE&quot;, &quot;MORTGAGEDESCRIPTION&quot;, &quot;LAST_UPDATE&quot;, &quot;LEGALISSUE&quot;, &quot;WARRANTEE&quot; FROM &quot;LOAN&quot; WHERE (&quot;LOANNUMBER&quot; = :LOANNUMBER)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="LOANNUMBER" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
</asp:Content>

