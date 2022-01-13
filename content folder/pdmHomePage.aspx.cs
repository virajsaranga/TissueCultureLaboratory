using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tissue_Culture_Lab_System.content_folder
{
    public partial class pdmHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void pdmb1_Click(object sender, EventArgs e)
        {
            Response.Redirect("pdmViewPlan.aspx");
        }


        protected void pdmb2_Click(object sender, EventArgs e)
        {
            Response.Redirect("pdmGetPlantBottleDetails.aspx");
        }

        protected void pdmb3_Click(object sender, EventArgs e)
        {
            Response.Redirect("pdmReportPage.aspx");
        }

        protected void pdmb4_Click(object sender, EventArgs e)
        {
            Response.Redirect("pdmGetVarietyIns.aspx");
        }

        protected void pdm5_Click(object sender, EventArgs e)
        {
            Response.Redirect("pdmPlanReport.aspx");
        }
    }
}