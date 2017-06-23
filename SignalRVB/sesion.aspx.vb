Public Class sesion
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim dty As New DS1100.GAL_1100DataTable
        Dim dfy As New DS1100TableAdapters.GAL_1100TableAdapter
        Dim pass_usu, login_usu As String

        dty = dfy.GetData(TextBox2.Text)

        If dty.Count > 0 Then

            pass_usu = dty.Rows(0).Item(2)
            Session("GlobalEnt") = dty.Rows(0).Item(0)
            Session("GlobalLogin") = dty.Rows(0).Item(3)
            Session("GlobalSw1") = 0
            Session("GlobalImg") = "../../avlweb/Images/usr/" + dty.Rows(0).Item(6) + ".jpg"
            'Session("Map2_Galileo") = 0
            'MsgBox(Convert.ToString(Session("GlobalImg")))
            If pass_usu = TextBox1.Text Then

                login_usu = TextBox2.Text
                Response.Redirect("main.aspx")

            Else
                TextBox1.BackColor = Drawing.Color.DarkRed
            End If
        Else
            TextBox2.BackColor = Drawing.Color.DarkRed
        End If
    End Sub

    Protected Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles TextBox2.TextChanged

    End Sub
End Class