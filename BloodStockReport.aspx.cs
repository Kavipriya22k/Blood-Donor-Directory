using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_BloodStockReport : System.Web.UI.Page
{

    DBConnection db = new DBConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            binddataToGrid();
        }

    }

    void binddataToGrid()
    {
        string qry = "select * from blood_bank";

        DataSet ds = db.selectQuery(qry);
        if (ds.Tables[0].Rows.Count > 0)
        {

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('No Records Found! Load Data.....')</script>");
        }
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        int index = e.RowIndex;
        GridViewRow row = (GridViewRow)GridView1.Rows[index];
        Label lid = (Label)row.FindControl("lblid");
        TextBox txt1 = (TextBox)row.FindControl("TextBox1");
        TextBox txt2 = (TextBox)row.FindControl("TextBox2");
        TextBox txt3 = (TextBox)row.FindControl("TextBox3");
        TextBox txt4 = (TextBox)row.FindControl("TextBox4");


        string qry = ("update blood_bank set blood_group = '" + txt1.Text + "',noofunits='" + txt2.Text + "',givesto='" + txt3.Text + "',receivesfrom='" + txt4.Text + "' where bloodid="+Convert.ToInt32(lid.Text));
        int i = db.inputQuery(qry);

        if (i > 0)
        {
            
            Response.Write("<script>alert('Stocks updated Sucessfully...')</script>");
        }
        else
        {
            Response.Write("<script>alert('Stocks failed to update...')</script>");
        }
        GridView1.EditIndex = -1;
        binddataToGrid();

    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        binddataToGrid();
        
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        Response.Write("<script>alert('Cancelled Edit!')</script>");
        GridView1.EditIndex = -1;
        binddataToGrid();

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = e.RowIndex;
        GridViewRow gvr = (GridViewRow)GridView1.Rows[index];
        
        Label l1 = (Label)gvr.FindControl("lblid");



        string qry7 = "delete from blood_bank where bloodid=" + l1.Text;
        int i = db.inputQuery(qry7);
        if (i > 0)
        {
            Response.Write("<script>alert('Deletion done!')</script>");
        }
        else
        {
            Response.Write("<script>alert('Deletion Failed!')</script>");
        }
        binddataToGrid();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        binddataToGrid();
    }
}