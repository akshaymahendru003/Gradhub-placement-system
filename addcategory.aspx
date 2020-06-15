<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addcategory.aspx.cs" Inherits="addcategory" %>

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
            <h1 class="text-white font-weight-bold">Add Category</h1>
            <div class="custom-breadcrumbs">
              <a href="#">Admin</a> <span class="mx-2 slash">/</span><span class="text-white"><strong>Add Category</strong></span></div>
          </div>
        </div>
      </div>
    </section>
     <section class="site-section">
      <div class="container">
          <section class="site-section" id="next-section">
              <div class="container">
               

        
        <div class="row mb-5">
       
          <div class="col-lg-4">
          
           

              <div class="form-group">
                  Category Name
                <asp:TextBox ID="TextBox1" runat="server" class="form-control txt" placeholder="Category Name" required></asp:TextBox>
              </div>
              <div class="form-group">
              <asp:Image ID="Image1" runat="server" Height="125px" Visible="False" Width="121px"></asp:Image>
                   <br />
                   Upload image<br />
               <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
              </div>
              <div class="col-12">
                <asp:Button ID="Button1" runat="server" Text="Add/Update Category"  
                      class="btn btn-block btn-primary btn-md" onclick="Button1_Click"></asp:Button>
                     
            
                  <br />
                  <asp:Label ID="Label1" runat="server"></asp:Label>
              </div>
       
      </div>
      <div class="col-lg-1"></div>
      <div class="col-lg-7">
     
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
              DataKeyNames="catid" DataSourceID="SqlDataSource1" Width="650px" 
              BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
              CellPadding="4" ForeColor="Black" GridLines="Vertical">
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:ImageField DataImageUrlField="image" 
                  DataImageUrlFormatString="uploads/{0}" HeaderText="Category Image">
                  <ControlStyle Height="150px" Width="150px" />
                  <ItemStyle Height="150px" Width="150px" />
              </asp:ImageField>
              <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
              <asp:HyperLinkField DataNavigateUrlFields="catid" 
                  DataNavigateUrlFormatString="addcategory.aspx?catid={0}" HeaderText="Update" 
                  Text="Update" />
              <asp:HyperLinkField DataNavigateUrlFields="catid" 
                  DataNavigateUrlFormatString="deletecategory.aspx?catid={0}" HeaderText="Delete" 
                  Text="Delete" />
          </Columns>
          <FooterStyle BackColor="#CCCC99" />
          <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
          <RowStyle BackColor="#F7F7DE" />
          <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#FBFBF2" />
          <SortedAscendingHeaderStyle BackColor="#848384" />
          <SortedDescendingCellStyle BackColor="#EAEAD3" />
          <SortedDescendingHeaderStyle BackColor="#575357" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
      </div>
    
             
            </section>
</asp:Content>

