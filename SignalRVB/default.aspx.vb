Imports WMPLib
Imports Subgurim.Controles
Imports System
Imports System.Object
Imports System.Data.SqlClient

Public Class _default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GMap1.setCenter(New GLatLng(9.0259999999999998, -67.275000000000006), 6)
        Dim Control As New GControl(GControl.preBuilt.LargeMapControl)
        Dim control2 As New GControl(GControl.preBuilt.MenuMapTypeControl, New GControlPosition(GControlPosition.position.Top_Right))

        GMap1.Add(Control)
        GMap1.Add(control2)

        GMap1.Add(New GControl(GControl.preBuilt.GOverviewMapControl, New GControlPosition(GControlPosition.position.Bottom_Left)))
        Dim dt As New DataTable()
        Dim connection As New SqlConnection(ConfigurationManager.ConnectionStrings("webavldbCS").ConnectionString)
        Dim command As New SqlCommand("SELECT COD_USU, DES_USU from GAL_1100 where IP_USU = 1", connection)
        Dim ada As New SqlDataAdapter(command)

        ada.Fill(dt)
        gvImages.DataSource = dt
        gvImages.DataBind()
        gvImages.Caption = "Bienvenido... " + Session("GlobalLogin")

    End Sub


    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("wf1100.aspx")
    End Sub

    Protected Sub GridView2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView2.SelectedIndexChanged
        Dim lat, lon As Decimal

        lat = Convert.ToDecimal(GridView2.SelectedRow.Cells(5).Text)
        lon = Convert.ToDecimal(GridView2.SelectedRow.Cells(6).Text)
        GMap1.setCenter(New GLatLng(lat, lon), 16)

        Dim info As String

        info = "<b>" + (GridView2.SelectedRow.Cells(1).Text) + "</b><br/>" + "<b>" + (GridView2.SelectedRow.Cells(2).Text) + "</b><br/>" + "<b>" + (GridView2.SelectedRow.Cells(3).Text) + "</b>"
        Dim Window As GInfoWindow = New GInfoWindow(New GLatLng(lat, lon), info)
        GMap1.Add(Window)

    End Sub
End Class