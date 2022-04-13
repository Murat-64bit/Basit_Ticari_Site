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
    public partial class AdminGiris : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; Database=dbticari; User ID=root; Password=''");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();

            MySqlCommand komut = new MySqlCommand("select * from tbl_admin where kad=@p1 and pass=@p2", con);
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            MySqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("AdminUrunler.aspx");
            }
            else
            {
                Response.Write("Yanlış şifre veya kullanıcı adı");

            }
            con.Close();
        }
    }
}