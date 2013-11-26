using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practico_2_ASP.NET
{
    public partial class Index : System.Web.UI.Page
    {
        Contexto c = new Contexto();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (comboEvento.Items.Count == 0) {
                comboEvento.Items.Add(c.eventos[0].Nombre);
                comboEvento.Items.Add(c.eventos[1].Nombre);
                comboEvento.Items.Add(c.eventos[2].Nombre);
            }


            Evento ev = c.eventos[comboEvento.SelectedIndex];

            imagenEvento.ImageUrl = ev.imagen;
            txtNombre.Text = ev.Nombre;
            txtFecha.Text = ev.Fecha.ToShortDateString();
            txtLugar.Text = ev.Lugar;

            calendarioInscripcion.Visible = false;
        }

        protected void btnFechaInscripcion_Click(object sender, EventArgs e) {
            calendarioInscripcion.Visible = true;
            btnFechaInscripcion.Visible = false;
        }

        protected void calendarioInscripcion_Seleccion(object sender, EventArgs e) {
            calendarioInscripcion.Visible = false;
            btnFechaInscripcion.Visible = true;
            txtFechaInscripcion.Text = calendarioInscripcion.SelectedDate.Date.ToShortDateString();
        }

        protected void comboEvento_SelectedIndexChanged(object sender, EventArgs e)
        {
            Evento ev = c.eventos[comboEvento.SelectedIndex];

            imagenEvento.ImageUrl = ev.imagen;
            txtNombre.Text = ev.Nombre;
            txtFecha.Text = ev.Fecha.ToShortDateString();
            txtLugar.Text = ev.Lugar;
            Session["Evento"] = c.eventos[comboEvento.SelectedIndex];
        }

        protected override void InitializeCulture()
        {

            if (Request.Params["DropDownList1"] != null)
            {
                UICulture = Request.Params["DropDownList1"];
                Culture = Request.Params["DropDownList1"];
            }
            base.InitializeCulture();
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            string script = 
            "<script>"
              +"function CancelarClick() {"
              + " if (confirm('¿Esta seguro que desa cancelar?')) {"
              +  "    document.getElementById('txtNombreInscripcion').Value = '';"
              +  "    document.getElementById('txtFechaInscripcion').Value = '';"
              +  "    document.getElementById('txtEmailInscripcion').Value = '';"
              +  "    document.getElementById('txtTelefonoInscripcion').Value = '';"
              +  "}"
            +"}"
            +"</script>";

            ScriptManager.RegisterStartupScript(this, typeof(Page), "invocarfuncion", script, false);

            //ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>CancelarClick();</script>");

            //ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>"
            //  +"function CancelarClick() {"
            //  + " if (confirm('¿Esta seguro que desa cancelar?')) {"
            //  +  "    document.getElementById('txtNombreInscripcion').Value = '';"
            //  +  "    document.getElementById('txtFechaInscripcion').Value = '';"
            //  +  "    document.getElementById('txtEmailInscripcion').Value = '';"
            //  +  "    document.getElementById('txtTelefonoInscripcion').Value = '';"
            //  +  "}"
            //+"}"
            //+"</script>");
        }
    }
}