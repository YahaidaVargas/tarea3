using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Mensaje : iJefa
    {
        private ConexYaha conexion = new ConexYaha();



              

        public int IdMensaje { get; set; }
        public string Email { get; set; }
        public string Asunto { get; set; }
        public string Mensajes{ get; set; }

        
        public bool BuscarId(int IdBuscado)
        {
            throw new NotImplementedException();
        }

        public bool Insertar()
        {

            string consulta = string.Format("insert into Mensajes (Email,Asunto,Mensaje) values('{0}','{1}','{2}')", Email, Mensajes, Asunto);
           return conexion.EjecutarDB(consulta);
            

        }


        public DataTable Listar(string campos = "*", string Filtro = "1=1")
        {
            throw new NotImplementedException();
        }

        public bool Modificar()
        {
            throw new NotImplementedException();
        }
    }
}
