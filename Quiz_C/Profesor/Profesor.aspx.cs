﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiz_C.Profesor
{
    public partial class Profesor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();

        }
    }
}