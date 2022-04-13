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
    public partial class Urunler : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; Database=dbticari; User ID=root; Password=''");
        protected void Page_Load(object sender, EventArgs e)
        {
            // Ürün Vitrin
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "select id,ad,fiyat,gorsel from tbl_urunler";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
        }
    }
}