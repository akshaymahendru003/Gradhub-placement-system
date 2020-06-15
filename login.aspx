<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

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
            <h1 class="text-white font-weight-bold">Login</h1>
            <div class="custom-breadcrumbs">
              <a href="#">Home</a> <span class="mx-2 slash">/</span>
              
              <span class="text-white"><strong>Login</strong></span>
            </div>
          </div>
        </div>
      </div>
    </section>
     <section class="site-section">
      <div class="container">
         <section class="site-section" id="next-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            
            <form action="#" class="p-4 border rounded">

              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="text-black" for="fname">User Name</label>
                  <asp:TextBox ID="TextBox5" runat="server" class="form-control txt" required></asp:TextBox>
                </div>
              </div>
              <div class="row form-group mb-4">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="text-black" for="fname">Password</label>
                 <asp:TextBox ID="TextBox6" runat="server" class="form-control txt" TextMode="Password" required></asp:TextBox>
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <asp:Button ID="Button2" runat="server" Text="Login" 
                        class="btn px-4 btn-primary text-white" onclick="Button2_Click"></asp:Button>
                    <br />
                    <asp:Label ID="lb" runat="server"></asp:Label>
                </div>
              </div>
           
          </div>
          

            </form>
          </div>
        </div>
      </div>
    </section>
</asp:Content>

