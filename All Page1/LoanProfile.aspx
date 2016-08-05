<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoanProfile.aspx.cs" Inherits="LoanProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

<form>
    <div>
    
        <h1>
            You have confirmed for Loan</h1>
        <table style="width: 100%; height: 71px;">
            <tr>
                <td class="style2">
                    Your loan number:</td>
                <td class="style4" style="width: 240px">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="263px"></asp:TextBox>
                </td>
                <td class="style3">
                </td>
            </tr>
            <tr>
                <td class="style1" style="height: 25px">
                    Your account number:</td>
                <td class="style5" style="height: 25px; width: 240px;">
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="263px"></asp:TextBox>
                </td>
                <td style="height: 25px">
                    </td>
            </tr>
            <tr>
                <td class="style1" style="height: 25px">
                    Amount</td>
                <td class="style5" style="height: 25px; width: 240px;">
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="263px"></asp:TextBox>
                </td>
                <td style="height: 25px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Date of Sanction:</td>
                <td class="style5" style="width: 240px">
                    <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="263px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Date of payment:</td>
                <td class="style5" style="width: 240px">
                    <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="263px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Inerest rate</td>
                <td class="style5" style="width: 240px">
                    <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="263px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Mortgage amount</td>
                <td class="style5" rowspan="3" style="width: 240px">
                    <asp:TextBox ID="TextBox7" runat="server" Height="91px" ReadOnly="True" 
                        TextMode="MultiLine" Width="268px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Mortgage&nbsp; description</td>
                <td class="style5" rowspan="3" style="width: 240px">
                    <asp:TextBox ID="TextBox8" runat="server" Height="95px" ReadOnly="True" 
                        TextMode="MultiLine" Width="266px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Warrenty</td>
                <td class="style5" rowspan="3" style="width: 240px">
                    <asp:TextBox ID="TextBox9" runat="server" Height="89px" ReadOnly="True" 
                        TextMode="MultiLine" Width="268px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Lega issue</td>
                <td class="style5" rowspan="3" style="width: 240px">
                    <asp:TextBox ID="TextBox10" runat="server" Height="92px" ReadOnly="True" 
                        TextMode="MultiLine" Width="268px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style5" style="width: 240px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style5" style="width: 240px">
                <asp:HyperLink ID="HyperLink1" runat="server"><h2>Menu Page</h2></asp:HyperLink>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style5" style="width: 240px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style5" style="width: 240px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    
    </div>
    </form>


</asp:Content>

