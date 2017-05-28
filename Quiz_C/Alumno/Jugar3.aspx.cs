using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LC = Quiz_Clases_C.accesoDatos;
using System.Data.SqlClient;

namespace Quiz_C.Alumno
{
    public partial class Jugar3 : System.Web.UI.Page
    {
        Boolean a = false;
        Boolean b = false;
        Boolean c = false;
        int resp = 0;

        protected void Page_Init(object sender, EventArgs e)
        {
            var test = new Test();
            test = (Test) Session["test"];
            Session["IDPreg"] = test.idPreguntaActual;
                
        }

        protected void Page_Load(object sender, EventArgs e) 
        {
            LC.conectar();
            var test = new Test();
            test = (Test)Session["test"];
            int numP = test.numPregContestadas + 1;
            resp = LC.respCorrecta(test.idPreguntaActual);
            Label1.Text = "Pregunta " + numP + " de " + test.numPregTotal;
            resp1.Text = LC.primeraResp(test.idPreguntaActual);
            resp2.Text = LC.segundaResp(test.idPreguntaActual);
            resp3.Text = LC.terceraResp(test.idPreguntaActual);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var test = new Test();
            test = (Test)Session["test"];

            if ((resp == 1 && a && !b && !c) || (resp == 2 && !a && b && !c) || (resp == 3 && !a && !b && c)){
                test.numPregAcertadas++;
                test.numPregContestadas++;
                if (test.numPregContestadas < test.numPregTotal)
                {
                    test.idPreguntaActual = LC.idSigPreg(test.Tema, test.idPreguntaActual);
                    Session["test"] = test;
                    Response.Redirect("Jugar3.aspx");
                }
                else Response.Redirect("ResultadoJugar.aspx");
            }
            else if (!a && !b && !c)
                Label1.Text = "Por favor, seleccione una respuesta";
            else
            {
                test.numPregContestadas++;
                if (test.numPregContestadas < test.numPregTotal)
                {
                    test.idPreguntaActual = LC.idSigPreg(test.Tema, test.idPreguntaActual);
                    Session["test"] = test;
                    Response.Redirect("Jugar3.aspx");
                }
                else Response.Redirect("ResultadoJugar.aspx");
            }
        }

        protected void resp1_CheckedChanged(object sender, EventArgs e)
        {
            a = !a;
        }

        protected void resp2_CheckedChanged(object sender, EventArgs e)
        {
            b = !b;
        }

        protected void resp3_CheckedChanged(object sender, EventArgs e)
        {
            c = !c;
        }
    }
}