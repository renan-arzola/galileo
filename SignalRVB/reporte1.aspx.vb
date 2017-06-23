Imports Subgurim.Controles


Public Class reporte1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GMap1.setCenter(New GLatLng(9.0259999999999998, -67.275000000000006), 6)
        Dim Control As New GControl(GControl.preBuilt.LargeMapControl)
        Dim control2 As New GControl(GControl.preBuilt.MenuMapTypeControl, New GControlPosition(GControlPosition.position.Top_Right))

        GMap1.Add(Control)
        GMap1.Add(control2)

        GMap1.Add(New GControl(GControl.preBuilt.GOverviewMapControl, New GControlPosition(GControlPosition.position.Bottom_Left)))
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'Session("GlobalFecHasta") = Convert.ToDateTime("06-09-2016 23:59:59")
        'Session("GlobalFecDesde") = Convert.ToDateTime("06-09-2016 00:00:00")

        Dim dob1 As DateTime = DateTime.Parse(Request.Form(TextBox1.UniqueID))
        Session("GlobalFecDesde") = dob1

        Dim dob2 As DateTime = DateTime.Parse(Request.Form(TextBox2.UniqueID))
        Session("GlobalFecHasta") = dob2


        SqlDataSource2.DataBind()
        'SqlDataSource2.Update()

        'GridView1.DataSource = "SqlDataSource2"

        GridView1.DataBind()
        GridView1.Visible = True

        GMap1.DataSourceID() = "SqlDataSource2"
        GMap1.reset()
        GMap1.setCenter(New GLatLng(9.0259999999999998, -67.275000000000006), 8)
        Dim Control As New GControl(GControl.preBuilt.LargeMapControl)
        Dim control2 As New GControl(GControl.preBuilt.MenuMapTypeControl, New GControlPosition(GControlPosition.position.Top_Right))

        GMap1.Add(Control)
        GMap1.Add(control2)

        GMap1.Add(New GControl(GControl.preBuilt.GOverviewMapControl, New GControlPosition(GControlPosition.position.Bottom_Left)))


        '

        '


    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim lat, lon As Decimal
        Dim info As String

        info = "<b>" + (GridView1.SelectedRow.Cells(1).Text) + "</b><br/>" + "<b>" + (GridView1.SelectedRow.Cells(4).Text) + "</b>"
        lat = Convert.ToDecimal(GridView1.SelectedRow.Cells(2).Text)
        lon = Convert.ToDecimal(GridView1.SelectedRow.Cells(3).Text)

        GMap1.setCenter(New GLatLng(lat, lon), 10)
        Dim Window As GInfoWindow = New GInfoWindow(New GLatLng(lat, lon), info)
        GMap1.Add(Window)
    End Sub

   
End Class