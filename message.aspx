<%@ Page Title="" Language="C#" MasterPageFile="~/employee.master" AutoEventWireup="true" CodeFile="message.aspx.cs" Inherits="message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <h1 class="text-white font-weight-bold">View Messages</h1>
            <div class="custom-breadcrumbs">
              <a href="#">Company</a> <span class="mx-2 slash">/</span>
              
              <span class="text-white"><strong>Message</strong></span>
            </div>
          </div>
        </div>
      </div>
    </section>
     <section class="site-section">
      <div class="container">
        <div class="row mb-5 justify-content-center">
          <div class="col-md-12 text-center">
            <h2 class="section-title mb-2">View Messages</h2>
          </div>
        </div>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                AutoGenerateColumns="False" BackColor="White" 
              ForeColor="Black" 
              GridLines="Vertical" Width="900px" CellPadding="10">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Expr1" HeaderText="Company" 
                        SortExpression="Expr1" />
                    <asp:BoundField DataField="title" HeaderText="Job Title" 
                        SortExpression="title" />
                    <asp:BoundField DataField="phoneno" HeaderText="Phoneno" 
                        SortExpression="phoneno" />
                    <asp:BoundField DataField="status" HeaderText="Status" 
                        SortExpression="status" />
                    <asp:BoundField DataField="message" HeaderText="Details" 
                        SortExpression="message" />
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
                
                
              
              SelectCommand="SELECT message.status, message.message, job.title, job.phoneno, company.title AS Expr1, company.logo FROM message INNER JOIN job ON message.jobid = job.jobid INNER JOIN company ON job.addedby = company.username WHERE (message.uname = @uname) ORDER BY message.messageid DESC">
                <SelectParameters>
                    <asp:SessionParameter Name="uname" SessionField="uname" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        
       </div>
    </section>
</asp:Content>

