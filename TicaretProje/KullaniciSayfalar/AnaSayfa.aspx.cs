using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
namespace TicaretProje
{
    public partial class AnaSayfa : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; Database=dbticari; User ID=root; Password=''");
        protected void Page_Load(object sender, EventArgs e)
        {
            // Banner
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "select Banner from tbl_anasayfa";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            con.Close(); 
            // Tanitim
            con.Open();
            MySqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandText = "select Tanitim from tbl_anasayfa";
            cmd2.ExecuteNonQuery();
            DataTable dt2 = new DataTable();
            MySqlDataAdapter da2 = new MySqlDataAdapter(cmd2);
            da2.Fill(dt2);
            DataList2.DataSource = dt2;
            DataList2.DataBind();
            con.Close();
            // Ürün1
            con.Open();
            MySqlCommand cmd3 = con.CreateCommand();
            cmd3.CommandText = "select ad,fiyat,gorsel from tbl_urunler where id=2";
            cmd3.ExecuteNonQuery();
            DataTable dt3 = new DataTable();
            MySqlDataAdapter da3 = new MySqlDataAdapter(cmd3);
            da3.Fill(dt3);
            DataList3.DataSource = dt3;
            DataList3.DataBind();
            con.Close();
                    // Ürün2
            con.Open();
            MySqlCommand cmd4 = con.CreateCommand();
            cmd4.CommandText = "select ad,fiyat,gorsel from tbl_urunler where id=3";
            cmd4.ExecuteNonQuery();
            DataTable dt4 = new DataTable();
            MySqlDataAdapter da4 = new MySqlDataAdapter(cmd4);
            da4.Fill(dt4);
            DataList4.DataSource = dt4;
            DataList4.DataBind();
            con.Close();
                    // Ürün3
            con.Open();
            MySqlCommand cmd5 = con.CreateCommand();
            cmd5.CommandText = "select ad,fiyat,gorsel from tbl_urunler where id=7";
            cmd5.ExecuteNonQuery();
            DataTable dt5 = new DataTable();
            MySqlDataAdapter da5 = new MySqlDataAdapter(cmd5);
            da5.Fill(dt5);
            DataList5.DataSource = dt5;
            DataList5.DataBind();
            con.Close();

        }
    }
}