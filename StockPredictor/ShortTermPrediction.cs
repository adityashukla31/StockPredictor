using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockPredictor
{
    public class ShortTermPrediction
    {
        
    public int index { get; set; }
    public double predicted { get; set; }

    }

    public class ShortTermPredictionList
    {
        public List<ShortTermPrediction> list { get; set; }
        public string status { get; set; }
    }
}