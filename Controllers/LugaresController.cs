using PaginacionWebForm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PaginacionWebForm.Controllers
{
    public class LugaresController
    {

        public List<LUGARES> GetLugares()
        {
            using(ViaticosPruebaEntities db = new ViaticosPruebaEntities())
            {
                return db.LUGARES.ToList();
            }
        }
    }
}