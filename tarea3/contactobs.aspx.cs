using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace tarea3
{
    public partial class contactobs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnenviar_Click(object sender, EventArgs e)
        {
            string email = txtemail.Text;
            string mensaje = txtmensaje.Text;
            string asunto = txtasunto.Text;



            SqlConnection sncon = new SqlConnection("Data Source=localhost;Initial Catalog=Aplicada2;Integrated Security=True");
            string consulta = string.Format("insert into Mensajes (Email,Asunto,Mensaje) values('{0}','{1}','{2}')",email,mensaje,asunto);
            
            try
            {
                sncon.Open();
                SqlCommand com = new SqlCommand(consulta,sncon);
                com.ExecuteNonQuery();
            }
            catch(SqlException ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
             sncon.Close();

               txtemail.Text = string.Empty;
               txtasunto.Text = string.Empty;
                txtmensaje.Text = string.Empty;

               //Response.Write("registros guardados");
            }


         
            



        }
    } 
}