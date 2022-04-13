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
    public partial class UrunSil : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; Database=dbticari; User ID=root; Password=''");

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"].ToString());
            con.Open();
            MySqlCommand komut = new MySqlCommand("delete from tbl_urunler where id=@id", con);
            komut.Parameters.AddWithValue("@id", id);
            komut.ExecuteNonQuery();
            con.Close();
            Response.Redirect("AdminUrunler.aspx");
        }
    }
}