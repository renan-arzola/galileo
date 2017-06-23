Imports WMPLib
Imports Subgurim.Controles
Imports System
Imports System.Object
Imports System.Data.SqlClient

Public Class main
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        GMap1.setCenter(New GLatLng(22.986808, -101.88108), 5)
        Dim Control As New GControl(GControl.preBuilt.LargeMapControl)
        Dim control2 As New GControl(GControl.preBuilt.MenuMapTypeControl, New GControlPosition(GControlPosition.position.Top_Right))
        Dim cod_usuario As Integer = Session("GlobalEnt")
        GMap1.Add(Control)
        GMap1.Add(control2)

        GMap1.Add(New GControl(GControl.preBuilt.GOverviewMapControl, New GControlPosition(GControlPosition.position.Bottom_Left)))
        Dim dt As New DataTable()
        Dim connection As New SqlConnection(ConfigurationManager.ConnectionStrings("webavldbCS").ConnectionString)
        Dim command As New SqlCommand("SELECT COD_USU, DES_USU from GAL_1100 where IP_USU = 1", connection)
        Dim ada As New SqlDataAdapter(command)

        ada.Fill(dt)
        'gvImages.DataSource = dt
        'gvImages.DataBind()
        'gvImages.Caption = "Bienvenido... " + Session("GlobalLogin")

    End Sub

End Class