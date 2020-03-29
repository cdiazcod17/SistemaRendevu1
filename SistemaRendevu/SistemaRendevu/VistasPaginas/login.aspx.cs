using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace SistemaRendevu.VistasPaginas
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            string TipoDoc = DDLTipoDoc.Text;
            string Cedula = txtUsuario.Text;
            string Clave = txtPassword.Text;

            UsuarioDAO usuarioDAO = new UsuarioDAO();
            Usuarios usuarioLog = usuarioDAO.Login( TipoDoc,Cedula,Clave);

            if(usuarioLog.Cedula != null)
            {
                Session["CedulaLogin"] = usuarioLog.Cedula;
                Session["NombreLogin"]=usuarioLog.Nombres;                

                if (usuarioLog.RolId == "1")
                {
                    Response.Write("<Script>alert('USUARIO CORRECTO')</Script>");
                    Response.Redirect("vistaAdmin.aspx");
                }
                if (usuarioLog.RolId == "2")
                {
                    Response.Write("<Script>alert('USUARIO CORRECTO')</Script>");
                    Response.Redirect("vistaEstudiante.aspx");
                }
            }
            else
            {
                Response.Write("<Script>alert('USUARIO INCORRECTO, VERIFIQUE INFORMACIÓN')</Script>");
            }
        }
    }
}