<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h2 class="section-title mb-2">Companies Member of our Side</h2>
          </div>
          <div class="col-md-12">
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                RepeatColumns="4" RepeatDirection="Horizontal" Width="952px">
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
                SelectCommand="SELECT top 4 [title], [logo],[username] FROM [company] WHERE ([status] = @status)  order by newid() ">
                <SelectParameters>
                    <asp:Parameter DefaultValue="confirm" Name="status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            </div>
        </div>
        </div>
       
    </section>

    <section class="py-5 bg-image overlay-primary fixed overlay" style="background-image: url('images/hero_1.jpg');">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-8">
            <h2 class="text-white">Looking For A Job?</h2>
            </div>
          <div class="col-md-3 ml-auto">
            <a href="signup.aspx" class="btn btn-warning btn-block btn-lg">Sign Up</a>
          </div>
        </div>
      </div>
    </section>
    
</asp:Content>

