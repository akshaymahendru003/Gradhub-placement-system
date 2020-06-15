<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="company.aspx.cs" Inherits="company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">
<div class="container">
        <div class="row">
          <div class="col-md-7">
            <h1 class="text-white font-weight-bold">Companies</h1>
            <div class="custom-breadcrumbs">
              <a href="#">User</a> <span class="mx-2 slash">/</span>
              
              <span class="text-white"><strong>Companies</strong></span>
            </div>
          </div>
        </div>
      </div>
    </section>
     <section class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h2 class="section-title mb-2">Companies Member of our Side</h2>
          </div>
          <div class="col-md-12">
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                RepeatColumns="3" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table border="0px" cellpadding="30px">
                    <tr>
                    <td align="center" width="3$%">
                       <asp:ImageButton ID="ImageButton1" runat="server" Height="155px" 
                           Width="170px" ImageUrl='<%# Eval("logo", "uploads/{0}") %>' 
                            PostBackUrl='<%# Eval("username", "viewcompanydetails.aspx?uname={0}") %>' />
                    <br />
                       <asp:LinkButton ID="LinkButton1" runat="server" 
                           Text='<%# Eval("title", "{0}") %>' 
                            PostBackUrl='<%# Eval("username", "viewcompanydetails.aspx?uname={0}") %>'></asp:LinkButton>
                    </td>
                  </tr>
                </table>
             </ItemTemplate>
            </asp:DataList>
            <div class="row">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [title], [logo],[username] FROM [company] WHERE ([status] = @status)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="confirm" Name="status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            </div>
        </div>
        </div>
       
    </section>
</asp:Content>

