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
                <ul>                    
                    <li class="detail-container">
                        <asp:Label ID="lblDestination" runat="server"></asp:Label>
                        <p>destination</p>
                    </li>
                    <li class="detail-container">
                        <asp:Label ID="lblOrigin" runat="server"></asp:Label>
                        <p>origin</p>
                    </li>
                    <li class="detail-container">
                        <asp:Label ID="lblTripDate" runat="server"></asp:Label>
                        <p>trip date</p>
                    </li>
                    <li class="detail-container">
                        <asp:Label ID="lblDescription" runat="server"></asp:Label>
                        <p>stops</p>
                    </li>
                    <li class="detail-container">
                        <asp:Label ID="Label3" runat="server">route stops</asp:Label>
                        <p>stops</p>
                    </li>
                </ul>
            </div>
            <div class="trip-action">
                <div class="action-container">
                    <div class="meta price">
                        <asp:Label ID="lblPrice" runat="server"></asp:Label>
                        <p>per person</p>
                    </div>
                    <div class="meta committed">
                        <asp:Label ID="lblCommitted" runat="server"></asp:Label>
                        <p>committed</p>
                    </div>
                    <div class="meta time-left">
                        <asp:Label ID="lblRemaining" runat="server"></asp:Label>
                        <p>remaining</p>
                    </div>
                    <input type="submit" value="commit" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
