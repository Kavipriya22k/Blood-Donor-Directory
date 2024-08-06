using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_AddBloodStock : System.Web.UI.Page
{
    DBConnection db = new DBConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string bloodgroup = "";
        string noofunits = TextBox1.Text;
        string givestogp = TextBox2.Text;
        string receivedfromgp = TextBox3.Text;


        switch (DropDownList1.SelectedIndex)
        {

            case 1:
                {
                    bloodgroup = "A+";
                    break;
                }
            case 2:
                {
                    bloodgroup = "A-";
                    break;
                }

            case 3:
                {
                    bloodgroup = "B+";
                    break;
                }
            case 4:
                {
                    bloodgroup = "B-";
                    break;
                }
            case 5:
                {
                    bloodgroup = "O+";
                    break;
                }
            case 6:
                {
                    bloodgroup = "O-";
                    break;
                }
            case 7:
                {
                    bloodgroup = "AB+";

                    break;
                }
            case 8:
                {
                    bloodgroup = "AB-";
                    break;
                }
        }

        string query = "insert into blood_bank values('" + bloodgroup + "','" + noofunits + "','" + givestogp + "','" + receivedfromgp + "')";
        int ret_status = db.inputQuery(query);
        if(ret_status>0)
        {
            Response.Write("<script>alert('Added Blood Stocks Successfully!....')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            DropDownList1.SelectedIndex = 0;
        }
        else
        {
            Response.Write("<script>alert('Failed to Add Blood Stock!....')</script>");
        }
    }


}