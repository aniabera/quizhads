<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Quiz_C.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 535px">
    <form id="form1" runat="server">
    <div style="height: 610px">
    
        <h1 style="margin-left: 120px">Registro</h1>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Email:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="mailTxt" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqMailVal" runat="server" ControlToValidate="mailTxt" ErrorMessage="Campo obligatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="mailVal" runat="server" ControlToValidate="mailTxt" ErrorMessage="Email no válido" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Nombre:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="nombreTxt" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqNombreVal" runat="server" ControlToValidate="nombreTxt" ErrorMessage="Campo obligatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        DNI:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="dniTxt" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqDniVal" runat="server" ControlToValidate="nombreTxt" ErrorMessage="Campo obligatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Pregunta secreta:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="pregTxt" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqPregVal" runat="server" ControlToValidate="pregTxt" ErrorMessage="Campo obligatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Respuesta secreta:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="respTxt" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqRespVal" runat="server" ControlToValidate="respTxt" ErrorMessage="Campo obligatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Contraseña:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="passTxt" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqPassVl" runat="server" ControlToValidate="passTxt" ErrorMessage="Campo obligatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        Repita la contraseña:&nbsp;&nbsp;&nbsp;<asp:TextBox ID="repPassTxt" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqRepPassVal" runat="server" ControlToValidate="repPassTxt" ErrorMessage="Campo obligatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="passIgualesVal" runat="server" ControlToCompare="repPassTxt" ControlToValidate="passTxt" ErrorMessage="Las contraseñas deben coincidir" ForeColor="#CC0000"></asp:CompareValidator>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="aceptarBtn" runat="server" OnClick="aceptarBtn_Click" Text="Aceptar" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ¿Ya estás registrado?
        <asp:LinkButton ID="inicioLink" runat="server" PostBackUrl="~/Inicio.aspx">Inicia sesión</asp:LinkButton>
        </div>
    </form>
</body>
</html>
