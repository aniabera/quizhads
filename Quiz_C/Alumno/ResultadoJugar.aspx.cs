using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiz_C.Alumno
{
    public partial class ResultadoJugar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var test = new Test();
            test = (Test)Session["test"];
            Label1.Text = "Has acertado " + test.numPregAcertadas + " de " + test.numPregTotal + " preguntas sobre el tema de " + test.Tema;
        }
    }
}