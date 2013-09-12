Imports System.Data
Imports System.Data.SqlClient

Public Class index2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dbconn As SqlConnection
        Dim sqlCmd As SqlCommand
        Dim sqlAdapt As SqlDataAdapter
        Dim ds As DataSet

        Try
            'connect to sql server and using sproc get all active suggestions
            dbconn = New SqlConnection("Data Source=violet.arvixe.com; Initial Catalog=Sumo_db_DEV; UID=sumo_dbdev; pwd=shamoo!")
            sqlCmd = New SqlCommand("get.Active_Suggestions", dbconn)
            sqlCmd.CommandType = CommandType.StoredProcedure
            sqlAdapt = New SqlDataAdapter
            sqlAdapt.SelectCommand = sqlCmd
            'create and fill dataset
            ds = New DataSet()
            sqlAdapt.Fill(ds)
            'bind repeater to dataset
            rptr_SuggestionList.DataSource = ds
            rptr_SuggestionList.DataBind()
        Catch ex As Exception
            Throw ex
        End Try
    End Sub

End Class