<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addsubcategory.aspx.cs" Inherits="addsubcategory" %>

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
            <h1 class="text-white font-weight-bold">Add Subcategory</h1>
            <div class="custom-breadcrumbs">
              <a href="#">Admin</a> <span class="mx-2 slash">/</span><span class="text-white"><strong>Add Subcategory</strong></span></div>
          </div>
        </div>
      </div>
    </section>
     <section class="site-section">
      <div class="container">
          <section class="site-section" id="next-section">
              <div class="container">
               

        
        <div class="row mb-5">
          <div class="col-lg-12">
          
           
            <div class="form-group">
                  Choose Category<br />
               <asp:DropDownList ID="DropDownList1" runat="server" class="form-control txt" 
                      DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="catid"></asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                      SelectCommand="SELECT [catid], [name] FROM [category]"></asp:SqlDataSource>
              </div>
              <div class="form-group">
                  Subcategory Name
                <asp:TextBox ID="TextBox1" runat="server" class="form-control txt" placeholder="Subategory Name"></asp:TextBox>
              </div>
              <div class="form-group">
                   Upload image<br />
               <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
              </div>
              <div class="col-4">
                <asp:Button ID="Button1" runat="server" Text="Add Subcategory"  
                      class="btn btn-block btn-primary btn-md" onclick="Button1_Click"></asp:Button>
                  <br />
                  <asp:Label ID="Label1" runat="server"></asp:Label>
              </div>
       
      </div>
    
             
            </section>
</asp:Content>

