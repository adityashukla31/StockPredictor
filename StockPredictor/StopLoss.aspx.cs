/*Implemetation to Predict StopLoss and Book Profit 
 * By: Aditya Shukla
 */
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockPredictor
{
    public partial class StopLoss : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GetRecommendation_Click(object sender, EventArgs e)
        {
            string quote = drpticker.Text.ToString().Trim();
            getStockQuoteList(quote);
            lblLossOrProfit.Visible = true;
            lblRecomendationPrice.Visible = true;
            
        }

        private void getStockQuoteList(string quote)
        {
            WebRequest req = WebRequest.Create(@"http://192.168.43.125:8080/StockPrediction/lossprofit?symbol=" + quote);
            req.Method = "POST";
            HttpWebResponse resp = req.GetResponse() as HttpWebResponse;
            if (resp.StatusCode == HttpStatusCode.OK)
            {
                using (Stream respStream = resp.GetResponseStream())
                {
                    StreamReader reader = new StreamReader(respStream, Encoding.UTF8);
                    string stringResponse = reader.ReadToEnd();
                    if (stringResponse != String.Empty)
                    {
                        Stoploss ro = JsonConvert.DeserializeObject<Stoploss>(stringResponse);
                        if (ro.status.ToString() == "loss")
                        
                            lblLossOrProfit.Text = "The Stock Performance is Bad - We Recommed a Stop Loss Quote at ";
                            
                        else
                            lblLossOrProfit.Text = "The Stock Performance will be at its Peak  - We Recommed a Book Profit Quote at ";
                            
                        lblRecomendationPrice.Text = "$" + ro.value.ToString().Trim();
                    }
                    else
                    {
                        //return null;
                    }
                }
            }
            else
            {
                //return null;
            }

        }
    }
}