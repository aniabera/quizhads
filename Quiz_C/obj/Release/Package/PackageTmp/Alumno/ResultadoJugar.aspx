<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResultadoJugar.aspx.cs" Inherits="Quiz_C.Alumno.ResultadoJugar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 1660px">
        <div style="background-color: #FF5197; color: #FFFFFF; font-weight: bold; font-size: 21px; font-family: Arial; text-align: center; height: 92px;">
            <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left">
            &nbsp;
            <asp:LinkButton ID="LinkLogOut" runat="server" Font-Size="Medium" ForeColor="Black" PostBackUrl="~/Profesor/logOutP.aspx">Cerrar Sesión</asp:LinkButton>
        </asp:Panel>
        ALUMNO<br />
        JUGAR</div>
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Alumno/jugar.jpg" />
        <br />
    
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Size="Larger"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Alumno/EscogerTema.aspx" ForeColor="#FF0066">Hacer otro test</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
