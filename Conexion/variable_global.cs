using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MVP_BD_PRFinal.Conexion
{
    public class variable_global
    {
        static public SqlConnection cmd;
        static public string server;
        static public bool solitario;
        static public string nameArtist;
        static public string id_artist;
        static public string id_discoUnique;
    }
}
