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
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) 
        {
            string conn = LC.conectar();
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            LC.cerrarConexion();
        }

        protected void aceptarBtn_Click(object sender, EventArgs e)
        {
            int mailReg = LC.mailExistente(mailTxt.Text);
            if (mailReg == 1)
                Label1.Text = "Este email ya ha sido registrado";
            else {
                String encPass = encriptar(passTxt.Text);
                Label1.Text = LC.registrar(mailTxt.Text, nombreTxt.Text, dniTxt.Text, pregTxt.Text, respTxt.Text, passTxt.Text);
            }
        }

        private String encriptar(String pass) {
            
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
