<%@ Page Title="iTech Provisions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Welcome to Athena.</h2>
            </hgroup>
            <p>
                An Employees-Clientes management Application. <mark>Stay Connect</mark> with Admin for any critical Query. If you have any questions about Athena visit 
                <a href="http://Default.aspx" title="ASP.NET Forum">FAQ</a>
            </p>
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
         <li class="one">
            <h5>Getting Started</h5>
            Athena lets your attendence, leave applications, information updation at your Desk.
            <a href="http://Default.aspx">Learn more…</a>
        </li>
        <li class="two">
            <h5>New Employee</h5>
            Change your pasword first after login.Complete your profile.
            <a href="http://Default.aspx">Learn more…</a>
        </li>
        <li class="three">
            <h5>Update Profile</h5>
            Update your profile time to time.
            <a href="http://Default.aspx">Learn more…</a>
        </li>
    </ol>
    <br />
</asp:Content>