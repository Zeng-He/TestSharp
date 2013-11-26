<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Practico_2_ASP.NET.Index" culture="auto" meta:resourcekey="PageResource1" uiculture="auto"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href = "Style.css" rel ="Stylesheet" type="text/css"/>

</head>
<body>
    <form id="form1" runat="server">
    <div id="evento">

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <div class="leftControl">
            <asp:ImageMap ID="imagenEvento" runat="server" Height="72px" Width="169px"></asp:ImageMap>
        </div>

        <div id="datosEvento" class="leftControl">
            <asp:Table ID="tablaEvento" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblNombre" runat="server" Text="<%$ Resources:, lblNombre %>"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtNombre" runat="server" Text="Label"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblFecha" runat="server" Text="<%$ Resources:, lblFecha %>"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtFecha" runat="server" Text="Label"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblLugar" runat="server" Text="<%$ Resources:, lblLugar %>"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtLugar" runat="server" Text="Label"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>

        <div id="combo" class="leftControl">
            <asp:DropDownList ID="comboEvento" runat="server" style="margin-left: 0px" 
                onselectedindexchanged="comboEvento_SelectedIndexChanged"  AutoPostBack="true">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lblInscriptos" runat="server" Text="<%$ Resources:, lblInscriptos %>"></asp:Label>
            <asp:Label ID="txtInscriptos" runat="server" Text="Label"></asp:Label>
        </div>
        </ContentTemplate>
        </asp:UpdatePanel>        
        


        
    </div>
    <br />
    <br />
    <br />
    <div id="inscripcion">
        <asp:Table ID="tablaInscripcion" runat="server" Width="567px">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblNombreInscripcion" runat="server" Text="<%$ Resources:, lblNombreInscripcion %>"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtNombreInscripcion" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator  Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Este control es requerido" ControlToValidate="txtNombreInscripcion" ></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblFechaInscripcion" runat="server" Text="<%$ Resources:, lblFechaInscripcion %>"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtFechaInscripcion" runat="server" Text="" Enabled="false"></asp:TextBox>
                    <asp:RequiredFieldValidator  Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Este control es requerido" ControlToValidate="txtFechaInscripcion" ></asp:RequiredFieldValidator>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnFechaInscripcion" runat="server" Text="<%$ Resources:, btnFechaInscripcion %>" OnClick="btnFechaInscripcion_Click" CausesValidation="false" />
                    <asp:Calendar ID="calendarioInscripcion" runat="server" OnSelectionChanged="calendarioInscripcion_Seleccion"></asp:Calendar>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblEmailInscripcion" runat="server" Text="<%$ Resources:, lblEmailInscripcion %>"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmailInscripcion" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator  Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Este control es requerido" ControlToValidate="txtEmailInscripcion" ></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblTelefonoInscripcion" runat="server" Text="<%$ Resources:, lblTelefonoInscripcion %>"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtTelefonoInscripcion" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        <asp:Button ID="btnGuardar" runat="server" Text="Aceptar" />
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" 
            CausesValidation="false" onclick="btnCancelar_Click"  />

    </div>
    
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true">
        <asp:ListItem Text="Spanish" Value="es"></asp:ListItem>
        <asp:ListItem Text="English" Value="en"></asp:ListItem>
    </asp:DropDownList>

    </form>
        <script type="text/javascript">
            function CancelarClick() {
                if (confirm("¿Esta seguro que desa cancelar?")) {
                    document.getElementById("txtNombreInscripcion").Value = "";
                    document.getElementById("txtFechaInscripcion").Value = "";
                    document.getElementById("txtEmailInscripcion").Value = "";
                    document.getElementById("txtTelefonoInscripcion").Value = "";
                }
            }
    </script>

</body>
</html>
