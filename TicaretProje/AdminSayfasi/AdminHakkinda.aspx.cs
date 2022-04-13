using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace TicaretProje.AdminSayfasi
{
    public partial class Hakkinda : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; Database=dbticari; User ID=root; Password=''");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                // Banner
                con.Open();
                MySqlCommand komut = new MySqlCommand("select * from tbl_hakkinda where id=@id", con);
                komut.Parameters.AddWithValue("@id", 1);
                MySqlDataReader dr = komut.ExecuteReader();
                DataTable dt = new DataTable();
                while (dr.Read())
                {
                    txtresim.Text = dr[1].ToString();
                    txthakkinda.InnerText = dr[2].ToString();
                    txtkonum.InnerText = dr[3].ToString();
           
                }
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand komut = new MySqlCommand("update tbl_hakkinda set fotograf=@fotograf,metin=@metin,konum=@konum where id=@id", con);
            komut.Parameters.AddWithValue("@id", 1);
            komut.Parameters.AddWithValue("@fotograf", txtresim.Text);
            komut.Parameters.AddWithValue("@metin", txthakkinda.InnerText);
            komut.Parameters.AddWithValue("@metin", txtkonum.InnerText);
            komut.ExecuteNonQuery();
            con.Close();
            Response.Redirect("AdminHakkinda.aspx");
        }
    }
}