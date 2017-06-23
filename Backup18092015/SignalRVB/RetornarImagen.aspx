<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RetornarImagen.aspx.vb" Inherits="SignalRVB.RetornarImagen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="Guardar IMG en BD" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Mostrar Imagenes" style="height: 26px" />
    
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Text="Button" />
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="30px" Width="30px" />
    
    </div>
    </form>
</body>
</html>
