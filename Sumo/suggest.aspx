<%@ Page Title="suggest a trip" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="suggest.aspx.vb" Inherits="Sumo.suggest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="page-message">
        <div class="inner">
            <p>
                Suggest a trip &ndash; let's get started!
            </p>
        </div>
    </div>
    <div class="content-break"></div>
    <div class="suggest-content">
        <div class="suggest-container">
            <div class="suggest-item clearfix">
                <div class="suggest-label">
                    <label>Destination</label>
                </div>
                <div class="suggest-form">
                    <asp:TextBox runat="server" ID="txtDestination"></asp:TextBox>
                    <p>Where do you want to go? Enter the destination city &ndash; suggesting a larger city will increase the chances your trip will go live</p>
                </div>
            </div>
            <div class="suggest-item clearfix">
                <div class="suggest-label">
                    <label>Origin</label>
                </div>
                <div class="suggest-form">
                    <asp:TextBox runat="server" ID="txtOrigin"></asp:TextBox>
                    <p>Where to leave from? Enter the city of orgin &ndash; suggesting a larger city will increase the chances your trip will go live.</p>
                </div>
            </div>
            <div class="suggest-item clearfix">
                <div class="suggest-label">
                    <label>Trip date</label>
                </div>
                <div class="suggest-form">
                    <asp:TextBox runat="server" ID="TextBox2"></asp:TextBox>
                    <p>When will this trip happen? Day trips &ndash; roadsumo currently only provides day trips. We are working tirelessly to expand the trip length as well as our services.</p>
                </div>
            </div>
            <div class="suggest-item clearfix">
                <div class="suggest-label">
                    <label>Description</label>
                </div>
                <div class="suggest-form">
                    <asp:TextBox runat="server" ID="TextBox3"></asp:TextBox>
                    <p>Why do you want to go? Leave a quick blurb about the purpose for your trip &ndash; describe events/activities at the destination.</p>
                </div>
            </div>
            <div class="suggest-item clearfix">
                <div class="suggest-label">
                    <label>Stir duration</label>
                </div>
                <div class="suggest-form">
                    <asp:TextBox runat="server" ID="TextBox1"></asp:TextBox>
                    <p>How long do you want to keep this suggestion open? We recommend that suggestions remain active for less than 14 days and closes at least 7 days before the trip date &ndash; provide time for planning the best route.</p>
                </div>
            </div>
            <div class="suggest-action">
                <asp:Button ID="btnSuggest" runat="server" Text="suggest" />
            </div>
        </div>
    </div>
</asp:Content>
