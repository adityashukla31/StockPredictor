<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prediction.aspx.cs" Inherits="StockPredictor.Prediction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center" width="35%" style="background: #E6E6E6 repeat">
        <caption>
            <h2>Short/Long Term Recommendations</h2>
        </caption>
        <tr>
            <td colspan="4"></td>
        </tr>

        <tr>
            <td style="padding-right:50px;"></td>
            <td>
                <asp:Label runat="server" Text="Ticker Picker: "></asp:Label></td>
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
            <td style="padding-left:20px;"></td>
        </tr>
        <tr>
            <td colspan="4"></td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                <asp:Button ID="GetShortTermPred" Font-Size="15px" Text="Short Term " runat="server" OnClick="GetShortTermPred_Click" />
                <asp:Button ID="GetLongTermPred" Font-Size="15px" Text="Long Term" runat="server" OnClick="GetLongTermPred_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="4"></td>
        </tr>

    </table>
    <asp:Panel ID="pnl1" runat="server" Visible="false">
    <asp:Table ID="Table1" align="center" runat="server">
        <asp:TableHeaderRow ID="TableHeaderRow1" runat="server" ForeColor="black">
            <asp:TableHeaderCell Width="100px">Minutes</asp:TableHeaderCell>
            <asp:TableHeaderCell Width="130px">Predicted Price</asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow ID="TableRow1" align="center" runat="server" ForeColor="Teal">
            <asp:TableCell></asp:TableCell>
            <asp:TableCell></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="TableRow2" align="center" runat="server" ForeColor="Teal">
            <asp:TableCell></asp:TableCell>
            <asp:TableCell></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="TableRow3" align="center" runat="server" ForeColor="Teal">
            <asp:TableCell></asp:TableCell>
            <asp:TableCell></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="TableRow4" runat="server" align="center" ForeColor="Teal">
            <asp:TableCell></asp:TableCell>
            <asp:TableCell></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="TableRow5" runat="server" align="center" ForeColor="Teal">
            <asp:TableCell></asp:TableCell>
            <asp:TableCell></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="TableRow6" runat="server" align="center" ForeColor="Teal">
            <asp:TableCell></asp:TableCell>
            <asp:TableCell></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="TableRow7" runat="server" align="center" ForeColor="Teal">
            <asp:TableCell></asp:TableCell>
            <asp:TableCell></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="TableRow8" runat="server" align="center" ForeColor="Teal">
            <asp:TableCell></asp:TableCell>
            <asp:TableCell></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="TableRow9" runat="server" align="center" ForeColor="Teal">
            <asp:TableCell></asp:TableCell>
            <asp:TableCell></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="TableRow10" runat="server" align="center" ForeColor="Teal">
            <asp:TableCell></asp:TableCell>
            <asp:TableCell></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
   </asp:Panel>
    <div align="center"  style="padding-top:30px">
     <asp:Label runat="server" ID="lbllongterm" align="center" Visible="false"></asp:Label>
        </div>
</asp:Content>
