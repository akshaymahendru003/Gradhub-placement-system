<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addclass.aspx.cs" Inherits="addclass" %>

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
            <h1 class="text-white font-weight-bold">Add Classes</h1>
            <div class="custom-breadcrumbs">
              <a href="#">Admin</a> <span class="mx-2 slash">/</span>
              
              <span class="text-white"><strong>Add Classes</strong></span>
            </div>
          </div>
        </div>
      </div>
    </section>
     <section class="site-section">
      <div class="container">
          <section class="site-section" id="next-section">
              <div class="container">
               

        
        <div class="row mb-5">
          <div class="col-lg-6">
            
              <div class="form-group">
                <label for="email">Class</label>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control txt" placeholder="Class Name"></asp:TextBox>
              </div>
              <div class="col-4">
                <asp:Button ID="Button1" runat="server" Text="Add class"  
                      class="btn btn-block btn-primary btn-md" onclick="Button1_Click"></asp:Button>
                 
                 
              </div>
               <asp:Label ID="Label1" runat="server"></asp:Label>
       
      </div>
      <div class="col-lg-6"><asp:GridView ID="GridView1" runat="server" 
              AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" 
              BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" 
              DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
              Width="375px">
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
              <asp:HyperLinkField DataNavigateUrlFields="id" 
                  DataNavigateUrlFormatString="addclass.aspx?cid={0}" HeaderText="Update" 
                  Text="Update" />
              <asp:HyperLinkField DataNavigateUrlFields="id" 
                  DataNavigateUrlFormatString="delclass.aspx?cid={0}" HeaderText="Delete" 
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
              SelectCommand="SELECT * FROM [classes]"></asp:SqlDataSource>
            </div>
      </div>
    
             
            </section>
</asp:Content>

