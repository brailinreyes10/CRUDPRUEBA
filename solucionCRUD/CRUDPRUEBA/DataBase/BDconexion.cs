using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace CRUDPRUEBA
{
    public class BDComun
    {
        public static SqlConnection ObtnerConexion()
        {
            SqlConnection Conexion = new SqlConnection("server=PC-BMRD\\PCSERVER; database=CRUDVENTA; integrated security=true");
            Conexion.Open();

            return Conexion;

        }
    }
}
