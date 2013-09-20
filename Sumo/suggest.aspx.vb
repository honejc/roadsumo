Imports System.Data
Imports System.Data.SqlClient


Public Class suggest
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub btnSuggest_Click(sender As Object, e As EventArgs) Handles btnSuggest.Click
        Dim dbconn As SqlConnection = Nothing
        Dim sqlCmd As SqlCommand = Nothing
        Dim destination As String
        Dim origin As String
        Dim tripdate As String
        Dim description As String
        Dim price As Integer
        Dim total As Integer
        Dim stir As Integer
        Dim tripID As Integer


        Try
            destination = txtDestination.Text
            origin = txtOrigin.Text
            tripdate = txtTripDate.Text
            description = txtDescription.Text
            price = txtPrice.Text
            total = txtTotal.Text
            stir = txtStir.Text

            'connect to sql server and using sproc insert suggestion
            dbconn = New SqlConnection("Data Source=violet.arvixe.com; Initial Catalog=Sumo_db_DEV; UID=sumo_dbdev; pwd=shamoo!")
            dbconn.Open()
            sqlCmd = New SqlCommand("add.Suggestion", dbconn)
            sqlCmd.CommandType = CommandType.StoredProcedure
            sqlCmd.Parameters.AddWithValue("@destination", destination)
            sqlCmd.Parameters.AddWithValue("@origin", origin)
            sqlCmd.Parameters.AddWithValue("@tripdate", tripdate)
            sqlCmd.Parameters.AddWithValue("@description", description)
            sqlCmd.Parameters.AddWithValue("@price", price)
            sqlCmd.Parameters.AddWithValue("@total", total)
            sqlCmd.Parameters.AddWithValue("@stir", stir)
            sqlCmd.Parameters.AddWithValue("@committed", 1)
            'create return variable for trip id
            'sqlCmd.Parameters.Add("@tripID_out", SqlDbType.BigInt)
            'sqlCmd.Parameters.Item("@tripID_out").Direction = ParameterDirection.Output
            'sqlCmd.ExecuteNonQuery()
            'get trip ID of new suggestion
            'tripID = sqlCmd.Parameters("tripID_out").Value

        Catch ex As Exception
            dbconn.Dispose()
            Throw ex
        Finally
            sqlCmd.Dispose()
            If dbconn.State <> ConnectionState.Closed Then
                dbconn.Close()
            End If
        End Try
        Response.Redirect("~/")
    End Sub
End Class