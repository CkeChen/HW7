
Partial Class Search
    Inherits System.Web.UI.Page

    Protected Sub tbGame_TextChanged(sender As Object, e As EventArgs) Handles tbGame.TextChanged
        Dim searchWord As String
        searchWord = "Select * From HW7-Kchen3 where (Game_Name Like '%" + tbGame.Text.ToString() + "%')"
        GameDataSource.SelectCommand = searchWord

    End Sub
End Class
