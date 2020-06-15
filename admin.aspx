<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <h1 class="text-white font-weight-bold">Admin Home</h1>
            <div class="custom-breadcrumbs">
              <a href="#">Admin Home</a></div>
          </div>
        </div>
      </div>
    </section>
     <section class="site-section services-section bg-light block__62849" id="next-section">
      <div class="container">
        
        <div class="row">
          <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
            <a href="addcategory.aspx" class="block__16443 text-center d-block">
             <img src="images/category.gif" Height="135px" Width="135px"></asp:Image>
              <h3>Add Category</h3>
             </a>
            </div>

         
           <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
            <a href="addstate.aspx" class="block__16443 text-center d-block">
             <img src="images/state.gif" Height="135px" Width="135px"></asp:Image>
              <h3>Add State</h3>
             </a>
            </div>
          <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
            <a href="addcity.aspx" class="block__16443 text-center d-block">
             <img src="images/city.gif" Height="135px" Width="135px"></asp:Image>
              <h3>Add City</h3>
             </a>
            </div>
            <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
            <a href="addclass.aspx" class="block__16443 text-center d-block">
             <img src="images/class.gif" Height="135px" Width="135px"></asp:Image>
              <h3>Add Classes</h3>
             </a>
            </div>
          <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">

            <a href="activatecompany.aspx" class="block__16443 text-center d-block">
             <img src="images/ar.gif" Height="135px" Width="179px"></asp:Image>
              <h3>Comfirm/Reject Company</h3>
             </a>

          </div>
           <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">

            <a href="viewcompany.aspx" class="block__16443 text-center d-block">
             <img src="images/posting.gif" Height="135px" Width="179px"></asp:Image>
              <h3>Post Job</h3>
             </a>

          </div>
        </div>

        
      </div>
    </section>
</asp:Content>

