using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockPredictor
{
    public class Graph
    {
        public List<DatePrice> list { get; set; }
    }

    public class DatePrice
    {
        public string date { get; set; }
        public double price { get; set; }
    }

}