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
    public partial class UrunGuncelle : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; Database=dbticari; User ID=root; Password=''");

        protected void Page_Load(object sender, EventArgs e)
        {
            int id;

            if (Page.IsPostBack == false)
            {
                id = Convert.ToInt32(Request.QueryString["id"].ToString());
                con.Open();
                MySqlCommand komut = new MySqlCommand("select * from tbl_urunler where id=@id",con);
                komut.Parameters.AddWithValue("@id", id);
                MySqlDataReader dr = komut.ExecuteReader();
                DataTable dt = new DataTable();
                while (dr.Read())
                {
                    txtID.Text = dr[0].ToString();
                    txtad.Text = dr[1].ToString();
                    txtfiyat.Text = dr[2].ToString();
                    txtgorsel.Text = dr[3].ToString();
                }
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                con.Open();
                MySqlCommand komut = new MySqlCommand("update tbl_urunler set ad=@ad,fiyat=@fiyat,gorsel=@gorsel where id=@id", con);
                komut.Parameters.AddWithValue("@id", txtID.Text);
                komut.Parameters.AddWithValue("@ad", txtad.Text);
                komut.Parameters.AddWithValue("@fiyat", txtfiyat.Text);
                komut.Parameters.AddWithValue("@gorsel", txtgorsel.Text);
                komut.ExecuteNonQuery();
                con.Close();
                Response.Redirect("AdminUrunler.aspx");
            
          
        }
    }
}