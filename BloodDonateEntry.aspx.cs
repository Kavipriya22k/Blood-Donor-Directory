using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_BloodDonateEntry : System.Web.UI.Page
{
    DBConnection db = new DBConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            txtDonorID.Text = Session["DonorID"].ToString();
            txtFirstName.Text = Session["DFirstName"].ToString();
            txtLastName.Text = Session["DLastName"].ToString();
            txtDonorbloodgroup.Text = Session["DBloodGroup"].ToString();
            txtDonorID.Enabled = false;
            txtFirstName.Enabled = false;
            txtLastName.Enabled = false;
            txtDonorbloodgroup.Enabled = false;
        }
       
    }

    protected void btnSave_Click1(object sender, EventArgs e)
    {
        if(txtNoOfUnits.Text.Trim().Length==0)
        {
            //Response.Write("<script>alert('Enter Valid No.Of Units Blood...')</script>");
            lblerror.Text = "Enter Valid No.Of Units Blood...";
            //Response.Redirect("BloodDonateEntry.aspx");
        }
        else
        {
            lblerror.Text = "";
            string qry = "insert into tblblooddonate (donorid,bloodgroup,noofunits) values('" + txtDonorID.Text + "','" + txtDonorbloodgroup.Text + "'," + Convert.ToInt32(txtNoOfUnits.Text) + ")";

            int ret_status = db.inputQuery(qry);

            if (ret_status > 0)
            {
                Response.Write("<script>alert('New Entry Blood Donation Successfull...')</script>");
                txtNoOfUnits.Enabled = false;
                btnSave.Enabled = false;

                //Stock Entries update
                string qry_stock = "select * from blood_bank where blood_group='" + txtDonorbloodgroup.Text + "'";
                int stockbloodgpunits = 0;
                int stockbldunitid = 0;
                DataSet ds = db.selectQuery(qry_stock);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    stockbldunitid = Convert.ToInt32(ds.Tables[0].Rows[0]["bloodid"].ToString());
                    stockbloodgpunits = Convert.ToInt32(ds.Tables[0].Rows[0]["noofunits"].ToString());
                    stockbloodgpunits = stockbloodgpunits + Convert.ToInt32(txtNoOfUnits.Text);

                    string qry_updatestock = "Update blood_bank set noofunits='" + Convert.ToString(stockbloodgpunits) + "' where blood_group='" + txtDonorbloodgroup.Text + "'  and bloodid=" + stockbldunitid;
                    int ret_stockstatus = db.inputQuery(qry_updatestock);

                    if (ret_stockstatus > 0)
                    {
                        Response.Write("<script>alert('Blood Stock" + txtDonorbloodgroup.Text + " Units Update Successfull...')</script>");
                       
                        //Response.Redirect("BloodDonate.aspx");
                    }
                    else
                    {
                      
                        Response.Write("<script>alert('Blood Stock " + txtDonorbloodgroup.Text + " Units Updation Failed...')</script>");

                    }

                }
                else
                {
                    Response.Write("<script>alert('Blood Group Entry not available in Stocks...')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('New Entry Blood Donation Failed...')</script>");
                
            }

            
        }
        

    }

    protected void btnBack_Click1(object sender, EventArgs e)
    {
        Response.Redirect("BloodDonate.aspx");
    }
}