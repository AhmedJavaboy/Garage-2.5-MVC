using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace Garage2._5.DataAccessLayer
{
    public class GarageDbContex:DbContext
    {
        public GarageDbContex() : base("Garage2.5Db")
        {

        }

        public DbSet<Models.Member> MembersDbSet { get; set; }
        public DbSet<Models.Vehicle> VehicleDbSet { get; set; }
        public DbSet<Models.VehicleType> VehicleTypeDbSet { get; set; }

    }
}