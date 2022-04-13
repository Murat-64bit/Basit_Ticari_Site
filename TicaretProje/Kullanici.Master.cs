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
    public partial class Menubar : System.Web.UI.MasterPage
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; Database=dbticari; User ID=root; Password=''");

        protected void Page_Load(object sender, EventArgs e)
        {
            // Ad
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "select logo from tbl_anasayfa";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            con.Close();
        }
    }
}