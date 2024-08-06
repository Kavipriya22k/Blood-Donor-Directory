using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_BloodDistributionReport : System.Web.UI.Page
{
    DBConnection db = new DBConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string qry = "select patient_table.patientid,patient_table.fname, patient_table.lname, patient_table.email, patient_table.mobile, tblbloodunitssold.bloodgroup, tblbloodunitssold.noofunits, tblbloodunitssold.amount, tblbloodunitssold.givendate from patient_table inner join tblbloodunitssold on patient_table.patientid = tblbloodunitssold.patientid";

            DataSet ds = db.selectQuery(qry);
            if (ds.Tables[0].Rows.Count > 0)
            {
                
                datagrid.DataSource = ds;
                datagrid.DataBind();
            }
            else
            {
                Response.Write("<script>alert('No Blood Distribution Data Found')</script>");
            }
        }
    }

    protected void bindData()
    {
        string qry = "select patient_table.patientid,patient_table.fname, patient_table.lname, patient_table.email, patient_table.mobile, tblbloodunitssold.bloodgroup, tblbloodunitssold.noofunits, tblbloodunitssold.amount, tblbloodunitssold.givendate from patient_table inner join tblbloodunitssold on patient_table.patientid = tblbloodunitssold.patientid";

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