/*Implementation to get trends in the stock
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
    public partial class TopLooser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getStockQuoteList();
        }

        private void getStockQuoteList()
        {
            WebRequest req = WebRequest.Create(@"http://192.168.43.125:8080/StockPrediction/lossgain");
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
                        RootObject ro = JsonConvert.DeserializeObject<RootObject>(stringResponse);
                        if (ro.gainer.symbol == null)
                        {
                            lblGainerStock.Text = "No Gainer for the day";
                            GainerDollarChange.Text = "-";
                            GainerPercentage_Change.Text = "-";
                        }

                        else
                        {
                            lblGainerStock.Text = ro.gainer.symbol.ToString().Trim();
                            GainerDollarChange.Text = "$" + ro.gainer.change.ToString().Trim();
                            GainerPercentage_Change.Text = ro.gainer.percent.ToString().Trim();
                        }

                        
                        if (ro.loser.symbol == null)
                        {
                            lblLooserStock.Text = "No Looser for the day";
                            LooserDollarChange.Text = "-";
                            LooserPercentageChange.Text = "-";
                        }

                        else
                        {
                            lblLooserStock.Text = ro.loser.symbol.ToString().Trim();
                            LooserDollarChange.Text = "$" + ro.loser.change.ToString().Trim();
                            LooserPercentageChange.Text = ro.loser.percent.ToString().Trim();
                        }
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