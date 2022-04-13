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
    public partial class AdminAnaSayfa : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; Database=dbticari; User ID=root; Password=''");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                // Banner
                con.Open();
                MySqlCommand komut = new MySqlCommand("select * from tbl_anasayfa where id=@id", con);
                komut.Parameters.AddWithValue("@id", 1);
                MySqlDataReader dr = komut.ExecuteReader();
                DataTable dt = new DataTable();
                while (dr.Read())
                {
                    txtbanner.Text = dr[0].ToString();
                    txttanitim.Text = dr[1].ToString();
                    txtlogo.Text = dr[3].ToString();
                }
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
                con.Open();
                MySqlCommand komut = new MySqlCommand("update tbl_anasayfa set Banner=@banner,Tanitim=@tanitim,logo=@logo where id=@id", con);
                komut.Parameters.AddWithValue("@id", 1);
                komut.Parameters.AddWithValue("@banner", txtbanner.Text);
                komut.Parameters.AddWithValue("@tanitim", txttanitim.Text);
                komut.Parameters.AddWithValue("@logo", txtlogo.Text);
                komut.ExecuteNonQuery();
                con.Close();
                Response.Redirect("AdminAnaSayfa.aspx");
         
        }
    }
}