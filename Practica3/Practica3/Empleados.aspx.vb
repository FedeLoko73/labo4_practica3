Public Partial Class Empleados
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            ddlSucursal.Items.Insert(0, "Seleccione sucursal")

        End If
    End Sub

    Protected Sub ddlSucursal_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles ddlSucursal.SelectedIndexChanged


        lblsucursal.Text = "Empleados de " & ddlSucursal.SelectedItem.Text
    End Sub

    Protected Sub ListBox1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles lbempleados1.SelectedIndexChanged

    End Sub

    Protected Sub Btnagregar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Btnagregar.Click
        Dim lititem As ListItem
        If lbempleados1.SelectedIndex >= 0 Then
            lititem = lbempleados1.SelectedItem
            lbempleados2.Items.Add(lititem)
        End If
    End Sub
End Class