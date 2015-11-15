<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TrendingStock.aspx.cs" Inherits="StockPredictor.TopLooser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center" width="50%" cellspacing="5" cellpadding="7px" border="0" style="background: #E6E6E6 repeat; margin-bottom:20px;">
        <caption>
            <h2>Top Looser & Gainer of the Day</h2>
        </caption>
        
        <tr>
            <td colspan="6"></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <label><b>Day's Top Gainer:</b> </label>
            </td>
            <td>
                <asp:Label ID="lblGainerStock" runat="server" Text="lblStock" Visible="true"></asp:Label>
            </td>
            <td>
                <asp:Label ID="GainerDollarChange" runat="server" Text="DollarChange" Visible="true"></asp:Label>
            </td>
            <td>
                <asp:Label ID="GainerPercentage_Change" runat="server" Text="Percentage_Change" Visible="true"></asp:Label>
            </td>
            <td></td>
        </tr>
        <tr>
            <td colspan="6"></td>
        </tr>
        <tr>
            <td></td>
             <td>
                <label><b>Day's Top Looser:</b> </label>
            </td>
            <td>
                <asp:Label ID="lblLooserStock" runat="server" Text="lblStock" Visible="true"></asp:Label>
            </td>
            <td>
                <asp:Label ID="LooserDollarChange" runat="server" Text="DollarChange" Visible="true"></asp:Label>
            </td>
            <td>
                <asp:Label ID="LooserPercentageChange" runat="server" Text="Percentage_Change" Visible="true"></asp:Label>
            </td>
            <td></td>
        </tr>
        <tr>
            <td colspan="6"></td>
        </tr>
    </table>
</asp:Content>
