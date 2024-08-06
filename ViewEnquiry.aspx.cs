using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_ViewEnquiry : System.Web.UI.Page
{
    DBConnection db = new DBConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string qry = "select * from enquiry";

            DataSet ds = db.selectQuery(qry);
            if (ds.Tables[0].Rows.Count > 0)
            {

                datagrid.DataSource = ds;
                datagrid.DataBind();
            }
            else
            {
                Response.Write("<script>alert('No Enquiry Data Found')</script>");
            }
        }
    }
    protected void bindData()
    {
        string qry = "select * from enquiry";

        DataSet ds = db.selectQuery(qry);
        if (ds.Tables[0].Rows.Count > 0)
        {

            datagrid.DataSource = ds;
            datagrid.DataBind();
        }
    }

    protected void Delete_Enquiry(Object sender, GridViewDeleteEventArgs e)
    {
        // collection of the GridView control.
        GridViewRow row = datagrid.Rows[e.RowIndex];

        int index = e.RowIndex;
        GridViewRow gvr = (GridViewRow)datagrid.Rows[index];

        Label lblid = (Label)gvr.FindControl("Label1");
        int enquiry_id = Convert.ToInt32(lblid.Text);

        string delete_qry = "delete from enquiry where enquiryid=" + enquiry_id;

        int ret_status = db.inputQuery(delete_qry);
        if (ret_status > 0)
        {
            Response.Write("<script>alert('Patient Post Blood Requirements deleted successfully....')</script>");
            bindData();
        }
        else
        {
            Response.Write("<script>alert('Patient Post Blood Requirements failed to delete....')</script>");
        }
    }

    protected void datagrid_OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        datagrid.PageIndex = e.NewPageIndex;
        bindData();
    }




}