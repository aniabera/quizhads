<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HacerPreguntas.aspx.cs" Inherits="Quiz_C.Profesor.HacerPreguntas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 910px">
    <form id="form1" runat="server">
    <div style="background-color: #00CC99; color: #FFFFFF; font-weight: bold; font-size: 21px; font-family: Arial; text-align: center; height: 92px;">
    
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left">
            &nbsp;
            <asp:LinkButton ID="LinkLogOut" runat="server" Font-Size="Medium" ForeColor="Black" PostBackUrl="~/Profesor/logOutP.aspx">Cerrar Sesión</asp:LinkButton>
        </asp:Panel>
        PROFESOR<br />
        HACER PREGUNTAS</div>
    <div style="height: 791px">
    
        <br />
        Tema:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="temaTxt" runat="server" OnTextChanged="temaTxt_TextChanged">ASP.NET</asp:TextBox>
        <br />
        <br />
        Pregunta:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="pregTxt" runat="server"></asp:TextBox>
        <br />
        <br />
        Respuesta 1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="resp1Txt" runat="server"></asp:TextBox>
        <br />
        <br />
        Respuesta 2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="resp2Txt" runat="server"></asp:TextBox>
        <br />
        <br />
        Respuesta 3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Resp3Txt" runat="server"></asp:TextBox>
        <br />
        <br />
        Número respuesta correcta:&nbsp;&nbsp; <asp:TextBox ID="numCorrectoTxt" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="numCorrectoTxt" ErrorMessage="Por favor, escriba un número del 1 al 3" ForeColor="#CC0000" MaximumValue="3" MinimumValue="1"></asp:RangeValidator>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="aceptarBtn" runat="server" Text="Añadir" OnClick="aceptarBtn_Click" Font-Size="Large" ForeColor="#00CC99" Height="32px" Width="91px" />
    
        <br />
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="5000">
        </asp:Timer>
    
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
            <ContentTemplate>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BorderColor="#00CC99" BorderStyle="Solid">
                    <Columns>
                        <asp:BoundField DataField="Pregunta" HeaderText="Pregunta" SortExpression="Pregunta" />
                        <asp:BoundField DataField="Resp1" HeaderText="Resp1" SortExpression="Resp1" />
                        <asp:BoundField DataField="Resp2" HeaderText="Resp2" SortExpression="Resp2" />
                        <asp:BoundField DataField="Resp3" HeaderText="Resp3" SortExpression="Resp3" />
                        <asp:BoundField DataField="NumRespCorrecta" HeaderText="NumRespCorrecta" SortExpression="NumRespCorrecta" />
                    </Columns>
                </asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HADS15_TareasConnectionString %>" SelectCommand="SELECT [Pregunta], [Resp1], [Resp2], [Resp3], [NumRespCorrecta] FROM [Preguntas] WHERE ([Tema] = @Tema)">
            <SelectParameters>
                <asp:ControlParameter ControlID="temaTxt" DefaultValue="ASP.NET" Name="Tema" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <br />
&nbsp;
        <asp:Image ID="Image2" runat="server" Height="57px" ImageUrl="~/Profesor/preg2.jpeg" Width="70px" />
&nbsp;
    
        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Profesor/verTodasPreguntas.aspx" Font-Size="Large" ForeColor="#00CC99">Ver todas las preguntas</asp:LinkButton>
    
        <br />
        <br />
&nbsp;
        <asp:Image ID="Image3" runat="server" Height="54px" ImageUrl="~/Profesor/preg1.png" Width="66px" />
&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Large" ForeColor="#00CC99" PostBackUrl="~/Profesor/Profesor.aspx">Volver al menú de profesor</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
