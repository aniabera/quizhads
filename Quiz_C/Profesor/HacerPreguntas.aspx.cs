using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LC = Quiz_Clases_C.accesoDatos;

namespace Quiz_C.Profesor
{
    public partial class HacerPreguntas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conn = LC.conectar();
        }

        protected void aceptarBtn_Click(object sender, EventArgs e)
        {
            int numero = 0;
            try
            {
                numero = Convert.ToInt32(numCorrectoTxt.Text);
            }
            catch (FormatException fe)
            {
                Label1.Text = "Por favor, inserte un número en la casilla de 'Número respuesta correcta'";
            }
            
            Label1.Text = LC.insertarPreg(temaTxt.Text, pregTxt.Text, resp1Txt.Text, resp2Txt.Text, Resp3Txt.Text, numero);
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = "UpdatePanel1 refreshed at: " +
            DateTime.Now.ToLongTimeString();
        }

        protected void temaTxt_TextChanged(object sender, EventArgs e)
        {

        }

    }
}