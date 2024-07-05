<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Libro.aspx.cs" Inherits="Biblioteca.Libro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlLibros" runat="server" AutoPostBack="true">
                <asp:ListItem Selected="True" Value="autor1"> Autor1 </asp:ListItem>
                <asp:ListItem Value="autor2"> Autor2 </asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
            <gridview>

            </gridview>
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true">
        </asp:GridView>
    </form>
</body>
</html>
