<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="main.aspx.vb" Inherits="Squilla.main" %>
<%@ Register assembly="GMaps" namespace="Subgurim.Controles" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
    
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    
        <cc1:GMap ID="GMap1" runat="server" DataGIconAnchorField="" DataGIconImageField="" DataGIconShadowField="" DataGIconShadowSizeField="" DataGIconSizeField="" DataGInfoWindowAnchorField="" DataGInfoWindowTextField="" DataSourceID="SqlDataSource1" enableGetGMapElementById="True" enablePostBackPersistence="True" Height="360px" Libraries="None" Version="2" Width="100%" DataLatField="lat_event" DataLngField="lon_event" enableGoogleBar="True" enableGTrafficOverlay="True" enableHookMouseWheelToZoom="True" enableRotation="True" Key="AIzaSyDegqf_iDr4xhKvIrlkCEYpxTcoF2p92ns " />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:webavldbCS %>" SelectCommand="SELECT [cod_event], [evento], [datetime_event], [entidad], [lat_event], [lon_event], [address_event], [calc_addr_event], [serial_ent], [INFOWINDOW_EVENT], [cod_ent], [Image], [Shadow], [Size], [anchor], [ShadowSize], [cmd_event], [LastEditDate], [CreationDate] FROM [GAL_1680] ORDER BY [datetime_event] DESC"></asp:SqlDataSource>

</form>
</asp:Content>
    
