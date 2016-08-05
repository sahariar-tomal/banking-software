<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Afterlogin.aspx.cs" Inherits="Afterlogin" Debug=true %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="390px" Width="157px">
        <h2 style="background-color: #F7EF7B">
            Welcome&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </h2>
        <br />
        <br />
        <br />
        <asp:Button ID="ViewProfileButton" runat="server" Text="View Profile" Height="36px" 
            Width="158px"  OnClick="ViewProfileButton_Click"/>
        <br />
        <asp:Button ID="CreateAccountButton" runat="server" Height="36px" Text="Create Account" 
            Width="158px" onclick="CreateAccountButton_Click" />
        <br />
        <asp:Button ID="CreateEmployeeButton" runat="server" Height="36px" 
            Text="Create Employee" Width="158px" 
            onclick="CreateEmployeeButton_Click" />
        <br />
        <asp:Button ID="CreateLoanButtton" runat="server" Height="36px" Text="Create Loan" 
            Width="158px" onclick="CreateLoanButtton_Click"/>
        <br />
        <asp:Button ID="TransactionButton" runat="server" Height="38px" Text="Transaction" 
            Width="158px" onclick="TransactionButton_Click" />
        <br />
        <asp:Button ID="View" runat="server" Height="36px" OnClick="View_Click" 
            Text="View " Width="158px" />
        <br />
        <asp:Button ID="AccountStatement" runat="server" Height="36px" 
            onclick="Account_Statement" Text="Account Statement" Width="158px" />
        <asp:Button ID="DayStatement" runat="server" Height="36px" 
            onclick="DayStatement_Click" Text="Day Statement" Width="158px" />
        <br />
        <asp:Button ID="CreateLoanButtton2" runat="server" Height="36px" 
            onclick="search" Text="Search" Width="158px" />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="67px" Width="705px">
    </asp:Panel>
</asp:Content>

