using PaginacionWebForm.Controllers;
using PaginacionWebForm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaginacionWebForm.Views
{
    public partial class ListaLugares : System.Web.UI.Page
    {
        private LugaresController objLugares = new LugaresController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LlenargvLugares();
            }
        }

        private void LlenargvLugares()
        {
            List<LUGARES> listLugares = new List<LUGARES>();
            listLugares = objLugares.GetLugares();
            gvLugares.DataSource = listLugares;
            gvLugares.DataBind();
        }

    }
}