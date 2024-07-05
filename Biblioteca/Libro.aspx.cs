using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Biblioteca
{
    public partial class Libro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string connectionString = "Data Source=E01\\SQLEXPRESS;Initial Catalog=Biblioteca;Integrated Security=true";
            string query = "select * from Libro";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, conn);

                try
                {
                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    GridView1.DataSource = reader;
                    GridView1.DataBind();
                    
                    reader.Close();
                    conn.Close();

                    
                }
                catch (Exception ex)
                {

                }
            }
        }
    }
}