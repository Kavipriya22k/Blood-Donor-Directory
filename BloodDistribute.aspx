<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="BloodDistribute.aspx.cs" Inherits="Admin_BloodDistribute" %>



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
    <link href="css/newgridstyles.css" rel="stylesheet" />
       <style type="text/css">
          .searchdiv .btn3d {
  padding: 15px 25px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #04AA6D;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.searchdiv .btn3d:hover {background-color: #3e8e41}

.searchdiv .btn3d:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
    </style>

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!--  SECTION FAQ -->

        <section class="section-content-block section-faq">
             <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 text-center">
                        <h2 class="section-heading">BLOOD DISTRIBUTE TO PATIENT</h2>
                    </div> <!-- end .col-sm-10  -->

                </div> <!--  end .row  -->
                 <br />
                 <br />
                 <br />
                  <div class="row">
                    <div class="col-md-12 col-sm-12 text-center">                       
                   </div> <!-- end .col-sm-10  -->

                </div> 


                 <div class="row">
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
                           <form id="form1" runat="server">

                               <div class="searchdiv" style="margin-bottom:50px;">
                                      <asp:TextBox ID="txtPatientName" runat="server" placeholder="Enter Patient Name" ></asp:TextBox> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnSearch" CssClass="btn3d" runat="server" Text="Search" OnClick="btnSearch_Click" />
               
                               </div>
                               <div>
                                   <asp:GridView ID="datagrid" runat="server"  AutoGenerateColumns="False" OnRowCommand="get_patientinformation">
                   <FooterStyle CssClass="GridViewFooterStyle" />
    <RowStyle CssClass="GridViewRowStyle" />
    <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
    <PagerStyle CssClass="GridViewPagerStyle" />
    <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
    <HeaderStyle CssClass="GridViewHeaderStyle" />

            <Columns>
           <asp:CommandField ShowSelectButton="True" SelectText="Select" />
              

                  <asp:TemplateField HeaderText="Patient ID">
                   <ItemTemplate>
                       <asp:Label ID="lblpatientid" runat="server" Text='<%# Eval("patientid") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
               </asp:TemplateField>

                 <asp:TemplateField HeaderText="First Name">
                   <ItemTemplate>
                       <asp:Label ID="lblfirstname" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
               </asp:TemplateField>

                  <asp:TemplateField HeaderText="Last Name">
                   <ItemTemplate>
                       <asp:Label ID="lbllastname" runat="server" Text='<%# Eval("lname") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
               </asp:TemplateField>


                 <asp:TemplateField HeaderText="DOB">
                   <ItemTemplate>
                       <asp:Label ID="Label4" runat="server" Text='<%# Eval("dob") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
               </asp:TemplateField>

                 <asp:TemplateField HeaderText="Gender">
                   <ItemTemplate>
                       <asp:Label ID="Label5" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
               </asp:TemplateField>


                   <asp:TemplateField HeaderText="Weight">
                   <ItemTemplate>
                       <asp:Label ID="Label6" runat="server" Text='<%# Eval("weight") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
               </asp:TemplateField>
                <asp:TemplateField HeaderText="Email ID">
                   <ItemTemplate>
                       <asp:Label ID="Label7" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
               </asp:TemplateField>

                  <asp:TemplateField HeaderText="Mobile.No">
                   <ItemTemplate>
                       <asp:Label ID="Label8" runat="server" Text='<%# Eval("mobile") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
               </asp:TemplateField>

                 <asp:TemplateField HeaderText="Blood Group">
                   <ItemTemplate>
                       <asp:Label ID="lblbloodgroup" runat="server" Text='<%# Eval("blood_group") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
               </asp:TemplateField>

                  <asp:TemplateField HeaderText="Address">
                   <ItemTemplate>
                       <asp:Label ID="Label10" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
               </asp:TemplateField>

                 <asp:TemplateField HeaderText="City">
                   <ItemTemplate>
                       <asp:Label ID="Label11" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
               </asp:TemplateField>

                 <asp:TemplateField HeaderText="State">
                   <ItemTemplate>
                       <asp:Label ID="Label12" runat="server" Text='<%# Eval("state") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
               </asp:TemplateField>

                  <asp:TemplateField HeaderText="ZipCode">
                   <ItemTemplate>
                       <asp:Label ID="Label13" runat="server" Text='<%# Eval("zipcode") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
               </asp:TemplateField>

            </Columns>

        </asp:GridView>
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