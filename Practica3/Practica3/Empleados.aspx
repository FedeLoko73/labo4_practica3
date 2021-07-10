<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Empleados.aspx.vb" Inherits="Practica3.Empleados" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Sucursal: "></asp:Label>
        <asp:DropDownList ID="ddlSucursal" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="descripcion" 
            DataValueField="nro_sucursal">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Labo4_pugnoConnectionString %>" 
            SelectCommand="SELECT [nro_sucursal], [descripcion] FROM [sucursales]">
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="lblsucursal" runat="server"></asp:Label>
    
    </div>
    <asp:ListBox ID="lbempleados1" runat="server" DataSourceID="SqlDataSource2" 
        DataTextField="apynom" DataValueField="nro_legajo"></asp:ListBox>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Labo4_pugnoConnectionString %>" 
        SelectCommand="select nro_legajo,  '(' + convert(char(4),nro_legajo)+')'+' - '+ rtrim(apellido)+' ' +rtrim(nombre) as apynom from empleados">
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="Btnagregar" runat="server" style="height: 26px" Text="&gt;" 
        Width="22px" />
    <br />
    <p>
        <asp:Button ID="btnsacar" runat="server" Text="&lt;" />
    </p>
    <asp:ListBox ID="lbempleados2" runat="server" AutoPostBack="True" 
        SelectionMode="Multiple"></asp:ListBox>
    </form>
</body>
</html>
