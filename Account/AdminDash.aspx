<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Account/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminDash.aspx.cs" Inherits="Account_AdminDash" %>

<%-- Add content controls here --%>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

<table width="100%" border="0" cellspacing="20" cellpadding="20">
  <tr>
    <td style="width: 268px" > <div class="card">
  

  <div class="container"  style="background-color:#673AB7;">

      
      <asp:Label ID="Label2" runat="server" Text="Projects Pending :"  ></asp:Label><br />
      <asp:Label ID="Label11" runat="server" Text="Projects Completed : "></asp:Label>
      

      <br /><br />
      <img src="../Images/Git-Icon-White.png" alt="Project" style="width:7em; height: 7em;"> 
      <h2 style="color:white" align="right"><b>Projects </b></h2>
  </div>

     <div class="container" >
    <h4 ><b><a href="url" style="color:#673AB7">View Details >></a></b></h4>
  </div>
</div> </td>
    <td style=" width: 268px" > <div class="card">
  
  <div class="container"  style="background-color:#8BC34A;">
      <asp:Label ID="Label3" runat="server" Text="Today's Total Leaves :"></asp:Label><br />
      <asp:Label ID="Label12" runat="server" Text="Pending Leaves :"></asp:Label>
      <br /><br />
      <img src="../Images/Business-Leave-Icon.png" alt="Project" style="width:7em; height: 7em;">
      <h2 style="color:white" align="right"><b >Leave Applied</b></h2>
  </div>

     <div class="container" >
    <h4 ><b><a href="url" style="color:#8BC34A">View Details >></a></b></h4>
  </div>
</div> </td>
    <td style="" > <div class="card">
  
  <div class="container" style="background-color:#f44336;">
      <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label><br />
      <br />

      <img src="/Images/sallary.png" alt="sallary" style="width:7em; height: 7em;"> 
      <h2 style="color:white" align="right"><b >Current Salary Details</b></h2>

      
  </div>

     <div class="container" >
    <h4 ><b><a href="url" style="color:#f44336" align="right">View Details >></a></b></h4>
  </div>
</div> </td>
    
  </tr>
   
  <tr>
    <td style="width: 268px"><div class="card">
  
  <div class="container" style="background-color:#2196F3;">
      <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label><br /><br />
      <img src="/Images/loan.png" alt="Project" style="width:7em; height: 7em;"><br />
      <h2 style="color:white" align="right"><b >Loan Applications</b></h2>
  </div>

     <div class="container" >
    <h4 ><b><a href="url" style="color:#2196F3" align="right">View Details >></a></b></h4>
  </div>
</div></td>

    <td style="width: 268px"><div class="card">
  
  <div class="container"  style="background-color:#3F51B5;">
      <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label><br /><br />
      <img src="/Images/appointment.png" alt="Project" style="width:7em; height: 7em;"><br />
      <h2 style="color:white" align="right">Client Appointments</h2>
  </div>

     <div class="container" >
    <h4 ><b><a href="url" style="color:#3F51B5" align="right">View Details >></a></b></h4>
  </div>
</div></td>

    <td><div class="card">
  
  <div class="container"  style="background-color:#4CAF50;">
      <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label><br /><br />
      <img src="/Images/birthday.png" alt="Project" style="width:7em; height: 7em;"><br />
      <h2 style="color:white" align="right"><b >Birthdays</b></h2>
  </div>

     <div class="container" >
    <h4 ><b><a href="url" style="color:#4CAF50">View Details >></a></b></h4>
  </div>
</div></td>
    
  </tr>
    
  
</table>
 <table width="100%" border="0" cellspacing="20" cellpadding="20">
    <tr><td style="width: 50%"><div class="card">
  
  <div class="container" align="right" style="background-color:#cd201f;">
      <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
      <h2 style="color:white" align="right" align="right"><b >Pending Request</b></h2>
  </div>

     <div class="container" >
    <h4 ><b><a href="url" style="color:#cd201f" align="right">View Details >></a></b></h4>
  </div>
</div></td>

    <td style="width: 50%"><div class="card">
  
  <div class="container" align="right" style="background-color:#007ee5 ;">
      <asp:Label ID="Label14" runat="server" Text="Label" ></asp:Label>
      
      <h2 style="color:white" align="right"><b >Task Status</b></h2>
  </div>

     <div class="container" >
    <h4 ><b><a href="url" style="color:#007ee5" align="right">View Details >></a></b></h4>
  </div>
</div></td></tr>
</table>






 <div class="card">
  
  <div class="container" style="background-color:#673AB7;">
      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
      <h2 style="color:white" align="right"><b >test</b></h2>
  </div>

     <div class="container" >
    <h4 ><b><a href="url" style="color:#673AB7" align="right">View Details >></a></b></h4>
  </div>
</div> 

</asp:Content>

