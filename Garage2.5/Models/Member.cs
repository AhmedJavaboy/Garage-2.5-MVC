using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Garage2._5.Models
{
    public class Member
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public List<Vehicle> Vehicles { get; set; }

    }


}