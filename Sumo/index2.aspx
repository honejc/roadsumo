<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index2.aspx.vb" Inherits="Sumo.index2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>roadsumo layout 2</title>
    <link href="~/Content/sumo2.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="header">
        <div class="header-inner shadow">
            <div class="container clearfix">
                <div class="slots logo">
                    <p id="header-logo">roadsumo</p>
                </div>
                <div class="slots menu">
                    <ul id="nav">
                        <li>
                            <a href="index2">home</a>
                        </li>
                        <li>
                            <a href="index2">about</a>
                        </li>
                        <li>
                            <a href="index2">contact</a>
                        </li>
                    </ul>
                </div>
                <div class="slots prof">
                    <div class="prof-container clearfix">
                        <div class="prof-name">
                            <a href="index">sQuijew</a>
                        </div>
                        <div class="prof-pic"></div>
                    </div>
                </div>
            </div>    
        </div>
    </div>
    <div id="main">
        <div class="sidebar">
            <div class="suggest">
                <asp:Button ID="btnSuggest" runat="server" Text="suggest" />
                <asp:Button ID="Button1" runat="server" Text="hone" />
                <asp:Button ID="Button2" runat="server" Text="roadstir" />
                <asp:Button ID="Button3" runat="server" Text="mei mei" />
                <asp:Button ID="Button4" runat="server" Text="emilee" />
            </div>
        </div>  
        <div class="main-inner">
            <div class="main-content">
                <div class="search">
                    <asp:TextBox ID="txtSearch" runat="server" placeholder="search for desired destination..."></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="search" />
                </div>    
                <div class="content-break"></div>
                <div class="panel">
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
                                        <%# DataBinder.Eval(Container.DataItem, "committed")%> /
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
                    <div class="section-break"></div>
                </div>
            </div>
        </div>        
    </div>
    <div class="clearfix"></div>
    <div class="section-break"></div>
    <div id="footer">
        <div class="footer-inner">%footer</div>
    </div>
    </form>
</body>
</html>
