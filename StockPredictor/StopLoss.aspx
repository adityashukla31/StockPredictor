<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StopLoss.aspx.cs" Inherits="StockPredictor.StopLoss" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" width="27%" cellspacing="5" cellpadding="5px" border="0" style="background: #E6E6E6 repeat; margin-bottom: 20px; margin-top: 20px;">
        <caption>
            <h2>Stop Loss/Book Profit Recommendations</h2>
        </caption>
        <tr>
            <td colspan="4">
            </td>
        </tr>
        <tr>
            <td style="padding-right:40px;"> </td>
            <td>
                <asp:label Text = "Ticker Picker:" runat="server"></asp:label>
            </td>
            <td>
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
            <td style="padding-left:40px;"> </td>
        </tr>
        <tr>           
            <td colspan="4" align="center">
                <asp:Button ID="GetRecommendation" Font-Size="15px" Text="Get Recommendation" runat="server" OnClick="GetRecommendation_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
            </td>
        </tr>
    </table>
    <div align="center">
    <asp:Label cellspacing="5" align="center"  ID="lblLossOrProfit" runat="server" Text="Label" Visible="false"></asp:Label>
    <asp:Label cellspacing="5" align="center" ID="lblRecomendationPrice" runat="server" Text="Label" Visible="false"></asp:Label>
        </div>
</asp:Content>
