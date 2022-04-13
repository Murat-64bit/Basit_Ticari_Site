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
    public partial class UrunEkle : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; Database=dbticari; User ID=root; Password=''");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtad.Text != "" & txtfiyat.Text != "" && txtgorsel.Text != "")
            {
                con.Open();
                MySqlCommand komut = new MySqlCommand("insert into tbl_urunler (ad,fiyat,gorsel) values (@ad,@fiyat,@gorsel)", con);
                komut.Parameters.AddWithValue("@ad", txtad.Text);
                komut.Parameters.AddWithValue("@fiyat", txtfiyat.Text);
                komut.Parameters.AddWithValue("@gorsel", txtgorsel.Text);
                komut.ExecuteNonQuery();
                con.Close();
                Response.Redirect("AdminUrunler.aspx");
            }
            else
            {
                Response.Write("Eksik veya hatalı girdiniz lütfen tekrar deneyin.");

            }

        }
    }
}