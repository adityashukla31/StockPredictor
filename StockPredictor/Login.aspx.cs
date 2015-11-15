/*Login Page code behind implemetation
 * By: Suvigya Tripathi
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
    public partial class WebForm3 : System.Web.UI.Page
    {
        string username;
        string password;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtUserName_TextChanged(object sender, EventArgs e)
        {
            username = txtUserName.Text.ToString().Trim();
        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {
            password = txtPassword.Text.ToString().Trim();
        }

        private void getUserStatus(string username, string password)
        {
            WebRequest req = WebRequest.Create(@"http://192.168.43.125:8080/StockPrediction/login?username=" + username + "&password=" + password);
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
                        ChkUser ro = JsonConvert.DeserializeObject<ChkUser>(stringResponse);
                        if (ro.status.ToString() == "success")
                        {
                            //Server.Transfer("~/Home.aspx",true);

                            Response.Redirect("~/Home.aspx");
                        }
                    }
                    else
                    {
                        Label1.Text = "Wrong User Name or Password ";
                        Label1.Visible = true;
                    }
                }
            }
            else
            {
                //return null;
            }

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            getUserStatus(username, password);

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Registration.aspx");
        }
    }
}