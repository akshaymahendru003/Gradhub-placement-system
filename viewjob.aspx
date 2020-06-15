<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="viewjob.aspx.cs" Inherits="viewjob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <h1 class="text-white font-weight-bold">All Jobs Posted By Company</h1>
            <div class="custom-breadcrumbs">
              <a href="#">Admin</a> <span class="mx-2 slash">/</span>
              
              <span class="text-white"><strong>Job Posted By Company</strong></span>
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
                AutoGenerateColumns="False" DataKeyNames="jobid" BackColor="White" 
              ForeColor="Black" 
              GridLines="Vertical" Width="1040px" CellPadding="10">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:BoundField DataField="salary" HeaderText="salary" 
                        SortExpression="salary" />
                    <asp:BoundField DataField="requirement" HeaderText="requirement" 
                        SortExpression="requirement" />
                    <asp:BoundField DataField="status" HeaderText="status" 
                        SortExpression="status" />
                    <asp:HyperLinkField DataNavigateUrlFields="jobid" 
                        DataNavigateUrlFormatString="jobdetails.aspx?jobid={0}" 
                        HeaderText="More Details" Text="More Details" />
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
                
                
              SelectCommand="SELECT [jobid], [title], [salary], [requirement], [status] FROM [job] WHERE ([addedby] = @addedby)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="addedby" QueryStringField="companyuname" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        
       </div>
    </section>
</asp:Content>

