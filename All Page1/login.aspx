<%@ Page Title="LogIn" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Debug="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <div id="loginContent" style="background-color:#FFFFFF; height: 283px;">
        <br />    
        <table style="width:100%;">
            <tr>
                <td style="width: 168px">
        <asp:Label ID="UnameLabel" runat="server" Text="UserID" 
            style="text-align:center;background-color:Gray;float:left;width:75px;font-family:Arial Black;font-size:large;display:block;cursor:default;"></asp:Label>
                </td>
                <td style="width: 261px">
        <asp:TextBox ID="UnameTbox" runat="server" 
            style="float:left;cursor:text;font-family:Sans-Serif;" 
            Height="25px" Width="251px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 168px">
                    <asp:Label ID="PassLabel" runat="server" Text="Password" style="text-align:center;background-color:Gray;float:left;width:110px;font-family:Arial Black;font-size:large;display:block;margin-top:10px;cursor:default;"></asp:Label>
                </td>
                <td style="width: 261px">
        <asp:TextBox ID="TextBox1" runat="server" Height="25px" 
             style="margin-top: 0px" 
            TextMode="Password" Width="248px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 168px">
                    &nbsp;</td>
                <td style="width: 261px">
        <asp:Button ID="loginbutton" runat="server" Text="Log In" 
            
            style="background-color:Gray;text-align:center;width:110px;font-size:large;display:block" 
            onclick="loginbutton_Click"/>
    
    
    
    
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    
    
    
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    
    
    
        <br />    
        <br />
        <br />
        <br />
        &nbsp;<br />
        <br />
        <br />
    
    
    
    
    </div>
    
    


</asp:Content>

