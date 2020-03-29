<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Home.Master" AutoEventWireup="true" CodeBehind="consultarUsuario.aspx.cs" Inherits="SistemaRendevu.VistasPaginas.ConsultarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4 class="text-center">CONSULTA DE USUARIOS</h4>
    <asp:Button ID="btnBuscarUsuario" runat="server" Text="Buscar" />
    <asp:TextBox ID="TextBox1" PlaceHolder="Buscar" runat="server" ></asp:TextBox> 
    <div>
        <br />
    <asp:GridView ID="gdvListaUsuarios" CssClass="gridView" runat="server" Width="927px" AutoGenerateColumns="False" OnRowCommand="gbListaUsuario_RowCommand" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                
                <asp:BoundField HeaderText="Cedula" DataField="Cedula" />
                <asp:BoundField HeaderText="Rol" DataField="RolId" />
                <asp:BoundField HeaderText="Nombres" DataField="Nombres" />
                <asp:BoundField HeaderText="Apellidos" DataField="Apellido1 + Apellido2" />
                <asp:BoundField HeaderText="Edad" DataField="Edad" />
                <asp:BoundField HeaderText="Direccion" DataField="Direccion" />
                <asp:BoundField HeaderText="Sexo" DataField="Sexo" />
                <asp:BoundField HeaderText="Email" DataField="Email" />
                <asp:BoundField HeaderText="Telefono" DataField="Telefono" />                
                <asp:BoundField HeaderText="Fecha Ingreso" DataField="FechaIngreso" />
                <asp:BoundField HeaderText="Estado" DataField="Estado" />
                <asp:TemplateField HeaderText="Acciones" >
                    <ItemTemplate>
                        <asp:ImageButton CommandName="Actualizar" ImageUrl="~/img/Actualizar.png" Width="22px" ID="imgActualizar" runat="server" />
                        <asp:ImageButton CommandName="Eliminar" ImageUrl="~/img/Eliminar.png" Width="22px" ID="imgEliminar" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>        
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        </div>
    <asp:Label ID="lblMessage" CssClass="form-control" runat="server" Text="Label"></asp:Label>
</asp:Content>
