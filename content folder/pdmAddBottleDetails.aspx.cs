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
    public partial class pdmAddBottleDetails : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn1_Click(object sender, EventArgs e)
        {
            if (CheckIdExists())
            {

                Response.Write("<script>alert('Bottle Set Id Already Exist with this Member ID, try other ID');</script>");
            }
            else
            {
                AddPlantDetails();
            }
        }

        //bottele set id define method
        bool CheckIdExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from [PlantBottles] WHERE [bottle_id]='" + pdmAdadBottleID.Text.Trim() + "';", con);
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





        //add plant details
        void AddPlantDetails()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[PlantBottles]([bottle_id],[date],[month],[year],[variety_code],[no_of_plants],[code_of_the_operator]) VALUES(@bottle_id,@date,@month,@year,@variety_code,@no_of_plants,@code_of_the_operator)",con);
                
                //pass the data
                cmd.Parameters.AddWithValue("@bottle_id",pdmAdadBottleID.Text);
                cmd.Parameters.AddWithValue("@date",pdmdate.Text);
                cmd.Parameters.AddWithValue("@month",pdmmonth.Text);
                cmd.Parameters.AddWithValue("@year",pdmyear.Text);
        
                cmd.Parameters.AddWithValue("@variety_code", pdmAddVareityCode.Text);
                cmd.Parameters.AddWithValue("@no_of_plants",pdmAddNoOfPlants .Text);
                cmd.Parameters.AddWithValue("@code_of_the_operator",pdmAddoperator.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Store data Successfully.Next store data after the autoclave machine cycle');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void pdmAddNoOfPlants_TextChanged(object sender, EventArgs e)
        {

        }
    }
}

