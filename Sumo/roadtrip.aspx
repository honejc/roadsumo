<%@ Page Title="trip details" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="roadtrip.aspx.vb" Inherits="Sumo.roadtrip" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content-break"></div>
    <div class="trip-map">
        <iframe width="740" height="400" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps?sll=38.92910699999967,-77.2006934790411&amp;sspn=0.006802770144090929,0.015451001364840837&amp;saddr=4050+Legato+Rd,+Fairfax,+VA+22033&amp;t=m&amp;daddr=7430+Hallcrest+Dr,+McLean,+VA+22102&amp;dirflg=d&amp;dg=opt&amp;ie=UTF8&amp;geocode=FXcLUQIdyoNj-ylVEwqBRE-2iTE13nY9AAXEmA%3BFdMCUgId1AJm-ynBYOiltkq2iTEHBidv9mPu_Q&amp;ll=38.89611,-77.282295&amp;spn=0.106881,0.253716&amp;z=12&amp;output=embed"></iframe>
    </div>
    <div class="content-break"></div>
    <div class="trip-summary">
        <div class="panel clearfix">
            <div class="trip-details">
                <div class="detail-container">
                    <div>Destination: McLean, VA</div>
                    <div>Origin: Chantilly, VA</div>
                    <div>Date: 19 Sep 2013</div>
                    <div>Route: list stops here</div>
                </div>
            </div>
            <div class="trip-action">
                <div class="action-container">
                    <div class="meta price">
                        <asp:Label ID="lblPrice" runat="server">$30</asp:Label>
                        <p>per person</p>
                    </div>
                    <div class="meta committed">
                        <asp:Label ID="lblCommitted" runat="server">4 of 8</asp:Label>
                        <p>committed</p>
                    </div>
                    <div class="meta time-left">
                        <asp:Label ID="lblTimeleft" runat="server">7 d</asp:Label>
                        <p>remaining</p>
                    </div>
                    <input type="submit" value="commit" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
