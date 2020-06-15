<%@ Page Title="" Language="C#" MasterPageFile="~/member.master" AutoEventWireup="true" CodeFile="viewapplicant.aspx.cs" Inherits="viewapplicant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <h1 class="text-white font-weight-bold">Applicant For Job</h1>
            <div class="custom-breadcrumbs">
              <a href="#">Company</a> <span class="mx-2 slash">/</span>
              
              <span class="text-white"><strong>Applicant For Job</strong></span>
            </div>
          </div>
        </div>
      </div>
    </section>
     <section class="site-section">
      <div class="container">
        <div class="row mb-5 justify-content-center">
          <div class="col-md-12 text-center">
            <h2 class="section-title mb-2">All Jobs</h2>
          </div>
        </div>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                AutoGenerateColumns="False" BackColor="White" 
              ForeColor="Black" 
              GridLines="Vertical" Width="1040px" CellPadding="10">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:ImageField DataImageUrlField="pic" DataImageUrlFormatString="uploads/{0}" 
                        HeaderText="Photo">
                        <ControlStyle Height="150px" Width="150px" />
                        <ItemStyle Height="150px" Width="150px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="phoneno" HeaderText="phoneno" 
                        SortExpression="phoneno" />
                    <asp:BoundField DataField="experience" HeaderText="experience" 
                        SortExpression="experience" />
                    <asp:BoundField DataField="about" HeaderText="about" 
                        SortExpression="about" />
                    <asp:BoundField DataField="apply_date" HeaderText="apply_date" 
                        SortExpression="apply_date" />
                    <asp:HyperLinkField DataNavigateUrlFields="uname,jobid" 
                        DataNavigateUrlFormatString="resumedetails.aspx?uname={0}&amp;jobid={1}" 
                        HeaderText="MoreDetails" Text="MoreDetails" />
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
                
                
              
              SelectCommand="SELECT applicant.apply_date, applicant.applyid, experience.experience, personal_details.name, personal_details.email, personal_details.phoneno, personal_details.about, personal_details.pic, personal_details.resume, applicant.uname, applicant.jobid FROM applicant INNER JOIN experience ON applicant.uname = experience.uname INNER JOIN personal_details ON applicant.uname = personal_details.uname WHERE (applicant.jobid = @jobid)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="jobid" QueryStringField="jobid" 
                        Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        
       </div>
</asp:Content>

