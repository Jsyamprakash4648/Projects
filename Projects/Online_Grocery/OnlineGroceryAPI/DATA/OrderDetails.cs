using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace OnlineGroceryAPI.DATA
{   [Table("orderDetails", Schema = "public")]
    public class OrderDetails
    {   [Key]
            public int OrderID { get; set; }
            public int UserID { get; set; }
           
            public double PriceOfOrder { get; set; }
    }
}