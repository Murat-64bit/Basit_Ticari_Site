using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
namespace TicaretProje
{
    public partial class Urunler : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; Database=dbticari; User ID=root; Password=''");

        protected void Page_Load(object sender, EventArgs e)
        {
            // Ad
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "select ad,fiyat,gorsel from tbl_urunler";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            con.Close();
            // Tanitim
            //con.Open();
            //MySqlCommand cmd2 = con.CreateCommand();
            //cmd2.CommandText = "select Tanitim from tbl_anasayfa";
            //cmd2.ExecuteNonQuery();
            //DataTable dt2 = new DataTable();
            //MySqlDataAdapter da2 = new MySqlDataAdapter(cmd2);
            //da2.Fill(dt2);
            //Repeater1.DataSource = dt2;
            //Repeater1.DataBind();
            //con.Close();
        }
    }
}