Imports Microsoft.AspNet.SignalR

Public Class ChatHub
    Inherits Hub

    Public Sub send(name As String, message As String)
        Me.Clients.All.broadcastmessage(name, message)

    End Sub
    

End Class