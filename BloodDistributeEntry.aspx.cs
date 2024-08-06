using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_BloodDistributeEntry : System.Web.UI.Page
{
    DBConnection db = new DBConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtPatientID.Text = Session["PatientID"].ToString();
            txtFirstName.Text = Session["PFirstName"].ToString();
            txtLastName.Text = Session["PLastName"].ToString();
            txtpatientbloodgroup.Text = Session["PBloodGroup"].ToString();
            txtPatientID.Enabled = false;
            txtFirstName.Enabled = false;
            txtLastName.Enabled = false;
            txtpatientbloodgroup.Enabled = false;
        }
    }

    protected void btnSave_Click1(object sender, EventArgs e)
    {
        if (txtNoOfUnits.Text.Trim().Length == 0 && txtAmount.Text.Trim().Length != 0)
        {
            //Response.Write("<script>alert('Enter Valid No.Of Units Blood...')</script>");
            lblerrorunits.Text = "Enter Valid No.Of Units Blood...";
            lblerroramt.Text = "";
            //Response.Redirect("BloodDonateEntry.aspx");
        }
        else if(txtNoOfUnits.Text.Trim().Length != 0 && txtAmount.Text.Trim().Length == 0)
        {
            lblerrorunits.Text = "";
            lblerroramt.Text = "Enter Valid Amount...";
        }
        else if (txtNoOfUnits.Text.Trim().Length == 0 && txtAmount.Text.Trim().Length == 0)
        {
            lblerrorunits.Text = "Enter Valid No.Of Units Blood...";
            lblerroramt.Text = "";
        }
        else
        {
            lblerrorunits.Text = "";
            lblerroramt.Text = "";
            string qry = "insert into tblbloodunitssold (patientid,bloodgroup,noofunits,amount) values('" + txtPatientID.Text + "','" + txtpatientbloodgroup.Text + "'," + Convert.ToInt32(txtNoOfUnits.Text) + ","+Convert.ToInt32(txtAmount.Text) + ")";

            int ret_status = db.inputQuery(qry);

            if (ret_status > 0)
            {
                Response.Write("<script>alert('New Entry Blood Distribution Successfull...')</script>");
                txtNoOfUnits.Enabled = false;
                txtAmount.Enabled = false;
                btnSave.Enabled = false;

                //Stock Entries update
                string qry_stock = "select * from blood_bank where blood_group='" + txtpatientbloodgroup.Text + "'";
                int stockbloodgpunits = 0;
                int stockbldunitid = 0;
                DataSet ds = db.selectQuery(qry_stock);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    stockbldunitid = Convert.ToInt32(ds.Tables[0].Rows[0]["bloodid"].ToString());
                    stockbloodgpunits = Convert.ToInt32(ds.Tables[0].Rows[0]["noofunits"].ToString());
                    stockbloodgpunits = stockbloodgpunits - Convert.ToInt32(txtNoOfUnits.Text);

                    string qry_updatestock = "Update blood_bank set noofunits='" + Convert.ToString(stockbloodgpunits) + "' where blood_group='" + txtpatientbloodgroup.Text + "'  and bloodid=" + stockbldunitid;
                    int ret_stockstatus = db.inputQuery(qry_updatestock);

                    if (ret_stockstatus > 0)
                    {
                        Response.Write("<script>alert('Blood Stock" + txtpatientbloodgroup.Text + " Units Update Successfull...')</script>");
                       
                    }
                    else
                    {
                        Response.Write("<script>alert('Blood Stock " + txtpatientbloodgroup.Text + " Units Updation Failed...')</script>");

                    }

                }
                else
                {
                    Response.Write("<script>alert('Blood Group Entry not available in Stocks...')</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('New Entry Blood Distribution Failed...')</script>");
               
            }

        }
    }

    protected void btnBack_Click1(object sender, EventArgs e)
    {
        Response.Redirect("BloodDistribute.aspx");
    }
}