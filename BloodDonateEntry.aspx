<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="BloodDonateEntry.aspx.cs" Inherits="Admin_BloodDonateEntry" %>

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
     <style type="text/css">
         .form-group .btn3d {
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

.form-group .btn3d:hover {background-color: #3e8e41}

.form-group .btn3d:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

         .form-group table {
                border-collapse: collapse;
            }
           
         .form-group td {
                width:200px;     
                padding:5px
             
            }
            .form-group .tblstyle {
                border-right:hidden;
            }
            .gfg {
                border-collapse:separate;
                border-spacing:0 15px;
            }
         

         </style>

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="section-content-block section-faq">
        

         
             <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 text-center">
                        <h2 class="section-heading">NEW ENTRY BLOOD DONATION</h2>
                        
                    </div> <!-- end .col-sm-10  -->

                </div> <!--  end .row  -->
                 <br />
                 <br />
                 <br />
                  <div style="margin-left:350px;">

                 <div class="row">
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                           <form id="form1" runat="server">
                                  <div class="form-group">
                                      <table class="tblstyle">
                                          <tr>
                                              <td style="text-align:right;">
                                                  <asp:Label ID="lbldonorid" runat="server" Text="Donor ID" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                                              </td>
                                              <td>
                                                  <asp:TextBox ID="txtDonorID" CssClass="form-control" runat="server"  required="required"></asp:TextBox>     
                                              </td>
                                          </tr>
                                     
                                          <tr>
                                              <td style="text-align:right;">
                                                   <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                                              </td>
                                              <td>
                                                   <asp:TextBox ID="txtFirstName" CssClass="form-control" runat="server"  required="required"></asp:TextBox>
                                              </td>
                                          </tr>
                                    
                                          <tr>
                                              <td style="text-align:right;">
                                                   <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                                              </td>
                                              <td>
                                                  <asp:TextBox ID="txtLastName" CssClass="form-control" runat="server"  required="required"></asp:TextBox> 
                                              </td>
                                          </tr>
                                          <tr>
                                              <td style="text-align:right;">
                                                   <asp:Label ID="lblBloodGroup" runat="server" Text="Blood Group"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                                              </td>
                                              <td>
                                                  <asp:TextBox ID="txtDonorbloodgroup" CssClass="form-control" runat="server"  required="required"></asp:TextBox>     
                                              </td>
                                          </tr>
                                           <tr>
                                              <td style="text-align:right;">
                                                   <asp:Label ID="lblUnits" runat="server" Text="No.Of Units"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                                              </td>
                                              <td>
                                                   <asp:TextBox ID="txtNoOfUnits" CssClass="form-control" runat="server"  placeholder="No. of Units(NUMBER Only)" ></asp:TextBox>      
                                
                                              </td>
                                               <td>
                                                   <asp:Label ID="lblerror" runat="server" Text="" style="color:red;"></asp:Label>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  &nbsp;
                                              </td>
                                              
                                          </tr>
                                           <tr>
                                              <td colspan="2">
                                                 <asp:Label ID="lblstatus" runat="server" Text="" style="color:forestgreen;"></asp:Label>
                                              </td>
                                              
                                          </tr>

                                      </table>                   
                                  </div>
                               <div style="margin-left:95px;">
                                      <div class="form-group">
                                      <asp:Button ID="btnSave" runat="server" Text="SAVE" CssClass="btn3d"  OnClick="btnSave_Click1"/>    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     <asp:Button ID="btnBack" runat="server" Text="BACK" CssClass="btn3d" OnClick="btnBack_Click1"/>                               
                                </div>
                               </div>
                              

                            </form>
                       </div>
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
