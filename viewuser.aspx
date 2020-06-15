<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="viewuser.aspx.cs" Inherits="viewuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <h1 class="text-white font-weight-bold">View Users</h1>
            <div class="custom-breadcrumbs">
              <a href="#">Admin</a> <span class="mx-2 slash">/</span>
              
              <span class="text-white"><strong>View Users</strong></span>
            </div>
          </div>
        </div>
      </div>
    </section>
     <section class="site-section">
      <div class="container">
        <div class="row mb-5 justify-content-center">
          <div class="col-md-12 text-center">
            <h2 class="section-title mb-2">View Users</h2>
          </div>
        </div>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                AutoGenerateColumns="False" DataKeyNames="email" BackColor="White" 
              ForeColor="Black" 
              GridLines="Vertical" Width="1003px" CellPadding="10">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:ImageField DataImageUrlField="pic" DataImageUrlFormatString="uploads/{0}" 
                        HeaderText="Profile Pic">
                        <ControlStyle Height="200px" Width="150px" />
                        <ItemStyle Height="200px" Width="150px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" 
                        ReadOnly="True" />
                    <asp:BoundField DataField="phoneno" HeaderText="phoneno" 
                        SortExpression="phoneno" />
                    <asp:BoundField DataField="about" HeaderText="about" SortExpression="about" />
                    <asp:HyperLinkField DataNavigateUrlFields="email" 
                        DataNavigateUrlFormatString="viewresumead.aspx?uname={0}" 
                        HeaderText="More Details" Text="More Details" />
                    <asp:HyperLinkField DataNavigateUrlFields="email" 
                        DataNavigateUrlFormatString="deleteuser.aspx?email={0}" HeaderText="Delete" 
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
                
                
              SelectCommand="SELECT signup.name, signup.email, personal_details.phoneno, personal_details.pic, personal_details.about FROM signup INNER JOIN personal_details ON signup.email = personal_details.uname WHERE (signup.utype = @utype)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="user" Name="utype" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        
       </div>
    </section>
</asp:Content>

