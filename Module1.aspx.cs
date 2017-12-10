using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

using System.Data;

namespace INTROSE_JGC
{
    public partial class Module1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!this.IsPostBack)
            {
                //change string connector depending on the configuration of your database
             //   OracleConnection con = new OracleConnection();
                try
                {
                    //con.Open();
                    //insert correct query here to get projects below
                  //  OracleCommand cmd = new OracleCommand("SELECT PROJECT FROM TEMPTABLE", con);
                    

                       // cmd.CommandType = CommandType.Text;
                        //cmd.Connection = con;
                    //    OracleDataReader dr = cmd.ExecuteReader();
                      //  dr.Read();
                        {

                           // lstProject.Items.Add(dr.GetString(0));
                            /*lstProject.DataTextField = "PROJECT_NAME";
                            lstProject.DataValueField = "PROJECT_ID";
                            lstProject.DataBind();*/
                        }
                    

                    //get categories
                    /*  using (OracleCommand cmd = new OracleCommand("SELECT CustomerId, Name FROM Customers"))
                      {
                          cmd.CommandType = CommandType.Text;
                          cmd.Connection = con;
                          using (OracleDataAdapter sda = new OracleDataAdapter(cmd))
                          {
                              DataSet ds = new DataSet();
                              sda.Fill(ds);
                              lstCategory.DataSource = ds.Tables[0];
                              lstCategory.DataTextField = "CATEGORY";
                              lstCategory.DataValueField = "CATEGORY";
                              lstCategory.DataBind();
                          }
                      }
                  }*/
                    lstProject.Items.Insert(0, new ListItem("--Select Project--", "0"));
                }
                catch
                {

                }
                //lstCategory.Items.Insert(0, new ListItem("--Select Category--", "0"));
            }
        }

        protected void proj_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void cat_SelectedIndexChanged(object sender, EventArgs e)
        {
            //when category is selected, materials dropdownlist will be filled with data acc. to category
            string category = lstCategory.SelectedValue;
            using (SqlConnection con = new SqlConnection("DATA SOURCE=INTROSE;DBA PRIVILEGE=SYSDBA;USER ID=SYS"))
            {
                //insert correct query here to get material below
                /* use SqlCommand.Parameters
                 * SqlCommand command = new SqlCommand("Select @category from category");
                 * command.Parameters.Add("@category",category); category is the string above.
                 */
                using (SqlCommand cmd = new SqlCommand("SELECT CustomerId, Name FROM Customers"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataSet ds = new DataSet();
                        sda.Fill(ds);
                        lstMaterials.DataSource = ds.Tables[0];
                        lstMaterials.DataTextField = "NAME";
                        lstMaterials.DataValueField = "MATERIAL_ID";
                        lstMaterials.DataBind();
                    }
                }
            }
        }

        protected void mat_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //add to temp db
            

            int intQty = Int32.Parse(txtQuantity.Text);
            string strMaterial = lstMaterials.SelectedValue;
            string strRemarks = txtRemarks.Text;
            //get price of selected material using SQL query
            //float price = qty * priceofmaterial
           

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            //clear gridview or all current additions at datatable
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //ITO NA - Transfer data from temp db to orig db

            //send datatable to insert to database
           /* using (var bulkCopy = new SqlBulkCopy(_connection.ConnectionString, SqlBulkCopyOptions.KeepIdentity))
            {
                // my DataTable column names match my SQL Column names, so I simply made this loop. However if your column names don't match, just pass in which datatable name matches the SQL column name in Column Mappings
                foreach (DataColumn col in table.Columns)
                {
                    bulkCopy.ColumnMappings.Add(col.ColumnName, col.ColumnName);
                }

                bulkCopy.BulkCopyTimeout = 600;
                bulkCopy.DestinationTableName = destinationTableName;
                bulkCopy.WriteToServer(table);
            }*/
        }

    }
}