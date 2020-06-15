<%@ Page Title="" Language="C#" MasterPageFile="~/member.master" AutoEventWireup="true" CodeFile="chnagecompass.aspx.cs" Inherits="chnagecompass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
.txt
{
    width:100% !important;
    height:35px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <h1 class="text-white font-weight-bold">Change Password</h1>
            <div class="custom-breadcrumbs">
              <a href="#">Company</a> <span class="mx-2 slash">/</span>
              
              <span class="text-white"><strong>Change Password</strong></span>
            </div>
          </div>
        </div>
      </div>
    </section>
     <section class="site-section">
      <div class="container">
          
        
        <div class="row">
          <div class="col-lg-6">
            <div class="form-group">
                <label for="email">Current Password</label>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control txt" placeholder="Current Password" required TextMode="Password"></asp:TextBox>
              </div>
              <div class="form-group">
                <label for="email">New Password</label>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control txt" placeholder="New Password" required TextMode="Password"></asp:TextBox>
              </div>
              <div class="form-group">
                <label for="email">Confirm Password</label>
                <asp:TextBox ID="TextBox3" runat="server" class="form-control txt" placeholder="Confirm Password" required TextMode="Password"></asp:TextBox>
              </div>
              <div class="col-12">
                <asp:Button ID="Button1" runat="server" Text="Change Password"  
                      class="btn btn-block btn-primary btn-md" onclick="Button1_Click"></asp:Button>
                  <br />
                  <asp:Label ID="Label1" runat="server"></asp:Label>
              </div>
       
      </div>
    </div>
    </div>
    </section>
</asp:Content>


