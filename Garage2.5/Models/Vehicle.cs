using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace Garage2._5.Models
{
    public class Vehicle
    {
        public int Id { get; set; }

        [Display(Name = "Register Number")]
        public string RegNr { get; set; }

        //public VBrand Brand { get; set; }
        public string Model { get; set; }
        public int Wheel { get; set; }

        [DataType(DataType.DateTime)]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{00:yyyy/MM/dd HH:mm}")]
        public DateTime CheckInTime { get; set; }

        [DataType(DataType.DateTime)]
        [DisplayFormat(DataFormatString = "{00:yyyy/MM/dd HH:mm}")]
        public DateTime CheckOutTime { get; set; }

        public Member Member { get; set; }

        public bool Status { get; set; }

    }



}