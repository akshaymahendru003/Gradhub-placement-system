<%@ Page Title="" Language="C#" MasterPageFile="~/member.master" AutoEventWireup="true" CodeFile="companyhome.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <h1 class="text-white font-weight-bold">Company Home</h1>
            <div class="custom-breadcrumbs">
              <a href="#">Company Home</a></div>
          </div>
        </div>
      </div>
    </section>
     <section class="site-section services-section bg-light block__62849" id="next-section">
      <div class="container">
        
        <div class="row">
          <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">

            <a href="addjob.aspx" class="block__16443 text-center d-block">
             <img src="images/postingjob.gif"  Height="135px" Width="179px"></asp:Image>
              <h3>Post Job</h3>
             </a>
            </div>
          
           <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">

            <a href="viewjobs.aspx" class="block__16443 text-center d-block">
             <img src="images/viewjob.gif" Height="135px" Width="179px"></asp:Image>
              <h3>View Job</h3>
             </a>

          </div>
           <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">

            <a href="Editprofile.aspx" class="block__16443 text-center d-block">
             <img src="images/editdoc.gif" Height="135px" Width="179px"></asp:Image>
              <h3>Edit Profile</h3>
             </a>

          </div>

        
      </div>
    </section>
</asp:Content>

