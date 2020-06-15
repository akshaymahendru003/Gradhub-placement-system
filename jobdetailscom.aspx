﻿<%@ Page Title="" Language="C#" MasterPageFile="~/member.master" AutoEventWireup="true" CodeFile="jobdetailscom.aspx.cs" Inherits="jobdetailscom" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">
    <div class="container">
    <div class="row">
        <div class="col-md-7">
        <h1 class="text-white font-weight-bold">Company Details</h1>
        <div class="custom-breadcrumbs">
            <a href="#">Admin</a> <span class="mx-2 slash">/</span><span class="text-white"><strong>Company Details</strong></span></div>
        </div>
    </div>
    </div>
</section>
 <section class="site-section">
      <div class="container">
        <div class="row">
     
          <div class="col-lg-8">
            <div class="mb-5">
              <figure class="mb-5">
              <h1 class="hd"><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></h1>
              <h4>Job Description</h4>
                <p align="justify><asp:Label ID="Label10" runat="server" Text="Label"  class="t"></asp:Label></p>
                </figure>
              
              </div>
           </div>
          <div class="col-lg-4">
               <div class="row">
                    <div class="col-lg-12">
                        <div class="bg-light p-3 border rounded mb-4">
                          <h3 class="text-primary  mt-3 h5 pl-3 mb-3 ">Contact Details</h3>
                          <ul class="list-unstyled pl-3 mb-0">
                            <li class="mb-2"><strong class="text-black">Email:</strong> <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></li>
                            <li class="mb-2"><strong class="text-black">Phone No:</strong> <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></li>
                            <li class="mb-2"><strong class="text-black">Alt Phone No:</strong> <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></li>
                            <li class="mb-2"><strong class="text-black">Address:</strong> <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></li>
                          </ul>
                        </div>
                    </div>
               </div>
               <div class="row">
                    <div class="col-lg-12">
                        <div class="bg-light p-3 border rounded mb-4">
                          <h3 class="text-primary  mt-3 h5 pl-3 mb-3 ">Job Details</h3>
                          <ul class="list-unstyled pl-3 mb-0">
                            <li class="mb-2"><strong class="text-black">Job Type:</strong> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></li>
                            <li class="mb-2"><strong class="text-black">Publish Date:</strong> <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></li>
                            <li class="mb-2"><strong class="text-black">Salary:</strong> <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></li>
                            <li class="mb-2"><strong class="text-black">Current Job Status:</strong> <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></li>
                           </ul>
                        </div>
                    </div>
               </div>
          </div>
            
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h4>Job Requirements</h4>
                <p align="justify><asp:Label ID="Label1" runat="server" Text="Label"  class="t"></asp:Label></p>
            </div>
        </div>
         <div class="row">
      <div class="col-lg-3"></div>
        <div class="col-3">
           <asp:Button ID="Button1" runat="server" Text="Open Advertisement" 
                class="btn btn-block btn-primary btn-md" onclick="Button1_Click"></asp:Button>
        </div>
        <div class="col-3">
            <asp:Button ID="Button3" runat="server" Text="Close Advertisement" 
                class="btn btn-block btn-primary btn-md" onclick="Button3_Click" ></asp:Button>
          </div>
        <div class="col-3">
           
        </div>
         <div class="col-1"></div>
      </div>
        <asp:Label ID="Label11" runat="server"></asp:Label>
      </div>
    </section>
</asp:Content>

