<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Query.aspx.cs" Inherits="StockPredictor.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="100%" cellspacing="5" cellpadding="0px" border="0" style="background: #E6E6E6 repeat; margin: 0px 0px;">
                    <caption>
                        <h2>Custom Queries for further help</h2>
                    </caption>
                    <tr>
                        <td colspan="6">

                            <p style="height: 10px; padding: 0px; margin: 0px;"></p>

                        </td>

                    </tr>
                    <tr>
                        <td></td>
              
                        <td >
                            <label><b>Choose Your Question: &nbsp;</b> </label>
                        </td>

                        <td></td>

                        <td colspan="3">
                            <asp:DropDownList ID="drpticker" runat="server" AutoPostBack="false" OnSelectedIndexChanged="drpticker_SelectedIndexChanged">
                                <asp:ListItem>Get the highest stock price of Google in the last ten days</asp:ListItem>
                                <asp:ListItem>Average stock price of Microsoft in the latest one year</asp:ListItem>
                                <asp:ListItem>Lowest stock price for each company in the latest one year</asp:ListItem>
                                <asp:ListItem>List the ids of companies along with their name who have the average stock price lesser than the
lowest of Google in the latest one year</asp:ListItem>
                              </asp:DropDownList>
                        </td>
                        <td><asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label></td>
                        <td></td>
                      </tr>
        <tr>
                        <td></td>
                        <td></td>
                        <td></td>

                        <td colspan="4" style="padding-left: 20px;">
                            <asp:Button id="GetRecommendation"  Font-Size="15px" Text="Get Result" runat="server" OnClick="GetRecommendation_Click" />
                        </td>
                </tr>
        <tr>
                        <td colspan="6">

                            <p style="height: 10px; padding: 0px; margin: 0px;"></p>

                        </td>

                    </tr>
                 </table>
</asp:Content>
