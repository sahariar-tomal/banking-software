<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DaycalculationPage.aspx.cs" Inherits="transaction_statement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
 
    <h2 style="background-color: #F7EF7B">
        Welcome
        <asp:Label ID="Label8" runat="server"></asp:Label>
    </h2>
    <br /><br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <br />
    
 
    <br />
    <asp:Panel ID="Panel1" runat="server" ForeColor="Black">
        <table style="width:100%;">
        <tr>
            <td style="width: 239px">
                <h3>
                    The Transction of</h3>
            </td>
            <td style="width: 188px">
                <h3>
                    &nbsp;&nbsp;
                    <asp:Label ID="CurrentDateLabel" runat="server"></asp:Label>
                </h3>
            </td>
            <td>
                <h3>
                    &nbsp;</h3>
            </td>
        </tr>
    </table>
    <br />
    <h3>
        <asp:Label ID="Label4" runat="server" Text="Deposit History"></asp:Label>
    </h3>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            GridLines="Vertical" style="margin-left: 232px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="USER_ID" HeaderText="USER_ID" 
                SortExpression="USER_ID" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="ACCOUNT_NO" HeaderText="ACCOUNT_NO" 
                SortExpression="ACCOUNT_NO" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="AMOUNT" HeaderText="AMOUNT" 
                SortExpression="AMOUNT" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="DEPOSIT_TIME" HeaderText="DEPOSIT_TIME" 
                SortExpression="DEPOSIT_TIME" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="DEPOSIT_DATE" HeaderText="DEPOSIT_DATE" 
                SortExpression="DEPOSIT_DATE" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
        
        
            
            SelectCommand="SELECT USER_ID, ACCOUNT_NO,AMOUNT,DEPOSIT_TIME,substr(to_char(DEPOSIT_DATE),1,11) as Deposit_Date FROM &quot;MONEY_DEPOSIT&quot; WHERE (&quot;DEPOSIT_DATE&quot; = :DEPOSIT_DATE)">
        <SelectParameters>
            <asp:ControlParameter ControlID="CurrentDateLabel" Name="DEPOSIT_DATE" 
                PropertyName="Text" Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>
        &nbsp;<asp:Label ID="Label6" runat="server" 
            Text="Total deposit of the day is : Tk."></asp:Label>
&nbsp;<asp:Label ID="TotalDepositLabel"  runat="server" BackColor="Yellow" 
            Font-Bold="True" Font-Underline="True"></asp:Label>
    <br />
    <br />
    <br />

    <br />
    <hr />
    <br />
    <h3>
        <asp:Label ID="Label5" runat="server" Text="Withdraw History"></asp:Label>
    </h3>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2" 
        EmptyDataText="There are no data records to display." BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            GridLines="Vertical" style="margin-left: 235px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="USER_ID" HeaderText="USER_ID" 
                SortExpression="USER_ID" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="ACCOUNT_NO" HeaderText="ACCOUNT_NO" 
                SortExpression="ACCOUNT_NO" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="AMOUNT" HeaderText="AMOUNT" 
                SortExpression="AMOUNT" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="WITHDRAW_TIME" HeaderText="WITHDRAW_TIME" 
                SortExpression="WITHDRAW_TIME" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="WITHDRAW_DATE" HeaderText="WITHDRAW_DATE" 
                SortExpression="WITHDRAW_DATE" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
        
            
            SelectCommand="SELECT USER_ID,ACCOUNT_NO,AMOUNT,WITHDRAW_TIME,substr(to_char(WITHDRAW_DATE,'DD-MON-YYYY'),1,11) as Withdraw_Date FROM &quot;MONEY_WITHDRAW&quot; WHERE (&quot;WITHDRAW_DATE&quot; = :WITHDRAW_DATE)">
        <SelectParameters>
            <asp:ControlParameter ControlID="CurrentDateLabel" Name="WITHDRAW_DATE" 
                PropertyName="Text" Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p>
        <asp:Label ID="Label7" runat="server" Text="Total withdraw of the day is"></asp:Label>
        &nbsp;: Tk.
        <asp:Label ID="TotalWithdrawLabel" runat="server" BackColor="Yellow" 
            Font-Bold="True" Font-Underline="True"></asp:Label>
        </p>
    <p>
        &nbsp;</p>
        <p>
            <span style="color: #000000">Total transction of the day is: Tk. </span>
            <asp:Label ID="TotalTransction" runat="server" style="color: #000000" 
                BackColor="Yellow" Font-Bold="True" Font-Underline="True" ForeColor="Black"></asp:Label>
        </p>
    <br />
    
    </asp:Panel>
    
 
    <br />

 
</asp:Content>

