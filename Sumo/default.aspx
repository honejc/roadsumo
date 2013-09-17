<%@ Page Title="welcome to roadsumo" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="default.aspx.vb" Inherits="Sumo.home" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">   
    <div class="content-break"></div>
    <div class="search">
        <asp:TextBox ID="TextBox1" runat="server" placeholder="search for desired destination..."></asp:TextBox>
        <asp:Button ID="Button5" runat="server" Text="search" />
    </div>    
    <div class="content-break"></div>
    <div class="destination-master panel">
        <div class="subheader">
            <h1>Active Suggestions</h1>  
        </div>      
        <asp:Repeater ID="rptr_SuggestionList" runat="server">
            <HeaderTemplate>
                <div class="destination-list">
            </HeaderTemplate>
            <ItemTemplate>
                <div class="destination-item clearfix">
                    <div class="meta-info committed">
                        <p>
                            <%# DataBinder.Eval(Container.DataItem, "committed")%> of
                            <%# DataBinder.Eval(Container.DataItem, "total")%>
                        </p>
                        <label>committed</label>
                    </div>
                    <div class="meta-info price">
                        <p>
                            $<%# DataBinder.Eval(Container.DataItem, "price")%>
                        </p>
                        <label>person</label>
                    </div>
                    <div class="meta-info time-left">
                        <p>
                            <%# DataBinder.Eval(Container.DataItem, "remaining")%> d
                        </p>
                        <label>remaining</label>
                    </div>
                    <div class="summary">
                        <div class="summary-container">
                            <label class="destination">
                                <%# DataBinder.Eval(Container.DataItem, "destination")%>
                            </label>
                            <label class="origin">
                                from <%# DataBinder.Eval(Container.DataItem, "origin")%>
                            </label>
                            <p class="trip-date">
                                <%# DataBinder.Eval(Container.DataItem, "tripdate")%>
                            </p>
                        </div>
                    </div>
                    <div class="see-details">
                        <asp:Button ID="btnSeeDetails" runat="server" Text=">" />
                    </div>
                </div>
            </ItemTemplate>
            <FooterTemplate>
                </div>
            </FooterTemplate>
        </asp:Repeater>    
    </div>
</asp:Content>
