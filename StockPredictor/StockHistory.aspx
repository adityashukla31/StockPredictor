<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StockHistory.aspx.cs" Inherits="StockPredictor.StockHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="http://code.highcharts.com/stock/highstock.js"></script>
    <script src="http://code.highcharts.com/stock/modules/exporting.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {

            var stockDateStringData = document.getElementById('stockDate').value;
            var stockDateDataArr = stockDateStringData.split(',');

            var stockPriceStringData = document.getElementById('stockPrice').value;
            var stockPriceDataArr = stockPriceStringData.split(',');

            var priceArray = [];
            for (var i = 0; i < stockPriceDataArr.length; i++) {
                priceArray[i] = parseFloat(stockPriceDataArr[i]);
            }
            var dateArray = []
            for (var i = 0; i < stockDateDataArr.length; i++) {
                dateArray[i] = String(stockDateDataArr[i]);
            }
            //debugger;
            a = [1, 2, 3, 4]

            $('#container').highcharts({
                chart: {
                    zoomType: 'x'
                },
                title: {
                    text: 'Stock History',
                    x: -20 //center
                },

                xAxis: {

                    categories: dateArray//['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
                },
                yAxis: {
                    title: {
                        text: 'Price'
                    },
                    plotLines: [{
                        value: 0,
                        width: 1,
                        color: '#808080'
                    }]
                },
                series: [{
                    name: 'Date',
                    data: priceArray//[7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]

                }]
            });

        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" width="70%" cellspacing="5" cellpadding="0px" border="0" style="background: #E6E6E6 repeat;">
                    <caption>
                        <h2>Stock Information</h2>
                    </caption>
                    <tr>
                        <td colspan="6">
                            <p style="height: 10px; padding: 0px; margin: 0px;"></p>
                        </td>
                    </tr>
                    <tr>
                        <td></td>              
                        <td>
                            <label><b>Ticker Picker: &nbsp;</b> </label>
                        </td>
                        <td></td>
                        <td colspan="3">
                            <asp:DropDownList ID="drpticker" runat="server" AutoPostBack="false">
                                <asp:ListItem>AAPL</asp:ListItem>
                                <asp:ListItem>AMZN</asp:ListItem>
                                <asp:ListItem>BBY</asp:ListItem>
                                <asp:ListItem>EBAY</asp:ListItem>
                                <asp:ListItem>FB</asp:ListItem>
                                <asp:ListItem>GOOG</asp:ListItem>
                                <asp:ListItem>LNKD</asp:ListItem>
                                <asp:ListItem>MSFT</asp:ListItem>
                                <asp:ListItem>TWTR</asp:ListItem>
                                <asp:ListItem>YHOO</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td></td> 
                    </tr>
                    <tr>
                        <td style="width: 20%"></td>
                        <td style="width: 15%">
                            <label><b>Start Date: </b></label>
                        </td>

                        
                        
                        <td style="width: 10%">
                            <label><b>Month: </b></label>
                            <asp:DropDownList ID="drpsMonth" runat="server" AutoPostBack="false">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>01</asp:ListItem>
                                <asp:ListItem>02</asp:ListItem>
                                <asp:ListItem>03</asp:ListItem>
                                <asp:ListItem>04</asp:ListItem>
                                <asp:ListItem>05</asp:ListItem>
                                <asp:ListItem>06</asp:ListItem>
                                <asp:ListItem>07</asp:ListItem>
                                <asp:ListItem>08</asp:ListItem>
                                <asp:ListItem>09</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                            </asp:DropDownList>
                        </td>


                        <td style="width: 10%; margin: 0px; padding: 0px;">
                            <label><b>Date: </b></label>
                            <asp:DropDownList ID="drpsDate" runat="server" AutoPostBack="false">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>01</asp:ListItem>
                                <asp:ListItem>02</asp:ListItem>
                                <asp:ListItem>03</asp:ListItem>
                                <asp:ListItem>04</asp:ListItem>
                                <asp:ListItem>05</asp:ListItem>
                                <asp:ListItem>06</asp:ListItem>
                                <asp:ListItem>07</asp:ListItem>
                                <asp:ListItem>08</asp:ListItem>
                                <asp:ListItem>09</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>
                                <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>29</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>31</asp:ListItem>
                            </asp:DropDownList>
                        </td>

                        <td style="width: 10%">
                             <label><b>Year: </b></label>
                            <asp:DropDownList ID="drpsYear" runat="server" AutoPostBack="false">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>2014</asp:ListItem>
                                <asp:ListItem>2015</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 20%"></td>
                    </tr>

                    <tr>
                        <td></td>
                        <td>
                            <label><b>End Date:</b> </label>
                        </td>


                        <td>
                            <label><b>Month: </b></label>
                            <asp:DropDownList ID="drpeMonth" runat="server" AutoPostBack="false">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>01</asp:ListItem>
                                <asp:ListItem>02</asp:ListItem>
                                <asp:ListItem>03</asp:ListItem>
                                <asp:ListItem>04</asp:ListItem>
                                <asp:ListItem>05</asp:ListItem>
                                <asp:ListItem>06</asp:ListItem>
                                <asp:ListItem>07</asp:ListItem>
                                <asp:ListItem>08</asp:ListItem>
                                <asp:ListItem>09</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                            </asp:DropDownList>
                        </td>

                        
                        <td>
                            <label><b>Date: </b></label>
                            <asp:DropDownList ID="drpeDate" runat="server" AutoPostBack="false">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>01</asp:ListItem>
                                <asp:ListItem>02</asp:ListItem>
                                <asp:ListItem>03</asp:ListItem>
                                <asp:ListItem>04</asp:ListItem>
                                <asp:ListItem>05</asp:ListItem>
                                <asp:ListItem>06</asp:ListItem>
                                <asp:ListItem>07</asp:ListItem>
                                <asp:ListItem>08</asp:ListItem>
                                <asp:ListItem>09</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>
                                <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>29</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>31</asp:ListItem>
                            </asp:DropDownList>
                        </td>

                        <td>
                            <label><b>Year: </b></label>
                            <asp:DropDownList ID="drpYear" runat="server" AutoPostBack="false">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>2014</asp:ListItem>
                                <asp:ListItem>2015</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td></td>
                    </tr>

                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>

                        <td colspan="4" style="padding-left: 20px;">
                            <asp:Button id="GetHistory"  Font-Size="15px" Text="Get Prices" runat="server" OnClick="GetHistory_Click" />
                        </td>

                    </tr>
                    <tr>
                        <td colspan="6">

                            <p style="height: 10px; padding: 0px; margin: 0px;"></p>

                        </td>

                    </tr>
                </table>
    <asp:TextBox runat="server" ID="stockDate" ClientIDMode="Static" style="display:none;" />
    <asp:TextBox runat="server" ID="stockPrice" ClientIDMode="Static" style="display:none;" />
    <asp:Panel  id ="container1" runat="server" Visible="false">
    <div id ="container" style="min-width: 310px; height: 400px; margin: 0 auto;" >

    </div>
        </asp:Panel>
</asp:Content>
