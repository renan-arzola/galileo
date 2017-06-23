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

Imports Image = System.Drawing.Image
Imports System.Data.SqlClient


Public Class wf1100
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Image1.ImageUrl = "~/ImageHandler.ashx?ImID=" & Convert.ToString(Session("GlobalEnt"))
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        MsgBox("holaa")
    End Sub

    Protected Sub Button1_Click1(sender As Object, e As EventArgs) Handles Button1.Click
        Dim imgStream As Stream = fuImage.PostedFile.InputStream
        Dim imgLen As Integer = fuImage.PostedFile.ContentLength
        Dim imgBinaryData(imgLen) As Byte
        Dim n As Integer = imgStream.Read(imgBinaryData, 0, imgLen)

        Dim conexion As New SqlConnection("server=(local);database=SOSAlert_DB;uid=sa; password=sls00")
        Dim consulta As New SqlDataAdapter("Select COD_USU, LOGIN_USU, PASS_USU, DES_USU, COD_GUSU, IP_USU, IMAGE_USU from GAL_1100 where COD_USU = " & Session("GlobalEnt"), conexion)
        Dim MyCB As SqlCommandBuilder = New SqlCommandBuilder(consulta)
        Dim ds As New DataSet()
        consulta.MissingSchemaAction = MissingSchemaAction.AddWithKey
        Try
            conexion.Open()
            consulta.Fill(ds, "Imagenes")
            Dim fila As DataRow
            fila = ds.Tables("Imagenes").Rows(0)
            fila.Item("IMAGE_USU") = imgBinaryData
            consulta.Update(ds, "Imagenes")
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            conexion.Close()
        End Try

    End Sub
End Class