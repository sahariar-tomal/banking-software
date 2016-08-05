<%@ Page Title="MoneyDeposit" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Accountant_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">


    <div id="container" style="height: 719px">
        <div id="upperContainer" style="height: 105px">
        <br />

                <div style="clear:both; height: 3px;"></div>
        <asp:Button ID="Button1" runat="server" Text="Submit" style="float:right;margin-right:800px;margin-top:15px"/>
        <div style="clear:both;background-color:Gray; height: 3px;"></div>
        
        
        
        

        
        
        
        
        </div>
        <div id="DetaiilsAndEditContainer">


            
            <div id="DeatilsContainer">
                <div id="divofLabels" style="float:left;">
                    <asp:Label ID="Label2" runat="server" Text="Account Number:" style="margin-left:200px;text-align:center;font-weight:bold;"/>
                    <asp:Label runat="server" Text="Demo Name" ID="AccoountNumberLabel" style="padding-left:25px;"/>
                    <div style="clear:both; height: 3px;"></div>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Account owner:" style="margin-left:200px;text-align:center;font-weight:bold;"/>
                    <asp:Label runat="server" Text="....." ID="ownernamelabel" style="padding-left:25px;"/>
                    <div style="clear:both; height: 3px;"></div>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Account Balance:" style="margin-left:200px;text-align:center;font-weight:bold;"/>
                    <asp:Label runat="server" Text="....." ID="Label5" style="padding-left:25px;"/>
                    <div style="clear:both; height: 3px;"></div>
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Account Type:" style="margin-left:200px;text-align:center;font-weight:bold;"/>
                    <asp:Label runat="server" Text="....." ID="Label7" style="padding-left:25px;"/>
                    <div style="clear:both; height: 3px;"></div>
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Employee(optional):" style="margin-left:200px;text-align:center;font-weight:bold;"/>
                    <asp:Label runat="server" Text="....." ID="Label9" style="padding-left:25px;"/>
                    <div style="clear:both; height: 3px;"></div>
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="Account owner:" style="margin-left:200px;text-align:center;font-weight:bold;"/>
                    <asp:Label runat="server" Text="....." ID="Label11" style="padding-left:25px;" />
                    <div style="clear:both; height: 3px;"></div>
                    <br />
                </div>

                <!--Images-->
                <div id="ImageContainer"style="background-color:Gray;float:left;margin-left:300px; width: 272px; height: 257px;">
                    <br />
                    
                
               
                  
                    <img  id="OwnerImage"alt="OwnerImage" src=""  height="100px" width="100px" style="margin-left:80px;"/>
                    <br />
                    <img id="Signature" alt="Signature" src="" height="100px" width="100px" style="margin-left:80px" />
                    <br />
                    <br />
                    <div style="clear:both;"></div>
                               
                </div>
            
            
            </div>
            
<br />
<br />

<br />
<br /><br />
<br /><br />
<br /><br />
<br /><br />
<br /><br />

            <br />
            

            <div id="EditContainer" style="height: 285px;float:left;" >
            <div style="clear:both;"></div>
                
                <div id="MainPartof Transaction" 
                    style="height: 216px;margin-left:400px;margin-top:50px;float:left;">
                    <h3 style="text-align:center;color:Red">Transaction Part is Here</h3>
                    <asp:RadioButtonList id="radiolist1" runat="server" style="margin-left:225px;">
                       <asp:ListItem style="float:left;">Deposit</asp:ListItem>
                       <asp:ListItem>Withdraw</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <asp:Label ID="Label12" Text="Enter Amount:" runat="server" style="margin-left:150px;margin-top:-50px; font-weight:bolder;font-size:20px"/>
                    <asp:TextBox runat="server"  style="margin-left:20px;margin-top:15px;" 
                        Height="28px" ID="TransactionAmount"/>

                    <br />
                    <br />
                    
                    <asp:Button ID="Button2" runat="server" Text="Submit" style="float:right; margin-right:200px;"/>
                    <div style="clear:both;"></div>
                </div>


                <div style="clear:both;">

                    <asp:HyperLink ID="HyperLink1" runat="server"><h2>Home Page</h2></asp:HyperLink>
                
                
                
                </div>
               


                
            
            
            
            
            </div>
        
        
        
        </div>
    
    
    
    
    
    
    </div>
    



    
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
    <p>
    </p>
    
    



</asp:Content>

