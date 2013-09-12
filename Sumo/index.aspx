<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="Sumo.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>welcome to roadsumo</title>
    <link href="~/Content/sumo.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="main">
        <div class="main-inner">
            <div id="sidebar">
                <div class="sidebar-inner">
                    <div class="logo shadow">
                        <a href="index">roadsumo</a>
                    </div>
                    <div class="menu">
                        <ul id="nav">
                            <li>
                                <a href="index">home</a>
                            </li>
                            <li>
                                <a href="index">about</a>
                            </li>
                            <li>
                                <a href="index">contact</a>
                            </li>
                            <li>
                                <a href="index">suggest</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>         
            <div class="main-content">   
                <div class="search">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="search for desired destination..."></asp:TextBox>
                    <asp:Button ID="Button5" runat="server" Text="search" />
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
            </div>
        </div>        
    </div>
    <div class="clearfix"></div>
    <div class="section-break"></div>
    </form>
</body>
</html>