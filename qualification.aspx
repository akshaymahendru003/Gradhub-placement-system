<%@ Page Title="" Language="C#" MasterPageFile="~/employee.master" AutoEventWireup="true" CodeFile="qualification.aspx.cs" Inherits="qualification" %>

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
            <h1 class="text-white font-weight-bold">Add Qualification Details</h1>
            <div class="custom-breadcrumbs">
              <a href="#">Home</a> <span class="mx-2 slash">/</span><span class="text-white"><strong>Add Qualification Details</strong></span></div>
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
                   Choose Class/Degree
                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control txt" 
                       DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id">
                    
                   </asp:DropDownList>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       SelectCommand="SELECT [id], [name] FROM [classes]"></asp:SqlDataSource>
              </div>
           <div class="form-group">
                  Enter Subject or degree Name
                <asp:TextBox ID="TextBox2" runat="server" class="form-control txt" placeholder="Degree Name" required></asp:TextBox>
              </div>
              <div class="form-group">
                 Percentage
                <asp:TextBox ID="TextBox3" runat="server" class="form-control txt" placeholder="Percentage" required></asp:TextBox>
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
              CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" 
              ForeColor="Black" GridLines="Vertical" Width="545px">
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:BoundField DataField="Expr1" HeaderText="Class Name" 
                  SortExpression="Expr1" />
              <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
              <asp:BoundField DataField="percentage" HeaderText="percentage" 
                  SortExpression="percentage" />
              <asp:HyperLinkField DataNavigateUrlFields="id" 
                  DataNavigateUrlFormatString="qualification.aspx?id={0}" HeaderText="Update" 
                  Text="Update" />
              <asp:HyperLinkField DataNavigateUrlFields="id" 
                  DataNavigateUrlFormatString="deletequalification.aspx?id={0}" 
                  HeaderText="Delete" Text="Delete" />
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
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT qualification.classid, qualification.id, qualification.name, qualification.percentage, classes.name AS Expr1 FROM qualification INNER JOIN classes ON qualification.classid = classes.id WHERE (qualification.uname = @uname)">
              <SelectParameters>
                  <asp:SessionParameter Name="uname" SessionField="uname" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
      </div>
      </div>
    
             
            </section>
</asp:Content>

