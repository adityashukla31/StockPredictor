/*Home code behind implemetation
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
    public partial class Home : System.Web.UI.Page
    {
        List<Quote> ql;       
        protected void Page_Load(object sender, EventArgs e)
        {
            getStockQuoteList();
            Populatetable();           
        }

        private void AddToTableRow(List<TableCell> itemValues, TableRow tableRow)
        {
            for (int x = 1; x <= itemValues.Count; x++)
            {
               tableRow.Cells.AddAt(x, itemValues[x-1]);
            }
        }

        private void Populatetable()
        {
            for (int i = 0; i < ql.Count; i++)
            {
                List<TableCell> list = new List<TableCell>();
                TableCell tCell = new TableCell();
                tCell.Text = ql[i].price.ToString();
                TableCell tCell2 = new TableCell();
                tCell2.Text = ql[i].change.ToString();
                TableCell tCell3 = new TableCell();
                tCell3.Text = ql[i].percent.ToString();
                list.Add(tCell);
                list.Add(tCell2);
                list.Add(tCell3);
                if (i == 0)
                {
                    AddToTableRow(list, TableRow1);
                }
                if (i == 1)
                {
                    AddToTableRow(list, TableRow2);
                }
                if (i == 2)
                {
                    AddToTableRow(list, TableRow3);
                }
                if (i == 3)
                {
                    AddToTableRow(list, TableRow4);
                }
                if (i == 4)
                {
                    AddToTableRow(list, TableRow5);
                }
                if (i == 5)
                {
                    AddToTableRow(list, TableRow6);
                }
                if (i ==6)
                {
                    AddToTableRow(list, TableRow7);
                }
                if (i == 7)
                {
                    AddToTableRow(list, TableRow8);
                }
                if (i == 8)
                {
                    AddToTableRow(list, TableRow9);
                }
                if (i == 9)
                {
                    AddToTableRow(list, TableRow10);
                }
                
            }
        }


        private void getStockQuoteList()
        {
            WebRequest req = WebRequest.Create(@"http://192.168.43.125:8080/StockPrediction/quote");
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
                        QuoteList ro = JsonConvert.DeserializeObject<QuoteList>(stringResponse);
                        ql = ro.quotelist;
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