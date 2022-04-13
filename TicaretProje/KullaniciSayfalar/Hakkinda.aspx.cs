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
    public partial class Hakkinda : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; Database=dbticari; User ID=root; Password=''");

        protected void Page_Load(object sender, EventArgs e)
        {
            // Metin
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "select metin from tbl_hakkinda";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            con.Close(); 
            // Fotoğraf
            con.Open();
            MySqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandText = "select fotograf from tbl_hakkinda";
            cmd2.ExecuteNonQuery();
            DataTable dt2 = new DataTable();
            MySqlDataAdapter da2 = new MySqlDataAdapter(cmd2);
            da2.Fill(dt2);
            DataList2.DataSource = dt2;
            DataList2.DataBind();
            con.Close();
        }
    }
}