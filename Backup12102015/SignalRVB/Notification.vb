Imports Microsoft.AspNet.SignalR

Public Class Notification
    Private _ExamValue As Int32
    Private _Data As String
    Public Property ExamValue As Int32
        Get
            Return _ExamValue
        End Get
        Set(value As Int32)
            _ExamValue = value
        End Set
    End Property
    Public Property Data As String
        Get
            Return _Data
        End Get
        Set(value As String)
            _Data = value
        End Set
    End Property
End Class