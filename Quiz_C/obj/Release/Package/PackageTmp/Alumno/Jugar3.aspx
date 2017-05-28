<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Jugar3.aspx.cs" Inherits="Quiz_C.Alumno.Jugar3" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

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
&nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <strong><asp:Label ID="pregLbl" runat="server" Text='<%# Eval("Pregunta")%>'></asp:Label></strong>
            </ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HADS15_TareasConnectionString %>" SelectCommand="SELECT [Pregunta] FROM [Preguntas] WHERE ([IdPreg] = @IdPreg)">
            <SelectParameters>
                <asp:SessionParameter Name="IdPreg" SessionField="IDPreg" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        Escoje la respuesta correcta:<br />
        <br />
        <asp:Panel ID="Panel3" runat="server" Height="79px">
            <asp:RadioButtonList ID="RadioButtonList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="Resp1" DataValueField="Resp1" OnSelectedIndexChanged="RadioButtonList4_SelectedIndexChanged">
            </asp:RadioButtonList>
            <asp:RadioButtonList ID="RadioButtonList5" runat="server" DataSourceID="SqlDataSource4" DataTextField="Resp2" DataValueField="Resp2" OnSelectedIndexChanged="RadioButtonList5_SelectedIndexChanged" style="height: 27px">
            </asp:RadioButtonList>
            <asp:RadioButtonList ID="RadioButtonList6" runat="server" DataSourceID="SqlDataSource5" DataTextField="Resp3" DataValueField="Resp3" OnSelectedIndexChanged="RadioButtonList6_SelectedIndexChanged">
            </asp:RadioButtonList>
        </asp:Panel>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:HADS15_TareasConnectionString %>" SelectCommand="SELECT [Resp3] FROM [Preguntas] WHERE ([IdPreg] = @IdPreg)">
            <SelectParameters>
                <asp:SessionParameter Name="IdPreg" SessionField="IDPreg" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:HADS15_TareasConnectionString %>" SelectCommand="SELECT [Resp2] FROM [Preguntas] WHERE ([IdPreg] = @IdPreg)">
            <SelectParameters>
                <asp:SessionParameter Name="IdPreg" SessionField="IDPreg" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HADS15_TareasConnectionString %>" SelectCommand="SELECT [Resp1] FROM [Preguntas] WHERE ([IdPreg] = @IdPreg)">
            <SelectParameters>
                <asp:SessionParameter Name="IdPreg" SessionField="IDPreg" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Aceptar" ForeColor="#FF0066" />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Alumno/EscogerTema.aspx" ForeColor="#FF0066">Volver a la elección de tema</asp:LinkButton>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
