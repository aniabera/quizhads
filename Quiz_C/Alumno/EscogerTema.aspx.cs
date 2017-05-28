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
    public class Test {
        public string Tema { get; set; }
        public int numPregTotal { get; set; }
        public int numPregContestadas { get; set; }
        public int idPreguntaActual { get; set; }
        public int numPregAcertadas { get; set; }
    }

    public partial class EscogerTema : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LC.conectar();
            if (IsPostBack)
            {
                Session.Remove("test");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String tema = DropDownList1.Text;

            var test = new Test();
            test.Tema = tema;
            test.numPregTotal = LC.numPreg(tema);
            test.numPregContestadas = 0;
            test.numPregAcertadas = 0;
            test.idPreguntaActual = LC.idPrimeraPreg(tema);

            Session["test"] = test;

            Response.Redirect("Jugar3.aspx");
        }
    }
}