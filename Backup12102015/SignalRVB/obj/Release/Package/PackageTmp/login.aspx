<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="Squilla.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Squilla v1.0 (Desarrollo) - Seguridad Social</title>
    <style type="text/css">
        .auto-style9 {
            width: 54px;
            height: 83px;
        }
        .auto-style18 {
            height: 26px;
            text-align: left;
            width: 190px;
        }
        .auto-style19 {
            height: 83px;
        }
        .auto-style20 {
            width: 190px;
            text-align: left;
        }
        .auto-style23 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style9">
                        <asp:Image ID="Image1" runat="server" Height="79px" ImageUrl="~/Images/logo-squilla.png" Width="168px" />
                    </td>
                    <td class="auto-style19">
                        <asp:Image ID="Image2" runat="server" Height="59px" ImageUrl="~/Images/cintillo_squilla.png" Width="100%" />
                    </td>
                </tr>
            </table>

            <div style="text-align:center;">
	        <table border="0" style="width:200px; margin: 0 auto;">
            
                <tr>
                    <td class="auto-style20">
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20" style="text-align: left">
                        <asp:Label ID="Label1" runat="server" Text="Nombre de Usuario:" Font-Bold="True" Font-Names="Arial" Font-Size="Small"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:TextBox ID="TextBox1" runat="server" Font-Names="Arial" Font-Size="Small" Width="120px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20" style="text-align: left">
                        <asp:Label ID="Label2" runat="server" Text="Contraseña:" Font-Bold="True" Font-Names="Arial" Font-Size="Small"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20" style="text-align: left">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Font-Names="Arial" Font-Size="Small" Width="120px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20" style="text-align: left">
                        <br />
                        <asp:Button ID="Button1" runat="server" Height="19px" style="text-align: center" Text="Iniciar Sesión" Width="125px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Arial" Font-Size="X-Small" NavigateUrl="~/wf1100.aspx">Registrarse</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <br />
                        <asp:Label ID="Label3" runat="server" Font-Bold="False" ForeColor="Red" Text="Label" Visible="False" Font-Names="Arial" Font-Size="X-Small"></asp:Label>
                    </td>
                </tr>
            </table>
       </div>
    <div>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table style="width: 100%;">
            <tr>
                <td class="auto-style23">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/cintillo2_squilla.png" Width="100%" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
