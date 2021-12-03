<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EmpresaCliente.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataSourceID= "ObjectDataSource1" AllowSorting="True">
             <Columns>
                 <asp:CommandField ShowSelectButton="True" />
                 <asp:CommandField ShowEditButton="True" />
                 <asp:CommandField ShowDeleteButton="True" />
             </Columns>
         </asp:GridView>
         <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetCategorias" TypeName = "Cliente2.ServiceReference1. WSCategoriasSoapClient"/>
         </div>
    </form>
</body>
</html>
