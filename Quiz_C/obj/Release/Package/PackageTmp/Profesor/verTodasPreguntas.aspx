<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verTodasPreguntas.aspx.cs" Inherits="Quiz_C.Profesor.verTodasPreguntas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 673px">
    <form id="form1" runat="server">
    <div style="height: 649px">
            <div style="background-color: #00CC99; color: #FFFFFF; font-weight: bold; font-size: 21px; font-family: Arial; text-align: center; height: 92px;">
    
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left">
            &nbsp;
            <asp:LinkButton ID="LinkLogOut" runat="server" Font-Size="Medium" ForeColor="Black" PostBackUrl="~/Profesor/logOutP.aspx">Cerrar Sesión</asp:LinkButton>
        </asp:Panel>
        PROFESOR<br />
        VER TODAS LAS PREGUNTAS</div><br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BorderColor="#00CC99" BorderStyle="Solid">
                <Columns>
                    <asp:BoundField DataField="Tema" HeaderText="Tema" SortExpression="Tema" />
                    <asp:BoundField DataField="Pregunta" HeaderText="Pregunta" SortExpression="Pregunta" />
                    <asp:BoundField DataField="Resp1" HeaderText="Resp1" SortExpression="Resp1" />
                    <asp:BoundField DataField="Resp2" HeaderText="Resp2" SortExpression="Resp2" />
                    <asp:BoundField DataField="Resp3" HeaderText="Resp3" SortExpression="Resp3" />
                    <asp:BoundField DataField="NumRespCorrecta" HeaderText="NumRespCorrecta" SortExpression="NumRespCorrecta" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HADS15_TareasConnectionString %>" SelectCommand="SELECT * FROM [Preguntas]"></asp:SqlDataSource>
            <br />
            &nbsp;<asp:Image ID="Image1" runat="server" Height="62px" ImageUrl="~/Profesor/preg3.jpg" Width="67px" />
&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Profesor/HacerPreguntas.aspx" Font-Size="Large" ForeColor="#00CC99">Insertar nuevas preguntas</asp:LinkButton>
            <br />
            <br />
            &nbsp;<asp:Image ID="Image2" runat="server" Height="57px" ImageUrl="~/Profesor/preg2.jpeg" Width="70px" />
&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Profesor/VerPreguntas.aspx" Font-Size="Large" ForeColor="#00CC99">Ver preguntas por tema</asp:LinkButton>
            <br />
            <br />
&nbsp;<asp:Image ID="Image3" runat="server" Height="54px" ImageUrl="~/Profesor/preg1.png" Width="66px" />
&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Large" ForeColor="#00CC99" PostBackUrl="~/Profesor/Profesor.aspx">Volver al menú de profesor</asp:LinkButton>
    </div>
    </form>
</body>
</html>
