using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Garage2._5.Models;

namespace Garage2._5.ViewModel
{
    public class VehiclesViewModel
    {
        public Vehicle Vehicle { get; set; }
        public IEnumerable<SelectListItem> Members { get; set; }

        public VehiclesViewModel()
        {
            Members = new List<SelectListItem>();
        }
    }
}