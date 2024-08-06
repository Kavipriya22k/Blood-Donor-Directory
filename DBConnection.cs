using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Security.Cryptography;
using System.IO;
/// <summary>
/// <summary>
/// Summary description for DBConnection
/// </summary>
public class DBConnection
{
    public DBConnection()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    SqlConnection con = new SqlConnection(@"server=DESKTOP-6GTQJUR\SQLEXPRESS;database=bbdonordir;user id=sa;password=pass@123");
    public int inputQuery(string qry)
    {
        SqlCommand cmd = new SqlCommand(qry, con);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        return i;

    }
    public DataSet selectQuery(string qry)
    {

        SqlCommand cmd = new SqlCommand(qry, con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        return ds;
    }

    public DataTable select1(string qry)
    {
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        con.Open();
        DataTable dt = new DataTable();
        ad.Fill(dt);
        con.Close();
        return dt;

    }
    public int loginQuery(string qry)
    {

        int i = 0;
        SqlCommand cmd = new SqlCommand(qry, con);
        con.Open();
        i = (int)cmd.ExecuteScalar();
        con.Close();
        return i;

    }
}