<%@ Page Title="" Language="C#" MasterPageFile="~/employee.master" AutoEventWireup="true" CodeFile="searchjobdetails.aspx.cs" Inherits="searchjobdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <h1 class="text-white font-weight-bold">Serach Job</h1>
            <div class="custom-breadcrumbs">
              <a href="#">User</a> <span class="mx-2 slash">/</span>
              
              <span class="text-white"><strong>Search Job</strong></span>
            </div>
          </div>
        </div>
      </div>
    </section>
     <section class="site-section">
      <div class="container">
          <asp:DataList ID="DataList1" runat="server" DataKeyField="jobid" 
              DataSourceID="SqlDataSource1" RepeatColumns="2" Width="1000px">
              <ItemTemplate>
                  <h3>
                      <asp:LinkButton ID="LinkButton1" runat="server" 
                          PostBackUrl='<%# Eval("jobid", "showjobdetails.aspx?jobid={0}") %>' 
                          Text='<%# Eval("title", "{0}") %>'></asp:LinkButton>
                  </h3>
                  Branch Location:
                  <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />,
                  <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />,<asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                  <br />
                  salary:
                  <asp:Label ID="salaryLabel" runat="server" Text='<%# Eval("salary") %>' />
                  <br />
                    Publish on
                  <asp:Label ID="pubdateLabel" runat="server" Text='<%# Eval("pubdate") %>' />
                  <br />
                  <hr />
              </ItemTemplate>
          </asp:DataList>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              
              SelectCommand="SELECT jobid, title, address, state, city, salary, pubdate FROM job WHERE (status = @status) AND (state = @state) AND (city = @city) AND (title LIKE '%'+@title+'%')">
              <SelectParameters>
                  <asp:Parameter DefaultValue="available" Name="status" Type="String" />
                  <asp:QueryStringParameter Name="state" QueryStringField="state" 
                      Type="Decimal" />
                  <asp:QueryStringParameter Name="city" QueryStringField="city" Type="Decimal" />
                  <asp:QueryStringParameter Name="title" QueryStringField="title" Type="String" 
                      DefaultValue=" " />
              </SelectParameters>
          </asp:SqlDataSource>
      </div>
    </section>
</asp:Content>

