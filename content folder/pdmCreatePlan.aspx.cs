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
    public partial class pdmCreatePlan : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void createbtn1_Click(object sender, EventArgs e)
        {   
            //check id
            if (planIdExists())
            {

                Response.Write("<script>alert('plan Id Already Exist with plan ID, try other ID');</script>");
            }
            else
            {
                createPlanDetails();
            }

        }


        bool planIdExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from [plan] WHERE [plan_id]='" + pdmPlanID.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }


        //add details details
        void createPlanDetails()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Plan]([plan_id],[plan_name],[variety_name],[variety_code],[no_of_plants],[time],[first_month],[second_month],[third_month],[fouth_month]) VALUES(@plan_id,@plan_name,@variety_name,@variety_code,@no_of_plants,@time,@first_month,@second_month,@third_month,@fouth_month)", con);

                cmd.Parameters.AddWithValue("@plan_id",pdmPlanID .Text);
                cmd.Parameters.AddWithValue("@plan_name",PdmplanName .Text);
                cmd.Parameters.AddWithValue("@variety_name",pdmAddVareityNamec .Text);
                cmd.Parameters.AddWithValue("@variety_code",pdmAddVarietyCodec.Text);

                cmd.Parameters.AddWithValue("@no_of_plants",pdmNumOfPlants.Text);
                cmd.Parameters.AddWithValue("@time",pdmEstimateTime.Text);
                cmd.Parameters.AddWithValue("@first_month",Pdm1Month.Text);
                cmd.Parameters.AddWithValue("@second_month", pdm2ndMonth.Text);
                cmd.Parameters.AddWithValue("@third_month",pdm3rdMonth.Text);
                cmd.Parameters.AddWithValue("@fouth_month",pdm4thmonth.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Store data Successfully');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void PdmplanName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}