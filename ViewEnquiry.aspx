﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ViewEnquiry.aspx.cs" Inherits="Admin_ViewEnquiry" %>


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
       
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!--  SECTION FAQ -->

        <section class="section-content-block section-faq">
             <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 text-center">
                        <h2 class="section-heading">VIEW POSTED BLOOD REQUIREMENTS</h2>
                        
                    </div> <!-- end .col-sm-10  -->

                </div> <!--  end .row  -->
                 <br />
                 <br />
                 <br />

                 <div class="row">
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
                           <form id="form1" runat="server">
        
              <asp:GridView ID="datagrid" runat="server"  AutoGenerateColumns="False" AutoGenerateDeleteButton="True" OnRowDeleting="Delete_Enquiry" AllowPaging="True" OnPageIndexChanging="datagrid_OnPageIndexChanging">
                   <FooterStyle CssClass="GridViewFooterStyle" />
    <RowStyle CssClass="GridViewRowStyle" />
    <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
                   <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NumericFirstLast" />
    <PagerStyle CssClass="GridViewPagerStyle" />
    <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
    <HeaderStyle CssClass="GridViewHeaderStyle" />

            <Columns>
                  <asp:TemplateField HeaderText="Enquiry ID">
                   <ItemTemplate>
                       <asp:Label ID="Label1" runat="server" Text='<%# Eval("enquiryid") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
               </asp:TemplateField>

                 <asp:TemplateField HeaderText="Name">
                   <ItemTemplate>
                       <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
               </asp:TemplateField>


                 <asp:TemplateField HeaderText="Email ID">
                   <ItemTemplate>
                       <asp:Label ID="Label3" runat="server" Text='<%# Eval("mailid") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
               </asp:TemplateField>


                <asp:TemplateField HeaderText="Subject">
                   <ItemTemplate>
                       <asp:Label ID="Label4" runat="server" Text='<%# Eval("subject") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
               </asp:TemplateField>

                  <asp:TemplateField HeaderText="Message">
                   <ItemTemplate>
                       <asp:Label ID="Label5" runat="server" Text='<%# Eval("message") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
               </asp:TemplateField>
            </Columns>

        </asp:GridView>
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