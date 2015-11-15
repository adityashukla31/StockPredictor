using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockPredictor
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GetRecommendation_Click(object sender, EventArgs e)
        {
            if (drpticker.SelectedIndex.ToString() == "0")
            {
                Label1.Visible = true;
                Label1.Text = "$560.060";
            }
            if (drpticker.SelectedIndex.ToString() == "1")
            {
                Label1.Visible = true;
                Label1.Text = "42.6582";
            }
            if (drpticker.SelectedIndex.ToString() == "2")
            {
                Label1.Visible = true;
                Label1.Text = "FB= $53.5300  |     Goog = $492.5500  LNKD = $142.3300 |  MSFT = $34.9800  TWTR = $30.5000 |  YHOO= $32.8700  AAPL = $90.2800  |  AMZN = 286.9500  BBY = 22.7200  |   EBAY = 47.8800";
       }
            if (drpticker.SelectedIndex.ToString() == "3")
            {
                Label1.Visible = true;
                Label1.Text = "Google is the highest valued stock ";
            }
            
        }

        protected void drpticker_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}