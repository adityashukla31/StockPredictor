/*Stock History code behind implementation
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
    public partial class StockHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              //  getDataForDropDown();
            }
        }

        private string getDate(int Case)
        {
            string Date = "";
            switch (Case)
            {
                case 1:
                    string month = drpsMonth.Text.ToString().Trim();
                    string day = drpsDate.Text.ToString().Trim();
                    string year = drpsYear.Text.ToString().Trim();
                    Date = year + "-" + month + "-" + day;
                    break;
                case 2:
                    string monthend = drpeMonth.Text.ToString().Trim();
                    string dayend = drpeDate.Text.ToString().Trim();
                    string yearend = drpYear.Text.ToString().Trim();
                    Date = yearend + "-" + monthend + "-" + dayend;
                    break;

            }
            return Date;

        }
        private List<DatePrice> getStockHistoryData(string quote)
        {
            String temp = null;
            String temp1= null;
            WebRequest req = WebRequest.Create(@"http://192.168.43.125:8080/StockPrediction/plot?symbol=" + quote + "&start=" + getDate(1) + "&end=" + getDate(2));
            
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
                        Graph ro = JsonConvert.DeserializeObject<Graph>(stringResponse);
                        
                        for (int i = 0; i < ro.list.Count; i++)
                        {
                            temp = temp + ro.list[i].date + ",";
                            temp1 = temp1 + ro.list[i].price + ",";
                        }

                        stockDate.Text = temp.Substring(0,temp.Length-1);
                        stockPrice.Text = temp1.Substring(0, temp1.Length - 1);
                        return ro.list;
                    }
                    else
                    {
                        return null;
                    }
                }
            }
            else
            {
                return null;
            }
        





           // DatePrice<StockDataWebService.Stock_DataObject> HistoryList = new List<StockDataWebService.Stock_DataObject>();
           // StockDataWebService.StockDataServiceContractClient client = new StockDataWebService.StockDataServiceContractClient();
           // HistoryList = client.getStockHistoyByDate(quote, getDate(1), getDate(2)).ToList<StockDataWebService.Stock_DataObject>();
            //return HistoryList;

        }
        //private DataTable makeDataTable(List<StockDataWebService.Stock_DataObject> historyList)
        //{
        //    DataTable dt = new DataTable();
        //    dt.Columns.Add("TradeDate", typeof(DateTime));
        //    dt.Columns.Add("TradeTime", typeof(DateTime));
        //    dt.Columns.Add("Price", typeof(decimal));
        //    dt.Columns.Add("PriceChange", typeof(decimal));
        //    dt.Columns.Add("Ask", typeof(decimal));
        //    dt.Columns.Add("Bid", typeof(decimal));
        //    dt.Columns.Add("OpenPrice", typeof(decimal));
        //    dt.Columns.Add("DaysHigh", typeof(decimal));
        //    dt.Columns.Add("DaysLow", typeof(decimal));
        //    dt.Columns.Add("PrevPrice", typeof(decimal));
        //    dt.Columns.Add("Volume", typeof(decimal));
        //    DataRow dr = null;
        //    foreach (StockDataWebService.Stock_DataObject item in historyList)
        //    {
        //        dr = dt.NewRow();
        //        dr["TradeDate"] = Convert.ToDateTime(item.stockLastTradeDate);
        //        dr["TradeTime"] = Convert.ToDateTime(item.stockLastTradeTime);
        //        dr["Price"] = Convert.ToDecimal(item.stockPrice);
        //        dr["PriceChange"] = Convert.ToDecimal(item.stockPriceChange);
        //        dr["Ask"] = Convert.ToDecimal(item.stockAsk);
        //        dr["Bid"] = item.stockBid;
        //        dr["OpenPrice"] = item.stockOpenPrice;
        //        dr["DaysHigh"] = item.stockDaysHighPrice;
        //        dr["DaysLow"] = item.stockDaysLowPrice;
        //        dr["PrevPrice"] = item.stockPrevClose;
        //        dr["Volume"] = item.stockVolume;
        //        dt.Rows.Add(dr);
        //    }
        //    return dt;
        //}

        //private void getDataForDropDown()
        //{
        //    StockDataWebService.StockDataServiceContractClient client = new StockDataWebService.StockDataServiceContractClient();
        //    DatePrice<string> quotelist = client.getstockQuoteList("stock_today_data", "ssymbol").ToList<string>();
        //    DataTable dt = new DataTable();
        //    dt.Columns.Add("Quote", typeof(string));
        //    DataRow dr = null;
        //    foreach (string quote in quotelist)
        //    {
        //        dr = dt.NewRow();
        //        dr["Quote"] = quote;
        //        dt.Rows.Add(dr);
        //    }
        //    drpticker.DataSource = dt;
        //    drpticker.DataTextField = "Quote";
        //    drpticker.DataValueField = "Quote";
        //    drpticker.DataBind();

        //}

        //protected void GetHistory_Click(object sender, EventArgs e)
        //{
        //    string quote = drpticker.Text.ToString().Trim();
        //    List<DatePrice> HistoryList = getStockHistoryData(quote);
        //    //DataTable GridViewBindingSource = makeDataTable(HistoryList);
        //    //StockHistoryGridView.DataSource = GridViewBindingSource;
        //    //StockHistoryGridView.DataBind();

        //}

        protected void GetHistory_Click(object sender, EventArgs e)
        {
            string quote = drpticker.Text.ToString().Trim();
            List<DatePrice> HistoryList = getStockHistoryData(quote);
            container1.Visible = true;
        }
    }
}