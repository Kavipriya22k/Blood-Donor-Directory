using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_DonorReport : System.Web.UI.Page
{
    DBConnection db = new DBConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        string qry = "select * from donor_table";

        DataSet ds = db.selectQuery(qry);
        if (ds.Tables[0].Rows.Count > 0)
        {
           
            datagrid.DataSource = ds;
            datagrid.DataBind();
        }
        else
        {
           
            Response.Write("<script>alert('No Donors Data Found')</script>");
        }

    }

    protected void bindData()
    {
        string qry = "select * from donor_table";

        DataSet ds = db.selectQuery(qry);
        if (ds.Tables[0].Rows.Count > 0)
        {

            datagrid.DataSource = ds;
            datagrid.DataBind();
        }
    }

    protected void Delete_Donor(Object sender, GridViewDeleteEventArgs e)
    {
        // collection of the GridView control.
        GridViewRow row = datagrid.Rows[e.RowIndex];

        int index = e.RowIndex;
        GridViewRow gvr = (GridViewRow)datagrid.Rows[index];

        Label lblid = (Label)gvr.FindControl("Label1");
        int donor_id = Convert.ToInt32(lblid.Text);

        string delete_qry = "delete from donor_table where donorid="+donor_id;

        int ret_status = db.inputQuery(delete_qry);
        if(ret_status>0)
        {
            Response.Write("<script>alert('Donors Information deleted successfully....')</script>");
            bindData();
        }
        else
        {
            Response.Write("<script>alert('Donors Information failed to delete....')</script>");
        }
    }

    protected void datagrid_OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        datagrid.PageIndex = e.NewPageIndex;
        bindData();
    }
}