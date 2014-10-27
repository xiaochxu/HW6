
Partial Class details_2
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted
        Dim deleted As String = e.Values("recipe_name").ToString
        lbl_deleted.Text = deleted & " has been delected from the database."
        Response.AddHeader("REFRESH", "3;URL=./default.aspx")

        'Response.Redirect("./default.aspx")
    End Sub

    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        Response.AddHeader("REFRESH", "3;URL=./default.aspx")
    End Sub

End Class
