Imports System.Data
Imports System.Data.SqlClient

Public Class roadtrip
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dbconn As SqlConnection = Nothing
        Dim sqlCmd As SqlCommand = Nothing
        Dim sqlAdapt As SqlDataAdapter = Nothing
        Dim tripID As Integer
        Dim dt As DataTable

        Try
            tripID = Request.QueryString("tripID")

            'connect to sql server and using sproc get suggestion by id
            dbconn = New SqlConnection("Data Source=violet.arvixe.com; Initial Catalog=Sumo_db_DEV; UID=sumo_dbdev; pwd=shamoo!")
            sqlCmd = New SqlCommand("get.Suggestion_byID", dbconn)
            sqlCmd.CommandType = CommandType.StoredProcedure
            sqlCmd.Parameters.AddWithValue("@tripID", tripID)
            sqlAdapt = New SqlDataAdapter
            sqlAdapt.SelectCommand = sqlCmd
            'create and fill datatable
            dt = New DataTable
            sqlAdapt.Fill(dt)
            fillContentUI(dt)
        Catch ex As Exception
            dbconn.Dispose()
            Throw ex
        Finally
            sqlCmd.Dispose()
            If dbconn.State <> ConnectionState.Closed Then
                dbconn.Close()
            End If
        End Try
    End Sub

    Private Sub fillContentUI(ByVal dt As DataTable)
        Dim origin As String
        Dim destination As String
        Dim tripdate As String
        Dim description As String
        Dim price As String
        Dim committed As String
        Dim total As String
        Dim remaining As String

        Try
            'get the info for a suggestion
            origin = dt.Rows(0).Item("origin").ToString
            destination = dt.Rows(0).Item("destination").ToString
            tripdate = dt.Rows(0).Item("tripdate").ToString
            description = dt.Rows(0).Item("tripdescription").ToString
            price = dt.Rows(0).Item("price").ToString
            committed = dt.Rows(0).Item("committed").ToString
            total = dt.Rows(0).Item("total").ToString
            remaining = dt.Rows(0).Item("remaining").ToString

            lblOrigin.Text = origin
            lblDestination.Text = destination
            lblTripDate.Text = tripdate
            lblDescription.Text = description
            lblPrice.Text = "$" & price
            lblCommitted.Text = committed & " of " & total
            lblRemaining.Text = remaining & " d"
        Catch ex As Exception
            Throw ex
        End Try

    End Sub

End Class