using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _2601.App_Code
{
    public class Orders
    {
        public int OrderID { get; set; }
        public string OrderDate { get; set; }
        public int CustomID { get; set; }
        public int OrderStatus { get; set; }
        public int OrderFprice { get; set; }
    }
}
