using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_BloodDonationReport : System.Web.UI.Page
{
    DBConnection db = new DBConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string qry = "select donor_table.donorid,donor_table.fname, donor_table.lname, donor_table.email, donor_table.mobile, tblblooddonate.bloodgroup, tblblooddonate.noofunits, tblblooddonate.donatedate from donor_table inner join tblblooddonate on donor_table.donorid = tblblooddonate.donorid";

            DataSet ds = db.selectQuery(qry);
            if (ds.Tables[0].Rows.Count > 0)
            {

                datagrid.DataSource = ds;
                datagrid.DataBind();
            }
            else
            {
                Response.Write("<script>alert('No Blood Donation Data Found')</script>");
            }
        }
    }

    protected void bindData()
    {
        string qry = "select donor_table.donorid,donor_table.fname, donor_table.lname, donor_table.email, donor_table.mobile, tblblooddonate.bloodgroup, tblblooddonate.noofunits, tblblooddonate.donatedate from donor_table inner join tblblooddonate on donor_table.donorid = tblblooddonate.donorid";

        DataSet ds = db.selectQuery(qry);
        if (ds.Tables[0].Rows.Count > 0)
        {

            datagrid.DataSource = ds;
            datagrid.DataBind();
        }
    }

    protected void datagrid_OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        datagrid.PageIndex = e.NewPageIndex;
        bindData();
    }
}