<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TransactionForm.aspx.cs" Inherits="TransactionForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">


    
        <asp:Label ID="Label1" runat="server" Text="Enter Account Number" 
                style="text-align:center;background-color:Gray;margin-left:330px; font-family:Arial Black;font-size:large;display:block;cursor:default;" 
                Width="247px"/>
        <h2>
            Welcome
            <asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <br />
        <asp:TextBox  ID="AccountNumberTextBox" runat="server" style="margin-left:352px; width:200px" 
                Height="24px"/>
                <br /><br />

        <asp:RadioButtonList runat="server" ID="radioGroup" style="margin-left: 418px">
            <asp:ListItem Selected="True">Savings Account</asp:ListItem>
            <asp:ListItem>Loan Account</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="Button1" runat="server" Text="Search" 
            style="margin-left: 595px" onclick="Button1_Click" />
        <br /><br />


        <asp:Label ID="StatusLabel" runat="server" Text="StatusLabel"></asp:Label>
        <asp:Panel ID="Panel1" runat="server">
        <table>
            <tr>
                <td style="width: 580px; text-align:center;">
                    Account Number:
                
                </td>
                <td style="width: 278px">
                    <asp:TextBox runat="server" ID="AccountNumber" ReadOnly="true" Width="210px"></asp:TextBox>
                
                </td>
                <td style="width: 588px">
                </td>
            </tr>

            <tr>
                <td style="width: 580px; text-align:center;">
                    Account Owner:
                
                </td>
                <td style="width: 278px">
                    <asp:TextBox runat="server" ID="AccountOwner" ReadOnly="true" Width="207px"></asp:TextBox>
                
                </td>
                <td style="width: 588px">
                </td>
            </tr>

            <tr>
                <td style="width: 580px; text-align:center;">
                   Balance:
                
                </td>
                <td style="width: 278px">
                     <asp:TextBox runat="server" ID="Balance" ReadOnly="true" Width="205px"></asp:TextBox>
                
                </td>
                <td style="width: 588px;text-align:center;">
                </td>
            </tr>

            <tr>
                <td style="width: 580px; text-align:center;">
                   Last Update Date:
                
                </td>
                <td style="width: 278px">
                     <asp:TextBox runat="server" ID="LastUpdateDate" ReadOnly="true" Width="205px"></asp:TextBox>
                
                </td>
                <td style="width: 588px">
                </td>
            </tr>
            <tr>
                <td style="text-align:center; height: 166px;" colspan="2">
                    <asp:Image runat="server" ID="Image1" Height="173px" Width="158px" />

            
                </td>
                    
                <td>
                    <asp:Image runat="server" ID="Image2" Height="77px" Width="273px" />
                    </td>      
            
            </tr>
        </table>



        <asp:Label runat="server" ID="NameTag" Text="Transaction part is here" style="color:Red;font-weight:bolder;font-size:larger;margin-left:350px"></asp:Label>
        <br /><br />
        <asp:RadioButtonList runat="server" ID="DepositOrWithDraw" style="margin-left: 418px">
            <asp:ListItem Selected="True">Deposit</asp:ListItem>
            <asp:ListItem>Withdraw</asp:ListItem>
        </asp:RadioButtonList>
        <br /><br />
        <asp:Label runat="server" ID="Amount" Text="Enter Amount:" style="font-weight:bolder;font-size:larger;margin-left:250px"></asp:Label>
        <asp:TextBox runat="server" ID="AmountIntext" Height="30px" style="margin-left: 19px" Width="151px"></asp:TextBox>
        <asp:Label runat="server" ID="status2"></asp:Label>
        <br />
            <asp:HyperLink ID="HyperLink1" runat="server"><h2>Menu Page</h2></asp:HyperLink>
            <br />

         <asp:Button ID="Button2" runat="server" Text="Submit" style="margin-left: 585px" 
                onclick="Button2_Click"/>



            <br />
            <asp:Label ID="TestLabel" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label ID="TestLabel1" runat="server" Text="Label"></asp:Label>



            <br />
            <br />
            <asp:Label ID="TestLabel2" runat="server" Text="Label"></asp:Label>



        </asp:Panel>


   
</asp:Content>

