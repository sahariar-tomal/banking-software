<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" Debug="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="height: 297px; width: 780px">

    <h2 style="background-color: #F7EF7B">
        Welcome&nbsp;
        <asp:Label ID="Label22" runat="server"></asp:Label>
    </h2>
        <h2 style="background-color: #F7EF7B">
        View Profile of
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Employee</asp:ListItem>
            <asp:ListItem>Customer</asp:ListItem>
            <asp:ListItem>Loan</asp:ListItem>
        </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                        <asp:HyperLink ID="HyperLink1" runat="server">Menu Page</asp:HyperLink>
    </h2>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <h3>
        <asp:Label ID="Label1" runat="server" Text="Enter ID"></asp:Label>
        :<asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="224px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="26px" onclick="Button1_Click" 
            style="margin-right: 3px; margin-top: 0px" Text="View" Width="80px" />
    </h3>
        <p>
            <asp:Label ID="Label21" runat="server"></asp:Label>
    </p>
&nbsp;<h3>
            &nbsp;</h3>
        <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
    <br />

</div>
</asp:Content>

