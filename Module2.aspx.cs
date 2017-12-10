using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace INTROSE_JGC
{
    public partial class Module2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //add sqlconnection
            //add sql command for fetching project data
            //get data using SqlDataAdapter
            DataTable dt = new DataTable();
            sda.Fill(dt); //sda is data adapter
            lstProject2.DataSource = dt;
            lstProject2.DataBind();

            //add sql command for getting software list
            ///get data using SqlDataAdapter
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            lstSoftware.DataSource = dt1;
            lstSoftware.DataBind();

        }

        protected void lstProject2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lstSoftware_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            int intProjID= Int32.Parse(lstProject2.SelectedValue);
            string software = lstSoftware.SelectedValue;
            string date = dtStart.Value;
            int months = Int32.Parse(txtNumofMons.Value);

            //push to temp db

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //transfer from temp db to orig db
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            lstProject2.DataSource = null;
            lstSoftware.DataSource = null;
            Response.Redirect("Module2.aspx");
        }


    }
}