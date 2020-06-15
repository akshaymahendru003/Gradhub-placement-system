<%@ Page Title="" Language="C#" MasterPageFile="~/member.master" AutoEventWireup="true" CodeFile="Editprofile.aspx.cs" Inherits="Editprofile" %>

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
            <h1 class="text-white font-weight-bold">Company Signup</h1>
            <div class="custom-breadcrumbs">
              <a href="#">Home</a> <span class="mx-2 slash">/</span><span class="text-white"><strong>Company Signup</strong></span></div>
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
                  Company Name
                <asp:TextBox ID="TextBox1" runat="server" class="form-control txt" placeholder="Name" required></asp:TextBox>
              </div>
           <div class="form-group">
                  Company Email
                <asp:TextBox ID="TextBox2" runat="server" class="form-control txt" placeholder="Email" required></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                      ControlToValidate="TextBox2" ErrorMessage="Email is not in correct format" 
                      ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
              </div>
              <div class="form-group">
                 Phone No
                <asp:TextBox ID="TextBox3" runat="server" class="form-control txt" placeholder="Phone No" required></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                      ControlToValidate="TextBox3" ErrorMessage="Phone No is not in correct Format" 
                      ValidationExpression="^((\+){1}91){1}[1-9]{1}[0-9]{9}$"></asp:RegularExpressionValidator>
              </div>
              <div class="form-group">
                Alternative Phone No
                <asp:TextBox ID="TextBox4" runat="server" class="form-control txt" placeholder="ALternative Phone No"></asp:TextBox>
              </div>
               <div class="form-group">
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                       ControlToValidate="TextBox4" ErrorMessage="Phone no is not in correct format" 
                       ValidationExpression="^((\+){1}91){1}[1-9]{1}[0-9]{9}$"></asp:RegularExpressionValidator>
                   <br />
                 Branch Manager Name
                <asp:TextBox ID="TextBox5" runat="server" class="form-control txt" placeholder="Manager Name" required></asp:TextBox>
              </div>
               <div class="form-group">
                Choose State
                <asp:DropDownList ID="DropDownList2" runat="server" class="form-control txt" 
                       DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="stateid"></asp:DropDownList>
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
                 <asp:TextBox ID="TextBox6" runat="server" class="form-control txt" placeholder="Locality" TextMode="MultiLine" required></asp:TextBox>
              </div>
              <div class="form-group">
                 About Company
                  <br />
                <asp:TextBox ID="TextBox9" runat="server" class="form-control txt" 
                      placeholder="Company Description" TextMode="MultiLine" required Height="150px"></asp:TextBox>
              </div>
              <div class="form-group">
                  <asp:Image ID="Image1" runat="server" Height="128px" Width="122px" />
                  <br />
                 Company Logo
                  <br />
                <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
              </div>
              
              <div class="col-4">
                <asp:Button ID="Button1" runat="server" Text="Edit Profile"  
                      class="btn btn-block btn-primary btn-md" onclick="Button1_Click"></asp:Button>
                  <br />
                  <asp:Label ID="Label1" runat="server"></asp:Label>
              </div>
       
      </div>
    
</asp:Content>

