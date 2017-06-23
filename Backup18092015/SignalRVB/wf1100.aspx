<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="wf1100.aspx.vb" Inherits="SignalRVB.wf1100" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Squilla v1.0 (Desarrollo) - Seguridad Social</title>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style9">
                        <asp:Image ID="Image3" runat="server" Height="79px" ImageUrl="~/Images/logo-squilla.png" Width="168px" />
                    </td>
                    <td class="auto-style19">
                        <asp:Image ID="Image2" runat="server" Height="59px" ImageUrl="~/Images/cintillo_squilla.png" Width="100%" />
                    </td>
                </tr>
            </table>

            &nbsp;<style type="text/css">
        .auto-style2 {
            width: 145px;
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            width: 145px;
        }
        .auto-style9 {
            width: 54px;
            height: 83px;
        }
        .auto-style19 {
            height: 83px;
        }
        .auto-style23 {
            height: 23px;
        }
          .auto-style24 {
              width: 153px;
          }
    </style></head><body><form id="form1" runat="server">
    <div>
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/default.aspx" Font-Names="Arial" Font-Size="Small">Regresar</asp:HyperLink>
    
        <br />
        <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
        <asp:Button ID="Button1" runat="server" Text="..." />
        <asp:FileUpload ID="fuImage" runat="server" Width="131px" />
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="COD_USU" DataSourceID="SqlDataSource1" Width="300px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
            <EditItemTemplate>
                <br />
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style24">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Text="Nombre de usuario:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="LOGIN_USUTextBox" runat="server" Font-Names="Arial" Font-Size="Small" Text='<%# Bind("LOGIN_USU") %>' Width="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style24">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Text="Contraseña:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="PASS_USUTextBox" runat="server" Font-Names="Arial" Font-Size="Small" Text='<%# Bind("PASS_USU") %>' TextMode="Password" Width="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style24">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Text="Nombres y Apellidos:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="DES_USUTextBox" runat="server" Font-Names="Arial" Font-Size="Small" Text='<%# Bind("DES_USU") %>' Width="200px" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" Font-Names="Arial" Font-Size="Small" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" Font-Names="Arial" Font-Size="Small" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <InsertItemTemplate>
                COD_USU:
                <asp:TextBox ID="COD_USUTextBox" runat="server" Text='<%# Bind("COD_USU") %>' />
                <br />
                LOGIN_USU:
                <asp:TextBox ID="LOGIN_USUTextBox" runat="server" Text='<%# Bind("LOGIN_USU") %>' />
                <br />
                PASS_USU:
                <asp:TextBox ID="PASS_USUTextBox" runat="server" Text='<%# Bind("PASS_USU") %>' />
                <br />
                DES_USU:
                <asp:TextBox ID="DES_USUTextBox" runat="server" Text='<%# Bind("DES_USU") %>' />
                <br />
                COD_GUSU:
                <asp:TextBox ID="COD_GUSUTextBox" runat="server" Text='<%# Bind("COD_GUSU") %>' />
                <br />
                IP_USU:
                <asp:TextBox ID="IP_USUTextBox" runat="server" Text='<%# Bind("IP_USU") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                <table style="width:125%;">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Text="Nombre de Usuario:"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:Label ID="LOGIN_USULabel" runat="server" Text='<%# Bind("LOGIN_USU") %>' Font-Names="Arial" Font-Size="Small" />
                        </td>
                        <td class="auto-style3"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Text="Contraseña:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="PASS_USULabel" runat="server" Text='<%# Bind("PASS_USU") %>' Font-Names="Arial" Font-Size="Small" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Text="Nombres y Apellidos:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="DES_USULabel" runat="server" Text='<%# Bind("DES_USU") %>' Font-Names="Arial" Font-Size="Small" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                &nbsp;<br />&nbsp;<asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" Font-Names="Arial" Font-Size="Small" />
                &nbsp;
            </ItemTemplate>
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SOSAlert_DBConnectionString %>" DeleteCommand="DELETE FROM [GAL_1100] WHERE [COD_USU] = @original_COD_USU AND [LOGIN_USU] = @original_LOGIN_USU AND [PASS_USU] = @original_PASS_USU AND [DES_USU] = @original_DES_USU AND (([COD_GUSU] = @original_COD_GUSU) OR ([COD_GUSU] IS NULL AND @original_COD_GUSU IS NULL)) AND (([IP_USU] = @original_IP_USU) OR ([IP_USU] IS NULL AND @original_IP_USU IS NULL))" InsertCommand="INSERT INTO [GAL_1100] ([COD_USU], [LOGIN_USU], [PASS_USU], [DES_USU], [COD_GUSU], [IP_USU]) VALUES (@COD_USU, @LOGIN_USU, @PASS_USU, @DES_USU, @COD_GUSU, @IP_USU)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [COD_USU], [LOGIN_USU], [PASS_USU], [DES_USU], [COD_GUSU], [IP_USU] FROM [GAL_1100] WHERE ([COD_USU] = @COD_USU)" UpdateCommand="UPDATE [GAL_1100] SET [LOGIN_USU] = @LOGIN_USU, [PASS_USU] = @PASS_USU, [DES_USU] = @DES_USU, [COD_GUSU] = @COD_GUSU, [IP_USU] = @IP_USU WHERE [COD_USU] = @original_COD_USU AND [LOGIN_USU] = @original_LOGIN_USU AND [PASS_USU] = @original_PASS_USU AND [DES_USU] = @original_DES_USU AND (([COD_GUSU] = @original_COD_GUSU) OR ([COD_GUSU] IS NULL AND @original_COD_GUSU IS NULL)) AND (([IP_USU] = @original_IP_USU) OR ([IP_USU] IS NULL AND @original_IP_USU IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_COD_USU" Type="Int64" />
                <asp:Parameter Name="original_LOGIN_USU" Type="String" />
                <asp:Parameter Name="original_PASS_USU" Type="String" />
                <asp:Parameter Name="original_DES_USU" Type="String" />
                <asp:Parameter Name="original_COD_GUSU" Type="Decimal" />
                <asp:Parameter Name="original_IP_USU" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="COD_USU" Type="Int64" />
                <asp:Parameter Name="LOGIN_USU" Type="String" />
                <asp:Parameter Name="PASS_USU" Type="String" />
                <asp:Parameter Name="DES_USU" Type="String" />
                <asp:Parameter Name="COD_GUSU" Type="Decimal" />
                <asp:Parameter Name="IP_USU" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="COD_USU" SessionField="GlobalEnt" Type="Int64" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="LOGIN_USU" Type="String" />
                <asp:Parameter Name="PASS_USU" Type="String" />
                <asp:Parameter Name="DES_USU" Type="String" />
                <asp:Parameter Name="COD_GUSU" Type="Decimal" />
                <asp:Parameter Name="IP_USU" Type="String" />
                <asp:Parameter Name="original_COD_USU" Type="Int64" />
                <asp:Parameter Name="original_LOGIN_USU" Type="String" />
                <asp:Parameter Name="original_PASS_USU" Type="String" />
                <asp:Parameter Name="original_DES_USU" Type="String" />
                <asp:Parameter Name="original_COD_GUSU" Type="Decimal" />
                <asp:Parameter Name="original_IP_USU" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style23">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/cintillo2_squilla.png" Width="100%" />
                </td>
            </tr>
        </table>
    
    </form>
</body>
</html>
