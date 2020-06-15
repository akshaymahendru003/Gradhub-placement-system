<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

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
            <h1 class="text-white font-weight-bold">Contact Us</h1>
            <div class="custom-breadcrumbs">
              <a href="#">Home</a> <span class="mx-2 slash">/</span>
              
              <span class="text-white"><strong>Contact Us</strong></span>
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
                  <div class="col-lg-6 mb-5 mb-lg-0">
                   

                      <div class="row form-group">
                        <div class="col-md-6 mb-3 mb-md-0">
                          <label class="text-black" for="fname">First Name</label>
                          <asp:TextBox ID="TextBox1" class="form-control txt"  runat="server" required></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                          <label class="text-black" for="lname">Last Name</label>
                          <asp:TextBox ID="TextBox2" runat="server" class="form-control txt"></asp:TextBox>
                        </div>
                      </div>

                      <div class="row form-group">
                
                        <div class="col-md-12">
                          <label class="text-black" for="email">Email</label> 
                          <asp:TextBox ID="TextBox3" runat="server" class="form-control txt" required></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ErrorMessage="Email is not valid" ControlToValidate="TextBox3" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                      </div>

                      <div class="row form-group">
                
                        <div class="col-md-12">
                          <label class="text-black" for="subject">Subject</label> 
                          <asp:TextBox ID="TextBox4" runat="server" class="form-control txt" required></asp:TextBox>
                        </div>
                      </div>

                      <div class="row form-group">
                        <div class="col-md-12">
                          <label class="text-black" for="message">Message</label> 
                          <asp:TextBox ID="TextBox5" runat="server" class="form-control txt" Height="212px" 
                                TextMode="MultiLine" Width="539px" required></asp:TextBox>
                          </div>
                      </div>

                      <div class="row form-group">
                        <div class="col-md-12">
                            <asp:Button ID="Button1" runat="server" Text="Contact Us" 
                                class="btn btn-primary btn-md text-white" onclick="Button1_Click"></asp:Button>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </div>
                      </div>

  
                    
                  </div>
                  <div class="col-lg-5 ml-auto">
                    <div class="p-4 mb-3 bg-white">
                      <p class="mb-0 font-weight-bold">Address</p>
                      <p class="mb-4">203 Fake St. Mountain View, San Francisco, California, USA</p>

                      <p class="mb-0 font-weight-bold">Phone</p>
                      <p class="mb-4"><a href="#">+1 232 3235 324</a></p>

                      <p class="mb-0 font-weight-bold">Email Address</p>
                      <p class="mb-0"><a href="#">youremail@domain.com</a></p>

                    </div>
                  </div>
                </div>
              </div>
            </section>

    
</asp:Content>

