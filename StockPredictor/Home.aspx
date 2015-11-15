<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="StockPredictor.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table align="center" width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-top: 20px;">
        <tr style="height: 220px;">
            <td>
                <h2>Current Quotes</h2>
                <asp:Table ID="Table1" align="center" runat="server">
                    <asp:TableHeaderRow ID="TableHeaderRow1" runat="server" ForeColor="black">
                        <asp:TableHeaderCell Width="100px">Symbol</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="100px">Price</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="130px">Change</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="100px">% Change</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow ID="TableRow1" align="center" runat="server" ForeColor="Teal">
                        <asp:TableCell>
                            <asp:HyperLink ID="HyperLink" runat="server" Text="AAPL" NavigateUrl="~/Stock.aspx?Quote=AAPL" ToolTip="Apple"></asp:HyperLink>
                        </asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow2" align="center" runat="server" ForeColor="Teal">
                        <asp:TableCell>
                            <asp:HyperLink ID="HyperLink1" runat="server" Text="AMZN" NavigateUrl="~/Stock.aspx?Quote=AMZN" ToolTip="Amazon"></asp:HyperLink>
                        </asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow3" align="center" runat="server" ForeColor="Teal">
                        <asp:TableCell>
                            <asp:HyperLink ID="HyperLink2" runat="server" Text="BBY" NavigateUrl="~/Stock.aspx?Quote=BBY" ToolTip="Best Buy"></asp:HyperLink>
                        </asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow4" runat="server" align="center" ForeColor="Teal">
                        <asp:TableCell>
                            <asp:HyperLink ID="HyperLink3" runat="server" Text="EBAY" NavigateUrl="~/Stock.aspx?Quote=EBAY" ToolTip="Ebay"></asp:HyperLink>
                        </asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow5" runat="server" align="center" ForeColor="Teal">
                        <asp:TableCell>
                            <asp:HyperLink ID="HyperLink4" runat="server" Text="FB" NavigateUrl="~/Stock.aspx?Quote=FB" ToolTip="FaceBook"></asp:HyperLink>
                        </asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow6" runat="server" align="center" ForeColor="Teal">
                        <asp:TableCell>
                            <asp:HyperLink ID="HyperLink5" runat="server" Text="GOOG" NavigateUrl="~/Stock.aspx?Quote=GOOG" ToolTip="Google"></asp:HyperLink>
                        </asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow7" runat="server" align="center" ForeColor="Teal">
                        <asp:TableCell>
                            <asp:HyperLink ID="HyperLink6" runat="server" Text="LNKD" NavigateUrl="~/Stock.aspx?Quote=LNKD" ToolTip="LinkedIn"></asp:HyperLink>
                        </asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow8" runat="server" align="center" ForeColor="Teal">
                        <asp:TableCell>
                            <asp:HyperLink ID="HyperLink7" runat="server" Text="MSFT" NavigateUrl="~/Stock.aspx?Quote=MSFT" ToolTip="Microsoft"></asp:HyperLink>
                        </asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow9" runat="server" align="center" ForeColor="Teal">
                        <asp:TableCell>
                            <asp:HyperLink ID="HyperLink8" runat="server" Text="TWTR" NavigateUrl="~/Stock.aspx?Quote=TWTR" ToolTip="Twitter"></asp:HyperLink>
                        </asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow10" runat="server" align="center" ForeColor="Teal">
                        <asp:TableCell>
                            <asp:HyperLink ID="HyperLink9" runat="server" Text="YHOO" NavigateUrl="~/Stock.aspx?Quote=YHOO" ToolTip="Yahoo"></asp:HyperLink>
                        </asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                    </asp:TableRow>
               </asp:Table>
            </td>
        </tr>
        <tr>
            <td>
                <p style="height: 30px; padding: 0px; margin: 0px;"></p>
            </td>
        </tr>
    </table>
</asp:Content>
