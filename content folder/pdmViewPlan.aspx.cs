using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tissue_Culture_Lab_System.content_folder
{
    public partial class pdmViewPlan : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void pdmp1_Click(object sender, EventArgs e)
        {
            Response.Redirect("pdmCreatePlan.aspx");
        }

        protected void planView_Click(object sender, EventArgs e)
        {
            Response.Redirect("pdmUpdateDeletePlan.aspx");

        }
       









            }

        }


    



