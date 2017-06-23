Imports System
Imports System.Collections
Imports System.Configuration
Imports System.Data
Imports System.Drawing
Imports System.Drawing.Imaging
Imports System.IO
Imports System.Linq
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Xml.Linq
Imports System.Data.SqlClient


Public Class RetornarImagen
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Dim conexion As New SqlConnection("server=(local);database=SOSAlert_DB;uid=sa; password=sls00")
        'Dim consulta As New SqlDataAdapter("Select IMAGE_USU from GAL_1100 where COD_USU = 1", conexion)
        'Dim MyCB As SqlCommandBuilder = New SqlCommandBuilder(consulta)
        'Dim ds As New DataSet()
        'Try
        'conexion.Open()
        'consulta.Fill(ds, "Imagenes")
        'Dim fila As DataRow
        'fila = ds.Tables("Imagenes").Rows(0)
        'Dim binario() As Byte
        'binario = fila.Item(0)
        ''Image1.ImageUrl = binario.ToString
        ''Dim k As Long
        ''k = UBound(binario)
        'Response.Buffer = True
        'Response.ContentType = "Image/JPEG"
        'Response.BinaryWrite(binario)
        'Catch ex As Exception
        ' MsgBox(ex.Message)
        'Finally
        'conexion.Close()
        'End Try
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim ruta As New FileStream("C:\Users\Administrador\Pictures\012207070.jpg", FileMode.OpenOrCreate, FileAccess.Read)
        Dim binario(ruta.Length) As Byte
        ruta.Read(binario, 0, ruta.Length)
        ruta.Close()
        Dim conexion As New SqlConnection("server=(local);database=SOSAlert_DB;uid=sa; password=sls00")
        Dim consulta As New SqlDataAdapter("Select COD_USU, LOGIN_USU, PASS_USU, DES_USU, COD_GUSU, IP_USU, IMAGE_USU from GAL_1100 where COD_USU = 1", conexion)
        Dim MyCB As SqlCommandBuilder = New SqlCommandBuilder(consulta)
        Dim ds As New DataSet()
        consulta.MissingSchemaAction = MissingSchemaAction.AddWithKey
        Try
            conexion.Open()
            consulta.Fill(ds, "Imagenes")
            Dim fila As DataRow
            fila = ds.Tables("Imagenes").Rows(0)
            fila.Item("IMAGE_USU") = binario
            consulta.Update(ds, "Imagenes")
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            conexion.Close()
        End Try
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim conexion As New SqlConnection("server=(local);database=SOSAlert_DB;uid=sa; password=sls00")
        Dim consulta As New SqlDataAdapter("Select IMAGE_USU from GAL_1100 where COD_USU = 1", conexion)
        Dim MyCB As SqlCommandBuilder = New SqlCommandBuilder(consulta)
        Dim ds As New DataSet()
        Try
            conexion.Open()
            consulta.Fill(ds, "Imagenes")
            Dim fila As DataRow
            fila = ds.Tables("Imagenes").Rows(0)
            Dim binario() As Byte
            binario = fila.Item(0)
            'Image1.ImageUrl = binario.ToString
            'Dim k As Long
            'k = UBound(binario)
            Response.Buffer = True
            Response.ContentType = "Image/JPEG"
            Response.BinaryWrite(binario)
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            conexion.Close()
        End Try

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Image1.ImageUrl = "~/ImageHandler.ashx?ImID=1" '+ DropDownList1.SelectedItem.Value;
    End Sub
End Class