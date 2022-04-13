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
    public partial class Iletisim : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; Database=dbticari; User ID=root; Password=''");

        protected void Page_Load(object sender, EventArgs e)
        {
            // Banner
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "select konum from tbl_hakkinda";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtadsoyad.Text != "" & txtemail.Text != "" && txtkonu.Text != "" && txtmesaj.InnerText !="")
            {
                con.Open();
                MySqlCommand komut = new MySqlCommand("insert into tbl_mesajlar (adsoyad,email,konu,mesaj) values (@adsoyad,@email,@konu,@mesaj)", con);
                komut.Parameters.AddWithValue("@adsoyad", txtadsoyad.Text);
                komut.Parameters.AddWithValue("@email", txtemail.Text);
                komut.Parameters.AddWithValue("@konu", txtkonu.Text);
                komut.Parameters.AddWithValue("@mesaj", txtmesaj.InnerText);
                komut.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Iletisim.aspx");
            }
            else
            {
                btngonder.Text = "Eksik veya hatalı giriş tekrar deneyin";
                btngonder.BackColor = System.Drawing.Color.Red;

            }
        }
    }
}