using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CRUDPRUEBA
{
   public class Agredarcliente
    {
        public Int64 idcliente { get; set; }
        public string cedula { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public string ocupacion { get; set; }
        public string sexo { get; set; }

        public Agredarcliente() { }

        public Agredarcliente (Int64 pidcliente, string pcedula, string pnombre, string papellido, string pocupacion, string psexo)
        {
            this.idcliente = pidcliente;
            this.cedula = pcedula;
            this.nombre = pnombre;
            this.apellido = papellido;
            this.ocupacion = pocupacion;
            this.sexo = psexo;

        }
     
    }
}
