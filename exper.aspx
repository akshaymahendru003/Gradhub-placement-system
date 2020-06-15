<%@ Page Title="" Language="C#" MasterPageFile="~/employee.master" AutoEventWireup="true" CodeFile="exper.aspx.cs" Inherits="exper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style>
.txt
{
    width:100%
    
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <h1 class="text-white font-weight-bold">Add Experence Details</h1>
            <div class="custom-breadcrumbs">
              <a href="#">Home</a> <span class="mx-2 slash">/</span><span class="text-white"><strong>Add Job Details</strong></span></div>
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
                    Company Name<asp:TextBox ID="TextBox1" runat="server" class="form-control txt" placeholder="Name" required></asp:TextBox>
              </div>
           <div class="form-group">
                  Phone No
                  <asp:TextBox ID="TextBox2" runat="server" class="form-control txt" placeholder="Phone No" required></asp:TextBox>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                      ControlToValidate="TextBox2" ErrorMessage="Phone No is not in correct format" 
                      ValidationExpression="^\({0,1}((0|\+61)(2|4|3|7|8)){0,1}\){0,1}(\ |-){0,1}[0-9]{2}(\ |-){0,1}[0-9]{2}(\ |-){0,1}[0-9]{1}(\ |-){0,1}[0-9]{3}$"></asp:RegularExpressionValidator>
              </div>
              
               <div class="form-group">
                Choose State
                <asp:DropDownList ID="DropDownList2" runat="server" class="form-control txt" 
                       DataSourceID="SqlDataSource1" DataTextField="name" 
                       DataValueField="stateid" AutoPostBack="True"></asp:DropDownList>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       SelectCommand="SELECT [stateid], [name] FROM [state]"></asp:SqlDataSource>
              </div>
              <div class="form-group">
                 Choose City
                <asp:DropDownList ID="DropDownList3" runat="server" class="form-control txt" 
                      DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="cityid"></asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                      SelectCommand="SELECT [cityid], [name] FROM [city] WHERE ([state] = @state)">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="DropDownList2" Name="state" 
                              PropertyName="SelectedValue" Type="Decimal" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </div>
                <div class="form-group">
                 Address
                 <asp:TextBox ID="TextBox6" runat="server" class="form-control txt" 
                        placeholder="Locality" TextMode="MultiLine" Height="150px"></asp:TextBox>
              </div>
               <div class="form-group">
                 About Experience
                 <asp:TextBox ID="TextBox3" runat="server" class="form-control txt" 
                        placeholder="About Experience" TextMode="MultiLine" Height="150px" required></asp:TextBox>
              </div>
              <div class="col-4">
                <asp:Button ID="Button1" runat="server" Text="Add"  
                      class="btn btn-block btn-primary btn-md" onclick="Button1_Click"></asp:Button>
                  <br />
                  <asp:Label ID="Label1" runat="server"></asp:Label>
              </div>
       
      </div>
      <div class="col-lg-6">
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
              BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
              CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource3" 
              ForeColor="Black" GridLines="Vertical" Width="548px">
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
              <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
              <asp:BoundField DataField="experience" HeaderText="experience" 
                  SortExpression="experience" />
              <asp:HyperLinkField DataNavigateUrlFields="id" 
                  DataNavigateUrlFormatString="exper.aspx?id={0}" HeaderText="Update" 
                  Text="Update" />
              <asp:HyperLinkField DataNavigateUrlFields="id" 
                  DataNavigateUrlFormatString="deleteexp.aspx?id={0}" HeaderText="Delete" 
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
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT [cname], [id], [phone], [experience] FROM [experience] WHERE ([uname] = @uname)">
              <SelectParameters>
                  <asp:SessionParameter Name="uname" SessionField="uname" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
      </div>
    
             
            </section>
</asp:Content>

