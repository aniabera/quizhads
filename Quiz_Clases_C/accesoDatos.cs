using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace Quiz_Clases_C{

    public class accesoDatos{

        public static SqlConnection conexion = new SqlConnection();
        public static SqlCommand comando;

        public static String conectar()
        {
                try
                {
                    conexion.ConnectionString = "Server=tcp:irania15ania.database.windows.net,1433;Initial Catalog=HADS15_Tareas;Persist Security Info=False;User ID=Irania@irania15ania;Password=Huskito15;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
                    conexion.Open();
                }
                catch (Exception e)
                {
                    return "ERROR DE CONEXIÓN: " + e.Message;
                }

                return "CONEXION OK";
        }


        public static void cerrarConexion()
        {
            if (conexion != null)
                conexion.Close();
        }

        public static String registrar(String mail, String nombre, String dni, String preg, String resp, String pass)
        {
            string commandText = "insert into Usuarios(email, nombre, pregunta, respuesta, dni, confirmado, grupo, tipo, pass)"
            + "values ( '"+ @mail+"', '"+ @nombre+"' ,'"+ @preg+"','"+ @resp+"','"+ @dni+"', 1, 1, 'a','"+ @pass+"')";
            int numReg;
            
            comando = new SqlCommand(commandText, conexion);

            try
            {
                numReg = comando.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                return e.Message;
            }

            return numReg + "registro(s) insertado(s) en la BD";
        }

        public static int mailExistente(String mail)
        {
            string commandText = "select count(*) from Usuarios where email='" + @mail + "' and confirmado=1";
            comando = new SqlCommand(commandText, conexion);
            Int32 resp = 0;
            try
            {
                resp = (Int32)comando.ExecuteScalar();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return (int)resp;
        }

        public static Boolean esProfesor(String mail, String pass)
        {
            string commandText = "select count(*) from Usuarios where email='" + @mail +"' and pass='" + @pass + "' and confirmado=1 and tipo='P'";
            comando = new SqlCommand(commandText, conexion);
            Int32 count = (Int32)comando.ExecuteScalar();
            if (count.CompareTo(1) == 0)
                return true;
            else return false;
        }

        public static Boolean esAlumno(String mail, String pass)
        {
            string commandText = "select count(*) from Usuarios where email='" + @mail + "' and pass='" + @pass + "' and confirmado=1 and tipo='A'";
            comando = new SqlCommand(commandText, conexion);
            Int32 count = (Int32)comando.ExecuteScalar();
            if (count.CompareTo(1) == 0)
                return true;
            else return false;
        }

        public static String insertarPreg(String tema, String preg, String resp1, String resp2, String resp3, int num)
        {
            string commandText = "insert into Preguntas(Tema, Pregunta, Resp1, Resp2, Resp3, NumRespCorrecta)"
            + "values ( '" + @tema + "', '" + @preg + "' ,'" + @resp1 + "','" + @resp2 + "','" + @resp3 + "','" + @num + "')";
            int numReg;

            comando = new SqlCommand(commandText, conexion);

            try
            {
                numReg = comando.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                return e.Message;
            }

            return numReg + "pregunta(s) insertada(s) en la BD";
        }

        public static int numPreg(String tema)
        {
            string commandText = "select count(*) from Preguntas where Tema='" + @tema + "'" ;
            comando = new SqlCommand(commandText, conexion);
            Int32 numR = 100;
            try
            {
                numR = (Int32)comando.ExecuteScalar();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return numR;
        }

        public static int idPrimeraPreg(String tema)
        {
            string commandText = "select IdPreg from Preguntas where Tema='" + @tema + "'";
            comando = new SqlCommand(commandText, conexion);
            Int32 numR = 100;
            try
            {
                numR = (Int32)comando.ExecuteScalar();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return (int)numR;
        }

        public static int idSigPreg(String tema, int antId)
        {
            string commandText = "select IdPreg from Preguntas where Tema='" + @tema + "' and IdPreg > '" + @antId + "'";
            comando = new SqlCommand(commandText, conexion);
            Int32 numR = 100;
            try
            {
                numR = (Int32)comando.ExecuteScalar();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return (int)numR;
        }

        public static int respCorrecta(int id)
        {
            string commandText = "select NumRespCorrecta from Preguntas where IdPreg='" + @id + "'";
            comando = new SqlCommand(commandText, conexion);
            Int32 numR = 100;
            try
            {
                numR = (Int32)comando.ExecuteScalar();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return (int)numR;
        }

        public static String primeraResp(int id)
        {
            string commandText = "select Resp1 from Preguntas where IdPreg='" + @id + "'";
            comando = new SqlCommand(commandText, conexion);
            String resp1 = "Esta mierda no funciona";
            try
            {
                resp1 = (String)comando.ExecuteScalar();
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            return resp1;
        }

        public static String segundaResp(int id)
        {
            string commandText = "select Resp2 from Preguntas where IdPreg='" + @id + "'";
            comando = new SqlCommand(commandText, conexion);
            String resp2 = "Esta mierda no funciona";
            try
            {
                resp2 = (String)comando.ExecuteScalar();
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            return resp2;
        }

        public static String terceraResp(int id)
        {
            string commandText = "select Resp3 from Preguntas where IdPreg='" + @id + "'";
            comando = new SqlCommand(commandText, conexion);
            String resp3 = "Esta mierda no funciona";
            try
            {
                resp3 = (String)comando.ExecuteScalar();
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            return resp3;
        }

    }
}
