using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _2601
{
    public class Cart           //סל קניות
    {
        public List<Item> Items;
        public Cart()
        {
            Items = new List<Item>();
        }
        public void add2cart(Item tmp)
        {
            int i = 0;
            for ( i=0;i<Items.Count;i++)
            {
                if(Items[i].Iid == tmp.Iid)
                {
                    Items[i].Iamount += tmp.Iamount;
                    break;
                }
            }
            if (i == Items.Count)
            {
                Items.Add(tmp);
            }
        }
        public int GetSum()
        {
            int sum = 0;
            foreach (Item f in Items)
                sum += f.Iprice * f.Iamount;
            return sum;
        }
    }
}