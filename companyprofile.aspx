<%@ Page Title="" Language="C#" MasterPageFile="~/member.master" AutoEventWireup="true" CodeFile="companyprofile.aspx.cs" Inherits="companyprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">
    <div class="container">
    <div class="row">
        <div class="col-md-7">
        <h1 class="text-white font-weight-bold">Company Details</h1>
        <div class="custom-breadcrumbs">
            <a href="#">User</a> <span class="mx-2 slash">/</span><span class="text-white"><strong>Company Details</strong></span></div>
        </div>
    </div>
    </div>
</section>
 <section class="site-section">
      <div class="container">
        <div class="row">
         <div class="col-lg-1"></div>
          <div class="col-lg-6">
            <div class="mb-5">
              <figure class="mb-5">
                <asp:Image ID="Image1" runat="server" 
                    class="img-fluid rounded" Height="310px" Width="501px"></asp:Image></figure>
              
              </div>
           </div>
          <div class="col-lg-4">
            <div class="bg-light p-3 border rounded mb-4">
              <h3 class="text-primary  mt-3 h5 pl-3 mb-3 ">Job Description</h3>
              <ul class="list-unstyled pl-3 mb-0">
                <li class="mb-2"><strong class="text-black">Company Title:</strong> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></li>
                <li class="mb-2"><strong class="text-black">Email:</strong> <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></li>
                <li class="mb-2"><strong class="text-black">Phone No:</strong> <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></li>
                <li class="mb-2"><strong class="text-black">Alt Phone No:</strong> <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></li>
                <li class="mb-2"><strong class="text-black">Branch Manager:</strong> <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></li>
                <li class="mb-2"><strong class="text-black">Address:</strong> <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></li>
                
              </ul>
            </div>
            </div>
            <div class="col-lg-1"></div>
        </div>
        <div class="row">
            <div class="col-lg-1"></div>
            <div class="col-lg-10"><h3 class="h5 d-flex align-items-center mb-4 text-primary">
                About Company</h3>
              <p align="justify"><asp:Label ID="Label1" runat="server" Text="Label" class="t"></asp:Label></div></p>
              <div class="col-lg-1"></div>
        </div>
      
      
      </div>
    </section>
</asp:Content>

