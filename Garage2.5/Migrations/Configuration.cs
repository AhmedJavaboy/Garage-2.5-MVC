using Garage2._5.DataAccessLayer;
using Garage2._5.Models;

namespace Garage2._5.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<Garage2._5.DataAccessLayer.GarageDbContex>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
        }

        protected override void Seed(Garage2._5.DataAccessLayer.GarageDbContex context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method
            //  to avoid creating duplicate seed data. E.g.
            //
            //    context.People.AddOrUpdate(
            //      p => p.FullName,
            //      new Person { FullName = "Andrew Peters" },
            //      new Person { FullName = "Brice Lambson" },
            //      new Person { FullName = "Rowan Miller" }
            //    );
            //

            //GarageDbContex contex = new GarageDbContex();

            //context.VehicleTypeDbSet.AddOrUpdate(
            //   p => p.Id,
            //   new VehicleType { Name = "Bil" },
            //   new VehicleType { Name = "Båt" },
            //   new VehicleType { Name = "Flygplan" },
            //   new VehicleType { Name = "Luftskepp" },
            //   new VehicleType { Name = "Motorcykel" },
            //   new VehicleType { Name = "Långtradare" }
            //   );
        }
    }
}
