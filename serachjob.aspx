<%@ Page Title="" Language="C#" MasterPageFile="~/employee.master" AutoEventWireup="true" CodeFile="serachjob.aspx.cs" Inherits="serachjob" %>

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
            <h1 class="text-white font-weight-bold">Search Job</h1>
            <div class="custom-breadcrumbs">
              <a href="#">User</a> <span class="mx-2 slash">/</span>
              
              <span class="text-white"><strong>Search Job</strong></span>
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

              <div class="form-group">
                Choose State
                <asp:DropDownList ID="DropDownList2" runat="server" class="form-control txt" 
                       DataSourceID="SqlDataSource1" DataTextField="name" 
                      DataValueField="stateid" AutoPostBack="True"></asp:DropDownList>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       SelectCommand="SELECT [stateid], [name] FROM [state]"></asp:SqlDataSource>
              </div>
              <div class="form-group">
                 Choose City
                <asp:DropDownList ID="DropDownList3" runat="server" class="form-control txt" 
                      DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="cityid"></asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                      SelectCommand="SELECT [cityid], [name] FROM [city] WHERE ([state] = @state)">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="DropDownList2" Name="state" 
                              PropertyName="SelectedValue" Type="Decimal" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </div>
              <div class="row form-group mb-4">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="text-black" for="fname">Job Title</label>
                 <asp:TextBox ID="TextBox6" runat="server" class="form-control txt"></asp:TextBox>
                </div>
              </div>
              <div class="row form-group mb-4">
              <div class="col-md-12">
                  <asp:Button ID="Button2" runat="server" Text="Serach Job" 
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

