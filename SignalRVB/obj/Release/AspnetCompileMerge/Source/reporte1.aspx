<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="reporte1.aspx.vb" Inherits="Squilla.reporte1" %>

<%@ Register assembly="GMaps" namespace="Subgurim.Controles" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>AVL - Rastreo de Vehículos TRAINCA</title>
    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
    <script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
    <link href="Styles/calendar-blue.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%=TextBox1.ClientID %>").dynDateTime({
                showsTime: true,
                ifFormat: "%Y/%m/%d %H:%M",
                daFormat: "%l;%M %p, %e %m,  %Y",
                align: "BR",
                electric: false,
                singleClick: false,
                displayArea: ".siblings('.dtcDisplayArea')",
                button: ".next()"
            });
        });
        $(document).ready(function () {
            $("#<%=TextBox2.ClientID%>").dynDateTime({
                showsTime: true,
                ifFormat: "%Y/%m/%d %H:%M",
                daFormat: "%l;%M %p, %e %m,  %Y",
                align: "BR",
                electric: false,
                singleClick: false,
                displayArea: ".siblings('.dtcDisplayArea')",
                button: ".next()"
            });
        });
    </script>
    <style type="text/css">
        .auto-style2 {
            width: 201px;
            height: 299px;
        }
        .auto-style3 {
            width: 201px;
            height: 63px;
        }
        .auto-style4 {
            height: 288px;
        }
        .auto-style5 {
            width: 201px;
            height: 288px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <table style="width:100%;">
                <tr>
                    <td class="auto-style9" rowspan="2">
                        <asp:Image ID="Image5" runat="server" Height="79px" ImageUrl="~/Images/logo-app.png" Width="168px" />
                    </td>
                    <td class="auto-style19" colspan="4">
                        <asp:Image ID="Image6" runat="server" Height="59px" ImageUrl="~/Images/cintillo_squilla.png" Width="100%" />
                    </td>
                  </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/default.aspx">Monitoreo</asp:HyperLink>
                    </td>
                    <td class="auto-style19">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/reporte1.aspx">Reportes</asp:HyperLink>
                    </td>
                    <td class="auto-style19">
                        &nbsp;</td>
                    <td class="auto-style19">
                        &nbsp;</td>
                  </tr>
            </table>

        <table style="width:100%;">
            <tr>
                <td class="auto-style2" aria-multiline="True" aria-orientation="vertical">
                            <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="XX-Small" Text="Entidad a Consultar:"></asp:Label>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="DES_ENT" DataValueField="COD_ENT" Width="127px">
                            </asp:DropDownList>
                            <br />
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Galileo_MSSQL_DBConnectionString2 %>" SelectCommand="SELECT GAL_1300.COD_ENT, GAL_1300.DESC_ENT, GAL_1300.DES_ENT, GAL_1300.PLACAS_ENT, GAL_1300.COLOR_ENT, GAL_1300.AÑO_ENT, GAL_1300.ICONO_ENT, GAL_1300.cod_fleet, GAL_1300.SERHEX_ENT, GAL_1300.SERIAL_ENT, GAL_1300.connect_state, GAL_1300.index_tcp, GAL_1300.cod_op, GAL_1300.cod_tveh, GAL_1300.eco_ent, GAL_1300.tel_sim_ent, GAL_1300.ser_sim_ent, GAL_1300.cod_eq, GAL_1100.COD_USU FROM GAL_1100 INNER JOIN GAL_1310 ON GAL_1100.COD_USU = GAL_1310.cod_usu INNER JOIN GAL_1300 ON GAL_1310.cod_ent = GAL_1300.COD_ENT WHERE (GAL_1100.COD_USU = @cod_usu)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="cod_usu" SessionField="GlobalEnt" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="XX-Small" Text="Fecha Inicio:"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/calender.png" />
                            <br />
                            <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="XX-Small" Text="Fecha Fin:"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/calender.png" />
                            <br />
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Procesar" />
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Galileo_MSSQL_DBConnectionString %>" SelectCommand="SELECT COD_EVENT, COD_TEVENT, DATETIME_EVENT, COD_ENT, LAT_EVENT, LON_EVENT, CURSO_EVENT, ALTITUD_EVENT, PTA2_EVENT, PTA1_EVENT, MOTOR_EVENT, ENCENDIDO_EVENT, ADDRESS_EVENT, VELOCITY_EVENT, odometer_event, calc_addr_event, infowindow_event, Anchor, Image, Shadow, ShadowSize, Size FROM GAL_1600 WHERE (COD_ENT = @cod_ent) AND (DATETIME_EVENT &gt;= @datetime_event1) AND (DATETIME_EVENT &lt;= @datetime_event2)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="cod_ent" PropertyName="SelectedValue" />
                                    <asp:SessionParameter DefaultValue="" Name="datetime_event1" SessionField="GlobalFecDesde" Type="DateTime" />
                                    <asp:SessionParameter DefaultValue="" Name="datetime_event2" SessionField="GlobalFecHasta" Type="DateTime" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                </td>
                <td rowspan="2">
                            <cc1:GMap ID="GMap1" runat="server" Height="360px" Width="100%" DataGIconAnchorField="" DataGIconImageField="" DataGIconShadowField="" DataGIconShadowSizeField="" DataGIconSizeField="" DataGInfoWindowAnchorField="" DataGInfoWindowTextField="infowindow_event" DataLatField="LAT_EVENT" DataLngField="LON_EVENT" DataSourceType="PolylinesAndMarkers" enableGetGMapElementById="True" enablePostBackPersistence="True" Key=" AIzaSyDegqf_iDr4xhKvIrlkCEYpxTcoF2p92ns " Libraries="None" Version="2" enableGoogleBar="True" enableHookMouseWheelToZoom="True" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
        
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style4">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COD_EVENT" style="margin-top: 0px" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" Font-Names="Arial" Font-Size="X-Small" GridLines="Vertical" Visible="False" Width="100%">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/Images/map-push-pin.gif" ShowSelectButton="True" />
                                    <asp:BoundField DataField="DATETIME_EVENT" HeaderText="Fecha y Hora" SortExpression="DATETIME_EVENT" />
                                    <asp:BoundField DataField="LAT_EVENT" HeaderText="Latitud" SortExpression="LAT_EVENT" />
                                    <asp:BoundField DataField="LON_EVENT" HeaderText="Longitud" SortExpression="LON_EVENT" />
                                    <asp:BoundField DataField="ADDRESS_EVENT" HeaderText="Dirección (Calculada)" SortExpression="ADDRESS_EVENT" />
                                    <asp:BoundField DataField="VELOCITY_EVENT" HeaderText="Velocidad" SortExpression="VELOCITY_EVENT" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Galileo_MSSQL_DBConnectionString3 %>" SelectCommand="SELECT * FROM [GAL_1680]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        			
    <div>
    
    </div>
    </form>
</body>
</html>
