using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace SistemaRendevu.VistasPaginas
{
    public partial class ConsultarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            if (!IsPostBack)
            {
         
            }
            

        }

        protected void gbListaUsuario_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow fila = (GridViewRow)((Control)e.CommandSource).NamingContainer;
            int indice = fila.RowIndex;//saber en que dila le di click

            if(e.CommandName == "Eliminar")
            {
                string Cedula = gdvListaUsuarios.Rows[indice].Cells[0].Text;
                UsuarioDAO usuarioDAO = new UsuarioDAO();
                CargarGrilla();
                lblMessage.Text = usuarioDAO.DeleteUser(Cedula);
            }
        }

        protected void CargarGrilla()
        {
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            gdvListaUsuarios.DataSource = usuarioDAO.CheckView(Session["Cedula"].ToString()).ToList();
            gdvListaUsuarios.DataBind();
        }
    }
}