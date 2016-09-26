using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace BLL
{
    interface iJefa
    {
        Boolean Insertar();

        Boolean Modificar();

        Boolean BuscarId(Int32 IdBuscado);

        DataTable Listar(string campos = "*", string Filtro = "1=1");
    }
}
