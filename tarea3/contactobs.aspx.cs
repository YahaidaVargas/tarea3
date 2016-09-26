using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BLL;


namespace tarea3
{
    public partial class contactobs : System.Web.UI.Page
    {

        Mensaje Mns = new Mensaje();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnenviar_Click(object sender, EventArgs e)
        {
            string email = txtemail.Text;
            string mensaje = txtmensaje.Text;
            string asunto = txtasunto.Text;




            //SqlConnection sncon = new SqlConnection("Data Source=localhost;Initial Catalog=Aplicada2;Integrated Security=True");

            Mns.Mensajes = mensaje;
            Mns.Asunto = asunto;
            Mns.Email = email;

            Mns.Insertar();
           
      
               txtemail.Text = string.Empty;
               txtasunto.Text = string.Empty;
                txtmensaje.Text = string.Empty;

               //Response.Write("registros guardados");
            


         
            



        }
    } 
}