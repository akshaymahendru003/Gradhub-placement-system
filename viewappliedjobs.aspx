<%@ Page Title="" Language="C#" MasterPageFile="~/employee.master" AutoEventWireup="true" CodeFile="viewappliedjobs.aspx.cs" Inherits="viewappliedjobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <h1 class="text-white font-weight-bold">View Applied Jobs</h1>
            <div class="custom-breadcrumbs">
              <a href="#">Company</a> <span class="mx-2 slash">/</span>
              
              <span class="text-white"><strong>View Applied Jobs</strong></span>
            </div>
          </div>
        </div>
      </div>
    </section>
     <section class="site-section">
      <div class="container">
        <div class="row mb-5 justify-content-center">
          <div class="col-md-12 text-center">
            <h2 class="section-title mb-2">View Applied Jobs</h2>
          </div>
        </div>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                AutoGenerateColumns="False" BackColor="White" 
              ForeColor="Black" 
              GridLines="Vertical" Width="1164px" CellPadding="10">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="jobid" 
                        DataNavigateUrlFormatString="showjobdetails.aspx?jobid={0}" 
                        DataTextField="title" DataTextFormatString="{0}" HeaderText="Company Name" />
                    <asp:BoundField DataField="Expr2" HeaderText="Company Name" 
                        SortExpression="Expr2" />
                    <asp:BoundField DataField="title" HeaderText="Job Title" 
                        SortExpression="title" />
                    <asp:BoundField DataField="email" HeaderText="Email" 
                        SortExpression="email" />
                    <asp:BoundField DataField="phoneno" HeaderText="Contact No" 
                        SortExpression="phoneno" />
                    <asp:BoundField DataField="apply_date" HeaderText="Applied date" 
                        SortExpression="apply_date" />
                    <asp:BoundField DataField="pubdate" HeaderText="Publish Date" 
                        SortExpression="pubdate" />
                    <asp:BoundField DataField="status" HeaderText="Current Status" 
                        SortExpression="status" />
                    <asp:BoundField DataField="name" HeaderText="State" SortExpression="name" />
                    <asp:BoundField DataField="Expr1" HeaderText="City" SortExpression="Expr1" />
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
                
                
              
              
              
              SelectCommand="SELECT applicant.applyid, applicant.apply_date, job.title, job.email, job.phoneno, job.pubdate, job.status, city.name, state.name AS Expr1, company_1.title AS Expr2, company_1.username, job.jobid FROM company AS company_1 INNER JOIN applicant INNER JOIN job ON applicant.jobid = job.jobid INNER JOIN state ON job.state = state.stateid INNER JOIN city ON job.city = city.cityid ON company_1.username = job.addedby WHERE (applicant.uname = @uname)">
                <SelectParameters>
                    <asp:SessionParameter Name="uname" SessionField="uname" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        
       </div>
    </section>
</asp:Content>


