﻿
Partial Class login_login
    Inherits System.Web.UI.Page


    Protected Sub Login1_LoggedIn(sender As Object, e As EventArgs) Handles Login1.LoggedIn

        If Roles.IsUserInRole(Login1.UserName, "r_kchen3_Admin") = True Then

            Response.Redirect("~/admin/ViewAllGames.aspx")

        Else : Response.Redirect("~/ViewAllGames.aspx")
        End If


    End Sub
End Class
