<%@ Page Title="" Language="C#" MasterPageFile="~/employee.master" AutoEventWireup="true" CodeFile="userhome.aspx.cs" Inherits="userhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <h1 class="text-white font-weight-bold">User Home</h1>
            <div class="custom-breadcrumbs">
              <a href="#">User Home</a></div>
          </div>
        </div>
      </div>
    </section>
     <section class="site-section services-section bg-light block__62849" id="next-section">
      <div class="container">
        <div class="row">
          <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
            <a href="qualification.aspx" class="block__16443 text-center d-block">
             <img src="images/course.gif" Height="135px" Width="179px"></asp:Image>
              <h3>Add Qualification Details</h3>
             </a>
           </div>
          <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">

            <a href="exper.aspx" class="block__16443 text-center d-block">
             <img src="images/job.gif" Height="135px" Width="179px"></asp:Image>
              <h3>Add Experiance Details</h3>
             </a>

          </div>
           <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">

            <a href="personaldetails.aspx" class="block__16443 text-center d-block">
             <img src="images/pdetails.gif" Height="135px" Width="179px"></asp:Image>
              <h3>Add Personal Details</h3>
             </a>

          </div>
        </div>

        
      </div>
    </section>
</asp:Content>

