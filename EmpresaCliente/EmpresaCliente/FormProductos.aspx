<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormProductos.aspx.cs" Inherits="EmpresaCliente.FormProductos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" DataSourceID="ObjectDataSource1" Height="50px" Width="125px">
            </asp:DetailsView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetCategorias" TypeName="EmpresaCliente.ServiceReference1.WSCategoriasSoapClient"></asp:ObjectDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource2">
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetProductos" TypeName="EmpresaCliente.ServiceReference1.WSCategoriasSoapClient">
                <SelectParameters>
                    <asp:FormParameter DefaultValue="1" FormField="DetailsView1" Name="id" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
