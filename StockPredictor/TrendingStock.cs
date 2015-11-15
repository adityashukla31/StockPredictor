using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockPredictor
{
    public class Loser
    {
        public string symbol { get; set; }
        public double change { get; set; }
        public string percent { get; set; }
        public object message { get; set; }
        public object prices { get; set; }
    }

    public class Gainer
    {
        public object symbol { get; set; }
        public double change { get; set; }
        public object percent { get; set; }
        public string message { get; set; }
        public object prices { get; set; }
    }

    public class RootObject
    {
        public Loser loser { get; set; }
        public Gainer gainer { get; set; }
    }
}