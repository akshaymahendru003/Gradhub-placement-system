<%@ Page Title="" Language="C#" MasterPageFile="~/employee.master" AutoEventWireup="true" CodeFile="personaldetails.aspx.cs" Inherits="personaldetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
.txt
{
    width:100%
    
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <h1 class="text-white font-weight-bold">Add Personal Details</h1>
            <div class="custom-breadcrumbs">
              <a href="#">Home</a> <span class="mx-2 slash">/</span><span class="text-white"><strong>Add Personal Details</strong></span></div>
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
                    Person Name
                <asp:TextBox ID="TextBox1" runat="server" class="form-control txt" placeholder="Name" required></asp:TextBox>
              </div>
           <div class="form-group">
                  Email
                <asp:TextBox ID="TextBox2" runat="server" class="form-control txt" placeholder="Email" required></asp:TextBox>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                      ErrorMessage="Email is not in correct format" ControlToValidate="TextBox2" 
                      ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></div>
              <div class="form-group">
                 Phone No
                <asp:TextBox ID="TextBox3" runat="server" class="form-control txt" placeholder="Phone No" required></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                      ControlToValidate="TextBox3" ErrorMessage="Phone No is not in correct format" 
                      ValidationExpression="\({0,1}((0|\+61)(2|4|3|7|8)){0,1}\){0,1}(\ |-){0,1}[0-9]{2}(\ |-){0,1}[0-9]{2}(\ |-){0,1}[0-9]{1}(\ |-){0,1}[0-9]{3}$"></asp:RegularExpressionValidator>
                      
              </div>
              <div class="form-group">
                Alternative Phone No
                <asp:TextBox ID="TextBox4" runat="server" class="form-control txt" placeholder="ALternative Phone No"></asp:TextBox>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                      ControlToValidate="TextBox4" ErrorMessage="Phone No is not in correct format" 
                      ValidationExpression="^\({0,1}((0|\+61)(2|4|3|7|8)){0,1}\){0,1}(\ |-){0,1}[0-9]{2}(\ |-){0,1}[0-9]{2}(\ |-){0,1}[0-9]{1}(\ |-){0,1}[0-9]{3}$"></asp:RegularExpressionValidator></div>
              
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
                 <asp:TextBox ID="TextBox6" runat="server" class="form-control txt" 
                        placeholder="Locality" TextMode="MultiLine" Height="150px" required></asp:TextBox>
              </div>
              <div class="form-group">
                 About You
                  <br />
                <asp:TextBox ID="TextBox9" runat="server" class="form-control txt" 
                      placeholder="Describe Yourself" TextMode="MultiLine" Height="122px" required></asp:TextBox>
              </div>
              <div class="form-group">
                 Your Job Objective
                  <br />
                <asp:TextBox ID="TextBox5" runat="server" class="form-control txt" 
                      placeholder="Job Objective" TextMode="MultiLine" Height="153px" required></asp:TextBox>
              </div>
              <div class="form-group">
                   <asp:Image ID="Image1" runat="server" Height="140px" Visible="False" 
                       Width="123px" />
                   <br />
                   Profile Pic
                  <br />
                <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
              </div>
              <div class="form-group">
                   <asp:LinkButton ID="LinkButton1" runat="server">Resume</asp:LinkButton>
                   <br />
                   Upload Resume
                  <br />
                <asp:FileUpload ID="FileUpload2" runat="server" required></asp:FileUpload>
              </div>
              <div class="col-4">
                <asp:Button ID="Button1" runat="server" Text="Add"  
                      class="btn btn-block btn-primary btn-md" onclick="Button1_Click"></asp:Button>
                  <br />
                  <asp:Label ID="Label1" runat="server"></asp:Label>
              </div>
       
      </div>
    
             
            </section>
</asp:Content>

