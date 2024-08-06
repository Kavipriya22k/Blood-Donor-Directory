
<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddBloodStock.aspx.cs" Inherits="Admin_AddBloodStock" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8"/>        
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
        <meta name="description" content="Blood Donation - Activism & Campaign HTML5 Template"/>
        <meta name="author" content=""/>
        <link rel="shortcut icon" href="images/favicon.png" />
        
        <!-- The styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="css/animate.css" rel="stylesheet" type="text/css" />
        <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" />
        <link href="css/venobox.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="css/styles.css" />
        <link href="css/gridstyles.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="section-content-block section-faq">
             <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 text-center">
                        <h2 class="section-heading">ADD BLOOD STOCKSS</h2>
                        
                    </div> <!-- end .col-sm-10  -->

                </div> <!--  end .row  -->
                 <br />
                 <br />
                 <br />

                 <div class="row">
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                           <form id="form1" runat="server">

                                   <div class="form-group">
                                   <asp:Label ID="Label1" runat="server" Text="Blood Group"></asp:Label>
                                   </div>

                                  <div class="form-group">                                      
                                            <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" Height="25px" 
                                                style="font-size: medium; color: #0066FF; height: 50px;" Width="220px" >
                                                <asp:ListItem>--Select--</asp:ListItem>
                                                <asp:ListItem>A+</asp:ListItem>
                                                <asp:ListItem>A-</asp:ListItem>
                                                <asp:ListItem>B+</asp:ListItem>
                                                <asp:ListItem>B-</asp:ListItem>
                                                <asp:ListItem>O+</asp:ListItem>
                                                <asp:ListItem>O-</asp:ListItem>
                                                <asp:ListItem>AB+</asp:ListItem>
                                                <asp:ListItem>AB-</asp:ListItem>
                                            </asp:DropDownList>

                                  </div>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"  placeholder="No. of Units(NUMBER Only)" required="required"></asp:TextBox>      
                                  </div>
                                 <div class="form-group">
                                      <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"  placeholder="Gives to Groups" required="required"></asp:TextBox>      
                                  </div>
                                 <div class="form-group">
                                      <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"  placeholder="Received from Groups" required="required" ></asp:TextBox>      
                                  </div>

                                 <div class="form-group">
                                      <asp:Button ID="Button1" runat="server" Text="ADD BLOOD STOCK" CssClass="btn btn-primary" OnClick="Button1_Click1"/>                                   
                                </div>
                            </form>
                       </div>

                     </div>

             </div>
        </section>

 
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>  

