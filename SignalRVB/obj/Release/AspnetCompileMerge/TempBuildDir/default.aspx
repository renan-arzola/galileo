<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="Squilla._default" %>



<%@ Register assembly="GMaps" namespace="Subgurim.Controles" tagprefix="cc1" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="UTF-8"/>
	
	<title>AVL - Rastreo de Vehículos TRAINCA</title>
	
    
    <script type="text/javascript">

       ImageButton1.onkeydown = function (evt) { return (evt ? evt.which : event.keyCode) != 13; }

</script>
    <style type="text/css">
        .auto-style1 {
            width: 261px;
        }
    </style>
</head>
<body onkeypress="return disableKeyPress(event)">
    <form id="form1" runat="server" defaultbutton="DoNothing">
        <input type="hidden" id="displayname" />
        <audio id="sonido" src="~/squilla/Resources/alerta1.mp3" >
        </audio>
        <table style="width:100%;">
                <tr>
                    <td class="auto-style9" rowspan="2">
                        <asp:Image ID="Image5" runat="server" Height="79px" ImageUrl="~/Images/logo-app.png" Width="168px" />
                    </td>
                    <td class="auto-style19" colspan="4">
                        <asp:Image ID="Image6" runat="server" Height="59px" ImageUrl="~/Images/cintillo_squilla.png" Width="100%" />
                    </td>
                    <td class="auto-style19">
                        <asp:ImageButton type="button" ID="ImageButton1" runat="server" Height="60px" ImageAlign="Bottom" ImageUrl="~/Images/icone-ajustes.png" ToolTip="Perfil de Usuario" Width="60px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/default.aspx">Monitoreo</asp:HyperLink>
                    </td>
                    <td class="auto-style19">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/reporte1.aspx">Reportes</asp:HyperLink>
                    </td>
                    <td class="auto-style19">
                        &nbsp;</td>
                    <td class="auto-style19">
                        &nbsp;</td>
                    <td class="auto-style19">
                        &nbsp;</td>
                </tr>
            </table>
        
        			<table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:GridView Width="259px" ID="gvImages" runat="server" AutoGenerateColumns="False" CellPadding="4" GridLines="None" Height="56px" PageSize="4" ForeColor="#333333" ShowHeader="False" >
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="30px" Width="30px" ImageUrl='<%# "ImageHandler1.ashx?ImID=" & Eval("COD_USU")%>'/>
                                </ItemTemplate>
                                <HeaderStyle Font-Bold="True" Font-Names="Arial" Font-Size="Small" />
                                <ItemStyle Width="30px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="DES_USU" >
                            <ItemStyle Font-Names="Arial" Font-Size="X-Small" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    </td>
                <td rowspan="2">
                            <cc1:GMap ID="GMap1" runat="server" DataGIconAnchorField="" DataGIconImageField="" DataGIconShadowField="" DataGIconShadowSizeField="" DataGIconSizeField="" DataGInfoWindowAnchorField="" DataGInfoWindowTextField="" DataSourceID="SqlDataSource1" enableGetGMapElementById="True" enablePostBackPersistence="True" Height="360px" Libraries="None" Version="2" Width="100%" DataLatField="lat_event" DataLngField="lon_event" enableGoogleBar="True" enableGTrafficOverlay="True" enableHookMouseWheelToZoom="True" enableRotation="True" Key="AIzaSyDegqf_iDr4xhKvIrlkCEYpxTcoF2p92ns " />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:webavldbCS %>" SelectCommand="SELECT [cod_event], [evento], [datetime_event], [entidad], [lat_event], [lon_event], [address_event], [calc_addr_event], [serial_ent], [INFOWINDOW_EVENT], [cod_ent], [Image], [Shadow], [Size], [anchor], [ShadowSize], [cmd_event], [LastEditDate], [CreationDate] FROM [GAL_1680] ORDER BY [datetime_event] DESC"></asp:SqlDataSource>
                            
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
        <audio id="player" src="Resources/alerta1.mp3"> </audio>            
        <input type="text" id="message" /><input type="button" id="sendmessage" value="Enviar" />
        <asp:Button ID="DoNothing" runat="server" Enabled="false" style="display: none;" />            
                    <div style="overflow:auto;width:259px;height:200px;">
                        <ul id="discussion">
                            
                        </ul>
                    </div> 

                </td>
            </tr>
            <tr>
                <td class="auto-style1"><strong>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cod_event" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="259px">
                        <Columns>
                            <asp:BoundField DataField="entidad" HeaderText=" Alertas Anteriores" SortExpression="entidad" >
                            <HeaderStyle Font-Bold="True" Font-Names="Arial" Font-Size="Small" />
                            <ItemStyle Font-Names="Arial" Font-Size="Small" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:webavldbCS %>" SelectCommand="SELECT [cod_event], [evento], [datetime_event], [entidad], [lat_event], [lon_event], [address_event], [calc_addr_event], [serial_ent], [INFOWINDOW_EVENT], [cod_ent], [Image], [Shadow], [Size], [anchor], [ShadowSize], [cmd_event], [LastEditDate], [CreationDate] FROM [GAL_1680] where [evento] = 'Pánico' AND [calc_addr_event] = 1 AND DATEADD(dd, DATEDIFF(dd, 0, [datetime_event]), 0) = DATEADD(dd, DATEDIFF(dd, 0, getdate()), 0) ORDER BY [entidad]"></asp:SqlDataSource>
                    </strong></td>
                <td>
                            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="cod_event" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="100%">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/Images/map-push-pin.gif" />
                                    <asp:BoundField DataField="entidad" HeaderText="Entidad" SortExpression="entidad" >
                                    <HeaderStyle Font-Names="Arial" Font-Size="XX-Small" />
                                    <ItemStyle Font-Names="Arial" Font-Size="XX-Small" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="evento" HeaderText="Evento" SortExpression="evento" >
                                    <HeaderStyle Font-Names="Arial" Font-Size="XX-Small" />
                                    <ItemStyle Font-Names="Arial" Font-Size="XX-Small" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="datetime_event" HeaderText="Último Reporte" SortExpression="datetime_event" >
                                    <HeaderStyle Font-Names="Arial" Font-Size="XX-Small" />
                                    <ItemStyle Font-Names="Arial" Font-Size="XX-Small" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="address_event" HeaderText="Dirección Calculada" SortExpression="address_event" >
                                    <HeaderStyle Font-Names="Arial" Font-Size="XX-Small" />
                                    <ItemStyle Font-Names="Arial" Font-Size="XX-Small" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="lat_event" HeaderText="Latitud" SortExpression="lat_event" >
                                    <HeaderStyle Font-Names="Arial" Font-Size="XX-Small" />
                                    <ItemStyle Font-Names="Arial" Font-Size="XX-Small" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="lon_event" HeaderText="Longitud" SortExpression="lon_event" >
                                    <HeaderStyle Font-Names="Arial" Font-Size="XX-Small" />
                                    <ItemStyle Font-Names="Arial" Font-Size="XX-Small" />
                                    </asp:BoundField>
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#487575" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#275353" />
                            </asp:GridView>
                            
                </td>
            </tr>
        </table>
        
        <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/cintillo2_squilla.png" Width="100%" />

        
        		
<!--Script references. -->
    <!--Reference the jQuery library. -->
    <script src="Scripts/jquery-2.1.4.min.js"></script>
    <!--Reference the SignalR library. -->
    <script src="Scripts/jquery.signalR-2.2.0.min.js"></script>
    <!--Reference the autogenerated SignalR hub script. -->
    <script src="http://www.avlweb.somee.com:8081/signalr/hubs"></script>
    <!--Add script to update the page and send messages.-->
    <script type="text/javascript">
        $(function () {
            //Set the hubs URL for the connection
            
            $.connection.hub.url = "http://www.avlweb.somee.com:8081/signalr";
            // Declare a proxy to reference the hub.
            var chat = $.connection.myHub;

            // Create a function that the hub can call to broadcast messages.
            chat.client.addMessage = function (name, message, lat, lon, client, address) {
                // Html encode display name and message.
                var encodedName = $('<div />').text(name).html();
                var encodedMsg = $('<div />').text(message).html();
                var encodedLat = $('<div />').text(lat).html();
                var encodedLon = $('<div />').text(lon).html();
                var encodedClient = $('<div />').text(client).html();
                var encodedAddress = $('<div />').text(address).html();
                if (name == '<%= Session("GlobalLogin")%>') {
                    encodedName = "Yo";
                }
                $('#discussion').append('<li><strong>' + encodedName
                + '</strong>:&nbsp;&nbsp;</li>');
                $('#discussion').append(encodedMsg);
                // Add the message to the page.
                if (name == "Admin") {
                    //document.getElementById('player').play();
                    //$("#Image4").show()
                    //$("#Image8").show()
                    //$("#Image9").show()
                    //$("#Image10").show()
                    //$("#Label1").show()
                    //$("#Label2").show()
                    //$('#Label1').text(encodedClient)
                    /////////////////// calcula dirección //////////////////////////////////////////////////////////
                    //geocoder = new google.maps.Geocoder();
                    //var latlng = new google.maps.LatLng(encodedLat, encodedLon);
                    //geocoder.geocode({ 'latLng': latlng }, function (results, status) {
                    //    if (status == google.maps.GeocoderStatus.OK) {
                    //        if (results[0]) {
                    //            //map.fitBounds(results[0].geometry.viewport);
                    //            //marker.setMap(map);
                    //            //marker.setPosition(latlng);
                    //            //$('#address').text(results[0].formatted_address);
                    //            //infowindow.setContent(results[0].formatted_address);
                    //            encodedAddress = results[0].formatted_address;
                    //            //infowindow.open(map, marker);
                    //            //google.maps.event.addListener(marker, 'click', function () {
                    //            //    infowindow.setContent(results[0].formatted_address);
                    //            //    infowindow.open(map, marker);
                    //            //});
                    //            $('#Label2').text(encodedAddress)
                    //        } else {
                    //            alert('No results found');
                    //        }
                    //    } else {
                     //       alert('Geocoder failed due to: ' + status);
                    //    }
                    //});

                    ///////////////////////////////////////////////////////////////////////////////////////////////////
                    //var myLatlng = new google.maps.LatLng(encodedLat, encodedLon);
                    //var myOptions = {
                    //    zoom: 14,
                    //    center: myLatlng,
                    //    mapTypeId: google.maps.MapTypeId.ROADMAP
                    //};
                    //var map = new google.maps.Map($("#map").get(0), myOptions);
                    //var marker = new google.maps.Marker({
                    //    position: myLatlng,
                    //    map: map,
                    //    title: "Emergencia en Progreso"
                    //});
                    
      
                    //setTimeout(function () {
                        
                    //    $("#Image4").fadeOut(1500);
                    //    $("#Image8").fadeOut(1500);
                    //    $("#Image9").fadeOut(1500);
                    //    $("#Image10").fadeOut(1500);
                    //    $("#Label1").fadeOut(1500);
                    //    $("#Label2").fadeOut(1500);
                    //    var myLatLng = { lat: 9.0259999999999998, lng: -67.275000000000006 };

                    //    var map = new google.maps.Map(document.getElementById('map'), {
                    //        zoom: 6,
                    //        center: myLatLng
                    //    });
                    // }, 30000);
                    //alert(encodedLat + encodedLon + encodedClient + encodedAddress);
                    
                    //}
                    //else {
                    
                    if (name == '<%= Session("GlobalLogin")%>') {
                        encodedName = "Yo";
                     }
                    $('#discussion').append('<li><strong>' + encodedName
                    + '</strong>:&nbsp;&nbsp;</li>');
                    $('#discussion').append(encodedMsg);
                    
                }
            };
            // Get the user name and store it to prepend to messages.
            //$('#displayname').val(prompt('Enter your name:', ''));
            // Set initial focus to message input box.
            //$('#message').focus();

            // Start the connection.
            
            $.connection.hub.start().done(function () {
                $('#sendmessage').click(function () {
                    // Call the Send method on the hub.
                    chat.server.send('<%= Session("GlobalLogin")%>', $('#message').val(), "", "", "", "");
                   //chat.server.send($('#displayname').val(), $('#message').val());
                   // Clear text box and reset focus for next comment.
                   $('#message').val('').focus();
               });
                $('#message').keypress(function (e) {
                    if (e.which == 13) {
                        chat.server.send('<%= Session("GlobalLogin")%>', $('#message').val(), "", "", "", "");
		        $('#message').val('').focus();
		        //alert('You pressed enter!');
		    }
                });
            });
        });
    </script>
    </form>
</body>
</html>
