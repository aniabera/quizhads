<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerPreguntas.aspx.cs" Inherits="Quiz_C.Profesor.VerPreguntas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 854px">
    <form id="form1" runat="server">
    <div style="height: 819px">
    
    <div style="background-color: #00CC99; color: #FFFFFF; font-weight: bold; font-size: 21px; font-family: Arial; text-align: center; height: 92px;">
    
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left">
            &nbsp;
            <asp:LinkButton ID="LinkLogOut" runat="server" Font-Size="Medium" ForeColor="Black" PostBackUrl="~/Profesor/logOutP.aspx">Cerrar Sesión</asp:LinkButton>
        </asp:Panel>
        PROFESOR<br />
        VER PREGUNTAS POR TEMA</div><br />
        Tema de las preguntas:
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Tema" DataValueField="Tema" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HADS15_TareasConnectionString %>" SelectCommand="SELECT DISTINCT [Tema] FROM [Preguntas]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" Interval="8000" OnTick="Timer1_Tick">
        </asp:Timer>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
            <ContentTemplate>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BorderColor="#00CC99" BorderStyle="Solid">
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HADS15_TareasConnectionString %>" SelectCommand="SELECT [Pregunta], [Resp1], [Resp2], [Resp3], [NumRespCorrecta] FROM [Preguntas] WHERE ([Tema] = @Tema)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="Tema" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        &nbsp;<asp:Image ID="Image1" runat="server" Height="62px" ImageUrl="~/Profesor/preg3.jpg" Width="67px" />
&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Profesor/HacerPreguntas.aspx" Font-Size="Large" ForeColor="#00CC99">Insertar nuevas preguntas</asp:LinkButton>
        <br />
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
