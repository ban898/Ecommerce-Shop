using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _2601
{
    public class User
    {
        public int UserID { get; set; }
        public string UserPass { get; set; }
        public string Fname { get; set; }
        public string Lname { get; set; }
        public string Email { get; set; }
        public int Status { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
    }
}