<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addadmin.aspx.cs" Inherits="addadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
.txt
{
    width:100% !important;
    height:35px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <h1 class="text-white font-weight-bold">Add Admin</h1>
            <div class="custom-breadcrumbs">
              <a href="#">Admin</a> <span class="mx-2 slash">/</span>
              
              <span class="text-white"><strong>Add Admin</strong></span>
            </div>
          </div>
        </div>
      </div>
    </section>
     
      <div class="container">
        <div class="row">
          <div class="col-lg-12 mb-5">
            
                <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="text-black" for="fname">Name</label>
                  <asp:TextBox ID="TextBox1" runat="server" class="form-control txt" required></asp:TextBox>
                </div>
              </div>
              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="text-black" for="fname">Email</label>
                  <asp:TextBox ID="TextBox2" runat="server" class="form-control txt"  required></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Email is not in correct format" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
              </div>
              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="text-black" for="fname">Password</label>
                  <asp:TextBox ID="TextBox3" runat="server" class="form-control txt" TextMode="Password" required></asp:TextBox>
                </div>
              </div>
              <div class="row form-group mb-4">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="text-black" for="fname">Re-Type Password</label>
                  <asp:TextBox ID="TextBox4" runat="server" class="form-control txt" TextMode="Password" required></asp:TextBox>
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
                        ErrorMessage="Password Mismatch"></asp:CompareValidator>
                    <br />
                    <br />
                 <asp:Button ID="Button1" runat="server" Text="Add Admin" 
                        class="btn px-4 btn-primary text-white" onclick="Button1_Click"></asp:Button>
                    <br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </div>
              </div>

           
          </div>
          

            </form>
          </div>
        </div>
      </div>
    </section>

</asp:Content>

