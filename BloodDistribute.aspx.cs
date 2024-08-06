using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_BloodDistribute : System.Web.UI.Page
{
    DBConnection db = new DBConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        string qry = "select * from patient_table";

        DataSet ds = db.selectQuery(qry);
        if (ds.Tables[0].Rows.Count > 0)
        {

            datagrid.DataSource = ds;
            datagrid.DataBind();
        }
        else
        {
            Response.Write("<script>alert('Patient Not Found')</script>");
        }
    }


    protected void get_patientinformation(Object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Select")//rename default Select to Approve
        {
            // Retrieve the row that raised the event from the Rows

            Int16 num = Convert.ToInt16(e.CommandArgument);
            Label ldid = (Label)datagrid.Rows[num].Cells[1].FindControl("lblpatientid");
            Label lfname = (Label)datagrid.Rows[num].Cells[2].FindControl("lblfirstname");
            Label llastname = (Label)datagrid.Rows[num].Cells[3].FindControl("lbllastname");
            Label bloodgroup = (Label)datagrid.Rows[num].Cells[9].FindControl("lblbloodgroup");


            Session["PatientID"] = ldid.Text;
            Session["PFirstName"] = lfname.Text;
            Session["PLastName"] = llastname.Text;
            Session["PBloodGroup"] = bloodgroup.Text;

            Response.Redirect("BloodDistributeEntry.aspx");

            //lblbloodgroup


        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string qry = "select * from patient_table where fname Like '%" + txtPatientName.Text + "%'";

        DataSet ds = db.selectQuery(qry);
        if (ds.Tables[0].Rows.Count > 0)
        {

            datagrid.DataSource = ds;
            datagrid.DataBind();
        }
        else
        {
            Response.Write("<script>alert('Patient Name Not Found')</script>");
        }
    }
}