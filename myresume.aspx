<%@ Page Title="" Language="C#" MasterPageFile="~/employee.master" AutoEventWireup="true" CodeFile="myresume.aspx.cs" Inherits="myresume" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">
    <div class="container">
    <div class="row">
        <div class="col-md-7">
        <h1 class="text-white font-weight-bold">My Resume</h1>
        <div class="custom-breadcrumbs">
            <a href="#">User</a> <span class="mx-2 slash">/</span><span class="text-white"><strong>My Resume</strong></span></div>
        </div>
    </div>
    </div>
</section>
 <section class="site-section">
      <div class="container">
        <div class="row">
         <div class="col-lg-1"></div>
          <div class="col-lg-2">
           <figure class="mb-5">
                <asp:Image ID="Image1" runat="server" 
                    class="img-fluid rounded" Height="150px" Width="150px" BorderStyle="Double" BorderWidth="1px"></asp:Image>
             </figure>
              </div>
            <div class="col-lg-8"><h3 class="h5 d-flex align-items-center mb-4 text-primary">About</h3>
                
              <p align="justify"><asp:Label ID="Label1" runat="server" Text="Label" class="t"></asp:Label></p>
            
           </div>
            <div class="col-lg-1"></div>
        </div>
        <div class="row">
            <div class="col-lg-1"></div>
            <div class="col-lg-4"><div class="bg-light p-3 border rounded mb-4">
              <h3 class="text-primary  mt-3 h5 pl-3 mb-3 ">Personal Details</h3>
              <ul class="list-unstyled pl-3 mb-0">
                <li class="mb-2"><strong>Name</strong><strong class="text-black">:</strong> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></li>
                <li class="mb-2"><strong class="text-black">Email:</strong> <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></li>
                <li class="mb-2"><strong class="text-black">Phone No:</strong> <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></li>
                <li class="mb-2"><strong class="text-black">Alt Phone No:</strong> <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></li>
               <li class="mb-2"><strong class="text-black">Address:</strong> <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></li>
                
              </ul>
            </div>
            </div>
            <div class="col-lg-6"><div class="bg-light p-3 border rounded mb-4">
              <h3 class="text-primary  mt-3 h5 pl-3 mb-3 ">Educational&nbsp; Details</h3>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" 
                    GridLines="Vertical" Width="496px">
                  <AlternatingRowStyle BackColor="White" />
                  <Columns>
                      <asp:BoundField DataField="Expr1" HeaderText="Class/Degree" 
                          SortExpression="Expr1" />
                      <asp:BoundField DataField="name" HeaderText="Degree Name" 
                          SortExpression="name" />
                      <asp:BoundField DataField="percentage" HeaderText="Percentage" 
                          SortExpression="percentage" />
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
                    SelectCommand="SELECT qualification.name, qualification.percentage, classes.name AS Expr1 FROM qualification INNER JOIN 
                    classes ON qualification.classid = classes.id  WHERE ([uname] = @uname)">
                    <SelectParameters>
                        <asp:SessionParameter Name="uname" SessionField="uname" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            </div>
              <div class="col-lg-1"></div>
        </div>
        <div class="row">
           <div class="col-lg-1"></div>
           <div class="col-lg-4">
            <div class="bg-light p-3 border rounded mb-4">
                <h3 class="text-primary  mt-3 h5 pl-3 mb-3 ">My Objective</h3>
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </div>
           </div>
           <div class="col-lg-6">
            <div class="bg-light p-3 border rounded mb-4">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" 
                    ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="cname" HeaderText="Company Name" 
                            SortExpression="cname" />
                        <asp:BoundField DataField="phone" HeaderText="Phone No" 
                            SortExpression="phone" />
                        <asp:BoundField DataField="address" HeaderText="Address" 
                            SortExpression="address" />
                        <asp:BoundField DataField="experience" HeaderText="Experience" 
                            SortExpression="experience" />
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
                    SelectCommand="SELECT * FROM [experience] WHERE ([uname] = @uname)">
                    <SelectParameters>
                        <asp:SessionParameter Name="uname" SessionField="uname" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
           </div>
           
           <div class="col-lg-1"></div>
        </div>
     
    </section>
</asp:Content>

