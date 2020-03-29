using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class UsuarioDAO    
    
    {
        ORMDataContext BDR = new ORMDataContext();

        public string RegistrarUsuario(Usuarios usuario)
        {
            try
            {
                BDR.Usuarios.InsertOnSubmit(usuario);
                BDR.SubmitChanges();
                return "USUARIO REGISTRADO CORRECTAMENTE";
            }
            catch (Exception ex)
            {
                return "VERIFIQUE DATOS INGRESADOS, USUARIO NO REGISTRADO" + ex.Message;

            }

        }

        public List<Usuarios> CheckView(string cedulaUsuario)
        {

            List<Usuarios> listaUsuarios = new List<Usuarios>();
            var consultaUsuarios = (from u in BDR.Usuarios where u.Cedula == cedulaUsuario && u.Estado == true select u);
            foreach (var obj in consultaUsuarios)
            {
                Usuarios usuario = new Usuarios();
                usuario.TipoDocId = obj.TipoDocId;
                usuario.RolId = obj.RolId;
                usuario.CiudadId = obj.CiudadId;
                usuario.Cedula = obj.Cedula;
                usuario.Nombres = obj.Nombres;
                usuario.Apellido1 = obj.Apellido1;
                usuario.Apellido2 = obj.Apellido2;
                usuario.Direccion = obj.Direccion;
                usuario.Sexo = obj.Sexo;
                usuario.Email = obj.Email;
                usuario.Telefono = obj.Telefono;
                usuario.Edad = obj.Edad;                
                usuario.FechaIngreso = obj.FechaIngreso;
                usuario.Imagen = obj.Imagen;
                usuario.Estado = obj.Estado;
                

                listaUsuarios.Add(usuario);
            }
            return listaUsuarios;
        }
        public List<Usuarios> CheckAll()
        {

            List<Usuarios> listaUsuarios = new List<Usuarios>();
            var consultaUsuarios = from u in BDR.Usuarios select u;
            foreach (var obj in consultaUsuarios)
            {
                Usuarios usuario = new Usuarios();
                usuario.UsuarioId = obj.UsuarioId;
                usuario.TipoDocId = obj.TipoDocId;
                usuario.RolId = obj.RolId;
                usuario.CiudadId = obj.CiudadId;
                usuario.Cedula = obj.Cedula;
                usuario.Nombres = obj.Nombres;
                usuario.Apellido1 = obj.Apellido1;
                usuario.Apellido2 = obj.Apellido2;
                usuario.Direccion = obj.Direccion;
                usuario.Sexo = obj.Sexo;
                usuario.Email = obj.Email;
                usuario.Telefono = obj.Telefono;
                usuario.Edad = obj.Edad;                
                usuario.Clave = obj.Clave;
                usuario.FechaIngreso = obj.FechaIngreso;
                usuario.Imagen = obj.Imagen;
                usuario.Estado = obj.Estado;
                usuario.IpPermisos = obj.IpPermisos;

                listaUsuarios.Add(usuario);
            }
            return listaUsuarios;
        }

        public Usuarios BuscarId(string tipoDoc, string nroDocum)
        {

            var consultaPorID = (from u in BDR.Usuarios where u.TipoDocId == tipoDoc && u.Cedula == nroDocum select u);
            Usuarios usuario = null;
            if (consultaPorID.Count() > 0)
                usuario = consultaPorID.First();
            return usuario;
        }

        public string UpdateUser(Usuarios usuario)
        {
            try
            {
                var buscarUsuario = (from u in BDR.Usuarios where u.TipoDocId == usuario.TipoDocId && u.Cedula == usuario.Cedula select u).First();
                buscarUsuario.Cedula = usuario.Cedula;
                buscarUsuario.TipoDocId = usuario.TipoDocId;                
                buscarUsuario.Nombres = usuario.Nombres;
                buscarUsuario.Apellido1 = usuario.Apellido1;
                buscarUsuario.Apellido2 = usuario.Apellido2;
                buscarUsuario.Direccion = usuario.Direccion;
                buscarUsuario.Sexo = usuario.Sexo;
                buscarUsuario.Email = usuario.Email;
                buscarUsuario.Telefono = usuario.Telefono;
                buscarUsuario.Edad = usuario.Edad;
                buscarUsuario.Clave = usuario.Clave;
                buscarUsuario.FechaIngreso = usuario.FechaIngreso;
                buscarUsuario.Estado = usuario.Estado;
                buscarUsuario.RolId = usuario.RolId;
                buscarUsuario.CiudadId = usuario.CiudadId;
                buscarUsuario.TipoDocId = usuario.TipoDocId;


                BDR.SubmitChanges();
                return "SUS DATOS FUERON ACTUALIZADOS CORRECTAMENTE";
            }
            catch (Exception ex)
            {
                return "VERIFIQUE LA INFORMACIÓN INGRESADA" + ex.Message;

            }

        }
        public string DeleteUser( string cedula)
        {
            try
            {
                var consultaPorID = (from u in BDR.Usuarios where u.Cedula == cedula select u).First();
                consultaPorID.Estado = false;
                BDR.SubmitChanges();
                return "USUARIO ELIMINADO";
            }
            catch(Exception ex)
            {
                return "USUARIO NO ELIMINADO, VERIFIQUE CAMPOS" + ex.Message;
            }
        }
        public Usuarios Login(string TipoDoc , string cedula, string clave)
        {

            try
            {
                var Consulta = (from u in BDR.Usuarios where u.TipoDocId == TipoDoc && u.Cedula == cedula && u.Clave == clave select u).First();
                return Consulta;
            }

            catch (Exception)
            {
                return new Usuarios();
            }

        }

        

    }
}
