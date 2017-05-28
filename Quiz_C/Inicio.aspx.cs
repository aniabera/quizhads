using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LC = Quiz_Clases_C.accesoDatos;
using System.Security.Cryptography;

namespace Quiz_C
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LC.conectar();
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            LC.cerrarConexion();
        }

        protected void LogInBtn_Click(object sender, EventArgs e)
        {
            String encPass = encriptar(PassTxt.Text);

            if (LC.esAlumno(mailTxt.Text, PassTxt.Text))
            {
                Session["alumno"] = mailTxt.Text;
                Response.Redirect("Alumno/Alumno.aspx");
            }
            else if (LC.esProfesor(mailTxt.Text, PassTxt.Text))
            {
                Session["profesor"] = mailTxt.Text;
                Response.Redirect("Profesor/Profesor.aspx");
            }
            else Label1.Text = "Usuario o contraseña incorrectos";
        }

        private String encriptar(String pass)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] passByte = StrToByteArray(pass);
            byte[] resultByte = md5.ComputeHash(passByte);

            string result = System.Text.Encoding.UTF8.GetString(resultByte);

            return result;
        }

        public static byte[] StrToByteArray(string str)
        {
            System.Text.UTF8Encoding encoding = new System.Text.UTF8Encoding();
            return encoding.GetBytes(str);
        }
    }
}