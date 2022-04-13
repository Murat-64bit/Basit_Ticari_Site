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
    public partial class AdminIletisim : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; Database=dbticari; User ID=root; Password=''");

        protected void Page_Load(object sender, EventArgs e)
        {
            
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "select id,adsoyad,email,konu,mesaj from tbl_mesajlar";
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