

Imports System.Web
Imports System.Threading.Tasks
Imports Microsoft.AspNet.SignalR

Public Class NotificationConnection
    Inherits PersistentConnection
    Protected Overrides Function OnConnected(request As IRequest, connectionId As String) As System.Threading.Tasks.Task
        Return MyBase.OnConnected(request, connectionId)
    End Function
End Class

