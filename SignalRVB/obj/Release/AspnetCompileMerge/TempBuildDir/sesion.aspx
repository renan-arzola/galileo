<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="sesion.aspx.vb" Inherits="Squilla.sesion" %>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Login form</title>
  <script src="http://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>

<link href='http://fonts.googleapis.com/css?family=Raleway:300,200' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  
      <link rel="stylesheet" href="css/style.css">

  
    <style type="text/css">
        .auto-style1 {
            height: 10px;
            text-align: center;
        }
        .auto-style2 {
            height: 10px;
        }
    </style>

  
</head>

<body>
    <form id="form1" runat="server">
  <div class="menu">
  
</div>

<div class="form">
  
  
    <table style="width:100%;">
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Iniciar Sesión"></asp:Label>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
  <div class="topbar">
    <div class="spanColor"></div>
      <asp:TextBox class="input" ID="TextBox2" runat="server"></asp:TextBox>
      <asp:TextBox type="password" class="input" ID="TextBox1" runat="server"></asp:TextBox>
  </div>
                <asp:Button class="submit" ID="Button1" runat="server" Text="Ingresar" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
  
  
</div>

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

    

    </form>

</body>
</html>
