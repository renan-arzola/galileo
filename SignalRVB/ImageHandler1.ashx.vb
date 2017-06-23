Imports System.Web
Imports System.Web.Services
Imports System.Data.SqlClient

Public Class ImageHandler1
    Implements System.Web.IHttpHandler

    Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        Dim imageid As String = context.Request.QueryString("ImID")

        Dim connection As New SqlConnection(ConfigurationManager.ConnectionStrings("webavldbCS").ConnectionString)

        connection.Open()
        Dim command As New SqlCommand("select IMAGE_USU from GAL_1100 where COD_USU = 1", connection)
        'Dim command As New SqlCommand("select IMAGE_USU from GAL_1100 where COD_USU = " + imageid, connection)

        Dim dr As SqlDataReader = command.ExecuteReader()

        dr.Read()

        If IsNothing(dr(0)) Then
        Else
            context.Response.BinaryWrite(dr(0))
        End If


        connection.Close()

        context.Response.End()

    End Sub

    ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class