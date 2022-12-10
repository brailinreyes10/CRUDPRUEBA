using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace CRUDPRUEBA
{
    public class agregarcliente
    {
        
        public static int agregar (Agredarcliente pcliente)
        {
            int retorno = 0;
            using (SqlConnection Conexion = BDComun.ObtnerConexion())
            {
                SqlCommand Comando=new SqlCommand(string.Format("Insert into cliente (cedula, nombre, apellido, ocupacion, sexo) values ('{0}', '{1}', '{2}', '{3}', '{4}')", 
                    pcliente.cedula, pcliente.nombre, pcliente.apellido, pcliente.ocupacion, pcliente.sexo), Conexion);

                retorno = Comando.ExecuteNonQuery();
                
                
            }
            return retorno;

        }

        internal static object BuscarCliente(string text1, string text2)
        {
            throw new NotImplementedException();
        }

        public static List<Agredarcliente> Buscar(string pcedula, string pnombre, string papellido, string pocupacion, string psexo)
        {
            List<Agredarcliente> lista = new List<Agredarcliente>();
            using (SqlConnection Conexion = BDComun.ObtnerConexion())
            {
                SqlCommand Comando = new SqlCommand(string.Format(
                    "select idcliente, cedula, nombre, apellido, ocupacion, sexo from cliente where cedula like '%{0}%' and nombre like '%{1}%'",
                    pcedula, pnombre, papellido, pocupacion, psexo), Conexion);

                SqlDataReader reader = Comando.ExecuteReader();

                while (reader.Read()) 
                    {
                    Agredarcliente cliente = new Agredarcliente();
                    cliente.idcliente = reader.GetInt64(0);
                    cliente.cedula = reader.GetString(1);
                    cliente.nombre = reader.GetString(2);
                    cliente.apellido = reader.GetString(3);
                    cliente.ocupacion = reader.GetString(4);
                    cliente.sexo = reader.GetString(5);

                    lista.Add(cliente);

                     
                }
                Conexion.Close();
                return lista;

            }
        }


    }
}
