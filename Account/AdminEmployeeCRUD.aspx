<%@ Page Title="" Language="C#" MasterPageFile="~/Account/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminEmployeeCRUD.aspx.cs" Inherits="Account_AdminEmployeeCRUD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedContent" Runat="Server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server" >
          <div style=" width:100%;">
    
    <div style="float:left; width:20%; ">
    <asp:Button ID="btnMenuView" runat="server" Text="View" Width="100%" OnClick="btnMenuView_Click" CssClass="card" Style="top:0px"/>
    <asp:Button ID="btnMenuAdd" runat="server" Text="Add" Width="100%" OnClick="btnMenuAdd_Click" CssClass="card" Style="top:0px"/>
    <asp:Button ID="btnMenuUpdate" runat="server" Text="Update" Width="100%" OnClick="btnMenuUpdate_Click" CssClass="card" Style="top:0px"/><br />
    <asp:Button ID="btnMenuDelete" runat="server" Text="Delete" Width="100%" OnClick="btnMenuDelete_Click" CssClass="card" Style="top:0px"/><br />
    
           
</div>

    <div style="float:right; width:78%; margin-left:10px;">
        
        <asp:Panel ID="Panel2" runat="server" style=" margin:0px; width:100%;">
            <asp:UpdatePanel ID="UpdatePanel4" runat="server"></asp:UpdatePanel>
                <asp:TextBox ID="txtSearch" runat="server" CssClass="card" ForeColor="#333333"  Width="100%"  placeholder="Search by Name"></asp:TextBox>
            
            <br />



            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateSelectButton="True" AllowPaging="True" AllowSorting="True" BackColor="#0066FF" BorderColor="#0099FF" BorderStyle="Solid" BorderWidth="2px" CssClass="card" EmptyDataText="No Data Found" PageSize="4" Width="100%" CellSpacing="2" RowHeaderColumn="E_Id" DataKeyNames="E_Id" DataSourceID="SqlDataSourceEmployee"> 
                <AlternatingRowStyle BackColor="#3399FF" />
                <Columns>
                    <asp:BoundField DataField="E_Id" HeaderText="Id" ReadOnly="True" SortExpression="E_Id" />
                    <asp:BoundField DataField="E_Name" HeaderText="Name" SortExpression="E_Name" />
                    <asp:BoundField DataField="E_Gender" HeaderText="Gender" SortExpression="E_Gender" />
                    <asp:BoundField DataField="E_Address" HeaderText="Address" SortExpression="E_Address" />
                    <asp:BoundField DataField="E_Contact" HeaderText="Contact" SortExpression="E_Contact" />
                    <asp:BoundField DataField="E_Email" HeaderText="Email" SortExpression="E_Email" />
                    <asp:BoundField DataField="E_DOB" HeaderText="DOB" SortExpression="E_DOB" />
                    <asp:BoundField DataField="E_DOJ" HeaderText="DOJ" SortExpression="E_DOJ" />
                    <asp:BoundField DataField="E_Department" HeaderText="Department" SortExpression="E_Department" />
                </Columns>
                <EditRowStyle BorderStyle="Solid" />

                
                
                <HeaderStyle BackColor="White" />
                
                <PagerSettings FirstPageText="First" LastPageText="Last" NextPageText=">>" PageButtonCount="2" PreviousPageText="<<" Mode="NextPreviousFirstLast" />
                <PagerStyle Height="2px" Font-Bold="True" Wrap="False" VerticalAlign="Middle" HorizontalAlign="Left" ForeColor="White" />
            </asp:GridView>
             <br />
            <asp:SqlDataSource ID="SqlDataSourceEmployee" runat="server" ConnectionString="<%$ ConnectionStrings:Data Source=den1.mssql6.gear.host;Initial Catalog=iechprovisions;User ID=itechprovisions;Password=Nj4s??HN72ko" providerName="System.Data.SqlClient"  %>" SelectCommand="SELECT * FROM [Employee] WHERE ([E_Name] LIKE '%' + @E_Name + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtSearch" DefaultValue=" " Name="E_Name" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            
        </asp:Panel>


       
        
        <asp:UpdatePanel ID="UpdatePanel3" runat="server" EnableViewState="False">
                
                <ContentTemplate  >  
                      
                       <h2> <strong><asp:Label ID="lblTitle" runat="server" Text="Employee Data"></asp:Label></strong>  </h2>
                        
                    
                </ContentTemplate  >

        </asp:UpdatePanel>
        
        <table style="border: thin solid #C0C0C0; width:100%; " aria-autocomplete="list" border="1">
             
                     <tr>  
                        <td style="height: 57px" > <asp:Label ID="lblE_Id" runat="server" Text="Employee ID:"></asp:Label>   </td>  
                        <td style="height: 57px" > <asp:TextBox ID="txtE_Id" runat="server" Height="22px" MaxLength="50" Width="158px" AutoPostBack="True"></asp:TextBox> </td>  
                        <td style="height: 57px" > <asp:Label ID="Label1" runat="server" Text="Full Name:"></asp:Label>    </td>
                        <td style="height: 57px" > <asp:TextBox ID="txtE_Name" runat="server" Height="22px" MaxLength="50" Width="158px" ValidateRequestMode="Enabled" AutoPostBack="True"></asp:TextBox> </td>  
                    </tr>  

                    <tr>  
                        <td><asp:Label ID="Label9" runat="server" Text="Gender :"></asp:Label>   </td>  
                        <td> <asp:TextBox ID="txtE_Gender" runat="server" Height="22px" MaxLength="50" Width="158px" AutoPostBack="True"></asp:TextBox>    </td>  
                        <td><asp:Label ID="Label5" runat="server" Text="Address :"></asp:Label></td>  
                        <td><asp:TextBox ID="txtE_Address" runat="server" Height="22px" MaxLength="50" Width="158px" AutoPostBack="True"></asp:TextBox> </td>  
                    </tr>

                     <tr>  
                        <td ><asp:Label ID="Label2" runat="server" Text="Date of Birth :"></asp:Label> </td>
                        <td ><asp:TextBox ID="txtE_DOB" runat="server" Height="22px" MaxLength="50" Width="158px"></asp:TextBox> </td>  
                        <td><asp:Label ID="Label8" runat="server" Text="Date of Joining :"></asp:Label></td> 
                        <td><asp:TextBox ID="txtE_DOJ" runat="server" Height="22px" MaxLength="50"  Width="158px"></asp:TextBox></td>  
                    </tr> 
                     <tr>  
                        <td ><asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label></td>  
                        <td ><asp:TextBox ID="txtE_Email" runat="server" Height="22px" MaxLength="50" Width="158px"></asp:TextBox></td>  
                        <td><asp:Label ID="Label4" runat="server" Text="Phone No. :"></asp:Label></td>  
                        <td> <asp:TextBox ID="txtE_Contact" runat="server" Height="22px" MaxLength="50" Width="158px"></asp:TextBox></td>  
                    </tr>
            
                    <tr>  
                        <td ><asp:Label ID="Label7" runat="server" Text="Department :"></asp:Label></td>  
                        <td ><asp:TextBox ID="txtE_Department" runat="server" Height="22px" MaxLength="50" Width="158px"></asp:TextBox></td>  
                        <td><asp:Label ID="Label10" runat="server" Text="Salary. :"></asp:Label></td>  
                        <td> <asp:TextBox ID="txtE_Salary" runat="server" Height="22px" MaxLength="50" Width="158px"></asp:TextBox></td>  
                    </tr>

                    <tr>  
                        <td ><asp:Label ID="Label6" runat="server" Text="Password :"></asp:Label></td>  
                        <td ><asp:TextBox ID="txtPassword" TextMode="Password" runat="server" Width="158px"/></td>  
                        <td><asp:Label ID="Label11" runat="server" Text="Confirmed Password :"></asp:Label></td>  
                        <td><asp:TextBox ID="txtPasswordconfirmed" TextMode="Password" runat="server" Width="158px"/></td>  
                    </tr>
            
                       
                     
                </table>
            
        
        
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate  >
                <asp:CheckBox ID="chksavePanel" runat="server" OnCheckedChanged="chksavePanel_CheckedChanged" AutoPostBack="True" Text="Yes,I am ready to make changes in databse." />

            </ContentTemplate  >

        </asp:UpdatePanel>  
        


            <asp:UpdatePanel ID="UpdatePanel1" runat="server" EnableViewState="False">
                <ContentTemplate  >
                <asp:Button ID="btnAdd" runat="server" Text="Add"  style=" width:25%"  Enabled="False" OnClick="btnAdd_Click" CssClass="card"  />
                <asp:Button ID="btnUpdate" runat="server" Text="Update"  style=" width:25%" Enabled="False" OnClick="btnUpdate_Click" CssClass="card"  />
                <asp:Button ID="btnDelete" runat="server" Text="Delete"  style=" width:25%" Enabled="False" OnClick="btnDelete_Click" CssClass="card" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" style=" width:25%" Enabled="False" OnClick="btnCancel_Click" CssClass="card" />
                    <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>

        

</div>
   </div>           
              
               
   
</asp:Content>

