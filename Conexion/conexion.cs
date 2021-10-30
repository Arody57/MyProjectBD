using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace MVP_BD_PRFinal.Conexion
{
    public class conexion
    {

        public static SqlConnection getConexxion(string server)
        {
                //string name = @"LAPTOP-2MJTC8R1\SQLEXPRESS";
                SqlConnection cnn = new SqlConnection($"Data Source={server}; Initial Catalog=track_my_record;Integrated Security=True");

                cnn.Open();
                return cnn;
        }
    }
}
