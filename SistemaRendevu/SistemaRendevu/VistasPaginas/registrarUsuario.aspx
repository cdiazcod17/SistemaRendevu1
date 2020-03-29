﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Home.Master" AutoEventWireup="true" CodeBehind="registrarUsuario.aspx.cs" Inherits="SistemaRendevu.VistasPaginas.registrarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
    <h4 class="text-center">REGISTRO DE USUARIOS</h4>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-6">
                <div class="box box-danger">
                    <div class="box-body">
                        <div class="form-group">
                            <label>DOCUMENTO DE IDENTIDAD</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control" Text=""></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>NOMBRES</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtNombres" runat="server" CssClass="form-control" Text=""></asp:TextBox> 
                        </div>
                        <div class="form-group">
                            <label>PRIMER APELLIDO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtPrimerAp" runat="server" CssClass="form-control" Text=""></asp:TextBox> 
                        </div>
                        <div class="form-group">
                            <label>SEGUNDO APELLIDO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtSegundoAp" runat="server" CssClass="form-control" Text=""></asp:TextBox> 
                        </div>
                        <div class="form-group">
                            <label>DIRECCION</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" Text=""></asp:TextBox> 
                        </div>
                        <div class="form-group">
                            <label>CIUDAD</label>
                            <!--<asp:Label Text="(1.Bogota - 2.Medellin - 3. Cali)" runat="server" />-->
                        </div>
                         <!--<asp:TextBox ID="txtIdCiudad" CssClass="form-control" runat="server" Text=""></asp:TextBox>-->
                       <asp:DropDownList ID="DDLCiudad" CssClass="form-control" runat="server">
                            <asp:ListItem Value="1">Bogota</asp:ListItem>
                            <asp:ListItem Value="2">Medellin</asp:ListItem>
                            <asp:ListItem Value="3">Cali</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="box box-danger">
                    <div class="box-body">
                        <div class="form-group">
                            <label>SEXO</label>
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="DDLSexo" runat="server" CssClass="form-control">
                                <asp:ListItem>Masculino</asp:ListItem>
                                <asp:ListItem>Femenino</asp:ListItem>
                            </asp:DropDownList> 
                        </div>
                        <div class="form-group">
                            <label>TELEFONO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" Text=""></asp:TextBox> 
                        </div>
                        <div class="form-group">
                            <label>EDAD</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control" Text=""></asp:TextBox> 
                        </div>
                        <div class="form-group">
                            <label>EMAIL</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Text=""></asp:TextBox> 
                        </div>
                        <div class="form-group">
                            <label>CLAVE</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtClave" runat="server" CssClass="form-control" Text="" TextMode="Password"></asp:TextBox> 
                        </div>
                        <div class="form-group">
                            <label>FECHA INGRESO</label>
                        </div>
                        <div class="form-group">
                            <asp:Calendar id="dateCa" runat="server"></asp:Calendar>
                        </div>
                        <div class="form-group">
                            <label>ESTADO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtEstado" runat="server" CssClass="form-control" Text=""></asp:TextBox> 
                        </div>
                        <div class="form-group">
                            <label>ROL</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtRol" runat="server" CssClass="form-control" Text=""></asp:TextBox> 
                        </div>
                    </div>
                </div>
            </div>
        </div>        
            <div align="center">
                <table>
                    <tr>
                        <td>
                            <asp:Button ID="btnRegistrar" runat="server"  CssClass="btn-primary" Width="200px" Text="Registrar"/>
                        </td>                        
                       <td>&nbsp;&nbsp;&nbsp;&nbsp;</td> 
                        <td>
                            <asp:Button ID="btnCancelar" runat="server"  CssClass="btn-danger" Width="200px" Text="Cancelar" />
                        </td>
                    </tr>
                </table>
            </div> 
            <br />      
    </section>
</asp:Content>
