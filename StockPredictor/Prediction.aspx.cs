/*Prediction code behind implemetation : Predicts Long Term & Short Term Prediction
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
    public partial class Prediction : System.Web.UI.Page
    {
        List<ShortTermPrediction> ql;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GetLongTermPred_Click(object sender, EventArgs e)
        {
            pnl1.Visible = false;
            string quote = drpticker.Text.ToString().Trim();
            getLongTerm(quote);
  
        }

        protected void GetShortTermPred_Click(object sender, EventArgs e)
        {
            lbllongterm.Visible = false;
            string quote = drpticker.Text.ToString().Trim();
            getShortTerm(quote);
            Populatetable();
            pnl1.Visible = true;
        }

        private void AddToTableRow(List<TableCell> itemValues, TableRow tableRow)
        {
            for (int x = 0; x < itemValues.Count; x++)
            {
                tableRow.Cells.AddAt(x, itemValues[x]);
            }
        }

        private void Populatetable()
        {
            for (int i = 0; i < ql.Count; i++)
            {
                List<TableCell> list = new List<TableCell>();
                //TableCell tCell = new TableCell();
                //tCell.Text = drpticker.SelectedValue.ToString().Trim();
                TableCell tCell1 = new TableCell();
                tCell1.Text = ql[i].index.ToString();
                TableCell tCell2 = new TableCell();
                tCell2.Text = ql[i].predicted.ToString();
                list.Add(tCell1);
                list.Add(tCell2);
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
                if (i == 6)
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

       private void getShortTerm(string quote)
        {
            WebRequest req = WebRequest.Create(@"http://192.168.43.125:8080/StockPrediction/shortterm?symbol=" + quote);
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
                        ShortTermPredictionList ro = JsonConvert.DeserializeObject<ShortTermPredictionList>(stringResponse);
                        ql = ro.list;

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

        private void getLongTerm(string quote)
        {
            WebRequest req = WebRequest.Create(@"http://192.168.43.125:8080/StockPrediction/predict?symbol=" + quote);
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
                        LongTermPrediction ro = JsonConvert.DeserializeObject<LongTermPrediction>(stringResponse);
                        lbllongterm.Visible = true;
                        lbllongterm.Text = "The prediction price after 10 days = "+ro.predicted.ToString()
                            +"</br> The suggestion is as follows: "+ro.status.ToString();
                        //List<TableCell> list = new List<TableCell>();
                        //TableCell tCell = new TableCell();
                        //tCell.Text = ro.status.ToString().Trim();
                        //TableCell tCell1 = new TableCell();
                        //tCell1.Text = ro.predicted.ToString().Trim();
                        //list.Add(tCell);
                        //list.Add(tCell1);
                        //AddToTableRow(list, TableRow1);
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