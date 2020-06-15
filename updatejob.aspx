<%@ Page Title="" Language="C#" MasterPageFile="~/member.master" AutoEventWireup="true" CodeFile="updatejob.aspx.cs" Inherits="updatejob" %>

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
            <h1 class="text-white font-weight-bold">Edit Job</h1>
            <div class="custom-breadcrumbs">
              <a href="#">Company Panel</a> <span class="mx-2 slash">/</span><span class="text-white"><strong>Edit Job</strong></span></div>
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
                  Job Title
                <asp:TextBox ID="TextBox1" runat="server" class="form-control txt" placeholder="Name"></asp:TextBox>
              </div>
           <div class="form-group">
                  Email for Contact
                <asp:TextBox ID="TextBox2" runat="server" class="form-control txt" placeholder="Email"></asp:TextBox>
              </div>
              <div class="form-group">
                 Phone No for Contact
                <asp:TextBox ID="TextBox3" runat="server" class="form-control txt" placeholder="Phone No"></asp:TextBox>
              </div>
              <div class="form-group">
                Alternative Phone No
                <asp:TextBox ID="TextBox4" runat="server" class="form-control txt" placeholder="ALternative Phone No"></asp:TextBox>
              </div>
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
     
                <div class="form-group">
                 Address
                 <asp:TextBox ID="TextBox6" runat="server" class="form-control txt" placeholder="Locality" TextMode="MultiLine"></asp:TextBox>
              </div>
               <div class="form-group">
                 Choose Job Category
                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control txt" 
                      DataSourceID="SqlDataSource3" DataTextField="name" DataValueField="catid"></asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                      SelectCommand="SELECT [catid], [name] FROM [category]">
                  </asp:SqlDataSource>
              </div>
              <div class="form-group">
                 About Job
                  <br />
                <asp:TextBox ID="TextBox9" runat="server" class="form-control txt" 
                      placeholder="About Job" TextMode="MultiLine" Height="150px"></asp:TextBox>
              </div>
              <div class="form-group">
                 Requirments
                  <br />
                <asp:TextBox ID="TextBox5" runat="server" class="form-control txt" 
                      placeholder="Requirements" TextMode="MultiLine" Height="150px"></asp:TextBox>
              </div>
              <div class="form-group">
                 Expected Salary
                 <asp:TextBox ID="TextBox7" runat="server" class="form-control txt" 
                      placeholder="Expected Salary"></asp:TextBox>
              </div>
              <div class="col-4">
                <asp:Button ID="Button1" runat="server" Text="Post Job Details"  
                      class="btn btn-block btn-primary btn-md" onclick="Button1_Click"></asp:Button>
                  <br />
                  <asp:Label ID="Label1" runat="server"></asp:Label>
              </div>
       
      </div>
    </div>
    </div>
    </section>
</asp:Content>

