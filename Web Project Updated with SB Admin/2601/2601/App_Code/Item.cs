using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _2601
{
    public class Item //הכנת תשתית למוצר בתוך סל קניות עם השדות שאנחנו צריכים
    {
        public int Iid { get; set; }
        public string Iname { get; set; }
        public int Iamount { get; set; }
        public int Iprice { get; set; }
        public string Iimg { get; set; }
        public string Idesc { get; set; }
        public string Isdes { get; set; }

    }
}