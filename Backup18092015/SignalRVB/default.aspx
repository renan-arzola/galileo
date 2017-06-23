<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="SignalRVB._default" %>

<%@ Register assembly="GMaps" namespace="Subgurim.Controles" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <title>Squilla v1.0 (Desarrollo) - Seguridad Social</title>
    <style type="text/css">
        .container {
            background-color: #99CCFF;
            border: thick solid #808080;
            padding: 20px;
            margin: 20px;
        }
        #discussion {
            width: 246px;
            margin-left: 3px;
            font-size: small;
        }
        .auto-style1 {
            width: 263px;
        }
    
h1 {
    font-size: 2em;
}

h1 {
    color: #0000FF;
    margin-bottom: 0;
    padding-bottom: 0;
            text-align: center;
            height: 49px;
        }

h2 {
    font-size: 1.75em;
}

h2 {
    color: #0000FF;
    margin-bottom: 0;
    padding-bottom: 0;
}

        .auto-style9 {
            width: 54px;
            height: 83px;
        }
        .auto-style19 {
            height: 83px;
        }
        .auto-style21 {
            width: 42px;
        }
        .auto-style22 {
            width: 693px;
        }
        .auto-style23 {
            width: 58px;
        }
        </style>
   <script type="text/javascript">

       ImageButton1.onkeydown = function (evt) { return (evt ? evt.which : event.keyCode) != 13; }

</script>
</head>
<body onkeypress="return disableKeyPress(event)">
    <form id="form1" runat="server" defaultbutton="DoNothing">
        <input type="hidden" id="displayname" />
        <audio id="sonido" src="~/squilla/Resources/alerta1.mp3" >
</audio>
    <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style9">
                        <asp:Image ID="Image5" runat="server" Height="79px" ImageUrl="~/Images/logo-squilla.png" Width="168px" />
                    </td>
                    <td class="auto-style19">
                        <asp:Image ID="Image6" runat="server" Height="59px" ImageUrl="~/Images/cintillo_squilla.png" Width="100%" />
                    </td>
                    <td class="auto-style19">
                        <asp:ImageButton type="button" ID="ImageButton1" runat="server" Height="60px" ImageAlign="Bottom" ImageUrl="~/Images/icone-ajustes.png" ToolTip="Perfil de Usuario" Width="60px" />
                    </td>
                </tr>
            </table>

        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:GridView Width="259px" ID="gvImages" runat="server" AutoGenerateColumns="False" CellPadding="4" GridLines="None" Height="56px" PageSize="4" ForeColor="#333333" >
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="30px" Width="30px" ImageUrl='<%# "ImageHandler.ashx?ImID=" & Eval("COD_USU")%>'/>
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
                <td rowspan="3">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <table border="0" style="width:100%;">
                                <tr>
                                    <td class="auto-style21">
                                        <asp:Image ID="Image9" runat="server" Height="54px" ImageUrl="~/Images/Red-Alert-3.gif" Width="58px" Visible="False" />
                                    </td>
                                    <td class="auto-style22">
                                        <asp:Image ID="Image8" runat="server" Height="53px" ImageUrl="~/Images/luz-imagen-animada-0008.gif" style="text-align: center" Width="817px" Visible="False" />
                                    </td>
                                    <td class="auto-style23">
                                        <asp:Image ID="Image10" runat="server" Height="54px" ImageUrl="~/Images/Red-Alert-3.gif" Width="58px" Visible="False" />
                                    </td>
                                </tr>
                            </table>
                            <cc1:GMap ID="GMap1" runat="server" Height="400px" Width="100%" />
                            <asp:Timer ID="Timer1" runat="server" Interval="15000">
                            </asp:Timer>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <table style="width: 100%">
                                <tr>
                                    <td colspan="2">
                                        <h1>
                                            <asp:Image ID="Image4" runat="server" Height="58px" ImageUrl="~/EMER.gif" Visible="False" Width="611px" />
                                        </h1>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <h2>
                                            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Font-Names="Arial" Font-Size="Large" ForeColor="Red"></asp:Label>
                                        </h2>
                                    </td>
                                    <td>
                                        <h2>
                                            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" Font-Names="Arial" Font-Size="Large" ForeColor="Red"></asp:Label>
                                        </h2>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SOSAlert_DBConnectionString %>" SelectCommand="SELECT [cod_event], [evento], [datetime_event], [entidad], [lat_event], [lon_event], [address_event], [calc_addr_event], [serial_ent], [INFOWINDOW_EVENT], [cod_ent], [Image], [Shadow], [Size], [anchor], [ShadowSize], [cmd_event], [LastEditDate], [CreationDate] FROM [GAL_1680] where [evento] = 'Pánico' AND [calc_addr_event] = 1 AND DATEADD(dd, DATEDIFF(dd, 0, [datetime_event]), 0) = DATEADD(dd, DATEDIFF(dd, 0, getdate()), 0) ORDER BY [entidad]"></asp:SqlDataSource>
                    </strong></td>
            </tr>
        </table>
        <br />
        <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/cintillo2_squilla.png" Width="100%" />
    </div>
         <!--Script references. -->
    <!--Reference the jQuery library. -->
    <script src="Scripts/jquery-1.6.4.min.js" "></script>
    <script src="Scripts/json2.min.js"></script>
    <!--Reference the SignalR library. -->
    <script src="Scripts/jquery.signalR-2.2.0.js"></script>
    <!--Reference the autogenerated SignalR hub script. -->
    <script src="~/signalr/hubs"></script>
    <!--Add script to update the page and send messages.-->
    <script type="text/javascript">
        $(function () {
            // Declare a proxy to reference the hub.
            var chat = $.connection.chatHub;
            // Create a function that the hub can call to broadcast messages.
            chat.client.broadcastMessage = function (name, message) {
                // Html encode display name and message.
                var encodedName = $('<div />').text(name).html();
                var encodedMsg = $('<div />').text(message).html();
                // Add the message to the page.
                //$('#discussion').append('<li><strong>' + encodedName
                  //  + '</strong>:&nbsp;&nbsp;' + encodedMsg + '</li>');
                $('#discussion').append('<li><strong>' + encodedName
                    + '</strong>:&nbsp;&nbsp;</li>');
                $('#discussion').append(encodedMsg);
            };
            // Get the user name and store it to prepend to messages.
           // $('#displayname').val(prompt('Enter your name:', ''));
            // Set initial focus to message input box.
            $('#message').focus();
            // Start the connection.
            $.connection.hub.start().done(function () {
                $('#sendmessage').click(function () {
                    // Call the Send method on the hub.
                    chat.server.send('<%= Session("GlobalLogin")%>', $('#message').val());
                    //chat.server.send($('#displayname').val(), $('#message').val());
                    // Clear text box and reset focus for next comment.
                    $('#message').val('').focus();
                });
                $('#message').keypress(function (e) {
                    if (e.which == 13) {
                        chat.server.send('<%= Session("GlobalLogin")%>', $('#message').val());
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
