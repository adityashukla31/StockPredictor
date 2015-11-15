using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockPredictor
{
    public class Quote
    {
        public string symbol { get; set; }
        public double price { get; set; }
        public double change { get; set; }
        public string percent { get; set; }
    }

    public class QuoteList
    {
        public List<Quote> quotelist { get; set; }
    }
}