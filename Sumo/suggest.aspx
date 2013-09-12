<%@ Page Title="suggest a trip" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="suggest.aspx.vb" Inherits="Sumo.suggest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="suggest-trip">
        Origin: <asp:TextBox ID="txtOrigin" runat="server"></asp:TextBox>
        <br />
        Destination: <asp:TextBox ID="txtDestination" runat="server"></asp:TextBox>
        <br />
        Trip Date: <asp:TextBox ID="txtTripDate" runat="server"></asp:TextBox>
        <br />
        Description: <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
        <br />
        Length of Suggestion: <asp:TextBox ID="txtSuggest_life" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnSave_Suggest" runat="server" style="background:green;" Text="SAVE" />
    </div>
</asp:Content>
