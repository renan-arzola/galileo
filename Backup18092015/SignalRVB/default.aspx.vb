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
        Dim connection As New SqlConnection(ConfigurationManager.ConnectionStrings("SOSAlert_DBConnectionString").ConnectionString)
        Dim command As New SqlCommand("SELECT COD_USU, DES_USU from GAL_1100 where IP_USU = 1", connection)
        Dim ada As New SqlDataAdapter(command)

        ada.Fill(dt)
        gvImages.DataSource = dt
        gvImages.DataBind()

    End Sub

    Protected Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        Dim dty As New DS_1680.GAL_1680DataTable
        Dim dfy As New DS_1680TableAdapters.GAL_1680TableAdapter
        Dim ldt_actualdatetime1 As DateTime
        Dim ldt_actualdatetime2 As DateTime = DateTime.Now
        Dim ld_latitud, ld_longitud As Decimal

        ldt_actualdatetime1 = DateTime.Now.Date & " 00:00:00"
        dty = dfy.GetData("Pánico", ldt_actualdatetime1, ldt_actualdatetime2, 0)
        If (dty.Count.ToString) > 0 Then
            Session("GlobalSw1") = 1
            Dim Player As WindowsMediaPlayer = New WindowsMediaPlayer
            Dim url As String = "http://localhost/squilla/Resources/alerta1.mp3"

            Player.URL = url
            Player.controls.play()

            'Player.controls.previous()
            Timer1.Interval = 40000
            ld_latitud = dty.Rows(0).Item(4)
            ld_longitud = dty.Rows(0).Item(5)

            Dim latlng As New GLatLng(ld_latitud, ld_longitud)

            Dim icono = New GMarker(latlng)
            Dim window = New GInfoWindow(icono, "Ejemplo de <b>infoWindow</b>", False, GListener.Event.mouseover)
            GMap1.Add(window)

            'Dim marker As New GMarker(New GLatLng(ld_latitud, ld_longitud))
            GMap1.setCenter(New GLatLng(ld_latitud, ld_longitud), 14)
            Image8.Visible = True
            Image9.Visible = True
            Image10.Visible = True
            Image4.Visible = True
            Label1.Text = dty.Rows(0).Item(3)
            Label2.Text = dty.Rows(0).Item(6)
            Label1.Visible = True
            Label2.Visible = True

            dty.Rows(0).Item(7) = 1
            dfy.Update(dty.GetChanges)
            dty.GetChanges()


        Else
            If Session("GlobalSw1") = 1 Then
                SqlDataSource2.DataBind()
                GridView1.DataBind()
                Timer1.Interval = 15000
                Image8.Visible = False
                Image9.Visible = False
                Image10.Visible = False
                Image4.Visible = False
                Label1.Visible = False
                Label2.Visible = False
                GMap1.reset()
                GMap1.setCenter(New GLatLng(9.0259999999999998, -67.275000000000006), 6)
                Session("GlobalSw1") = 0
            End If
        End If
    End Sub

    
    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("wf1100.aspx")
    End Sub
End Class