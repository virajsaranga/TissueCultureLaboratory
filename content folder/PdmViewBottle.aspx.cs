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

    public partial class PdmViewBottle : System.Web.UI.Page
    {

        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            pdmBottleID.Text = Session["value1"].ToString();
            upDate.Text = Session["value2"].ToString();
            upMonth.Text = Session["value3"].ToString();
            upYear.Text = Session["value4"].ToString();
            pdmv.Text = Session["value5"].ToString();
            pdmNoOfPlnt.Text = Session["value6"].ToString();
            pdmoperators.Text = Session["value7"].ToString();
        }



        protected void del1_Click(object sender, EventArgs e)
        {
            deleteMemberByID();
        }

        protected void up1_Click(object sender, EventArgs e)
        {
            UpdateBottleSetDetailv();
        }



        bool CheckIdExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from [PlantBottles] WHERE [bottle_id]='" + pdmBottleID.Text + "'AND [variety_code]='" + pdmv.Text + "' ;", con);
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


            void UpdateBottleSetDetailv()
            {
                if (CheckIdExists())
                {
                    
                    try
                    {
                        SqlConnection con = new SqlConnection(strcon);
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }
                        SqlCommand cmd = new SqlCommand("UPDATE [dbo].[PlantBottles] SET [date]='" + upDate.Text.Trim() + "',[month]='" + upMonth.Text.Trim() + "',[year]='" + upYear.Text.Trim() + "',[no_of_plants]='" + pdmNoOfPlnt.Text.Trim() + "',[code_of_the_operator]='" + pdmoperators.Text.Trim() + "' WHERE [bottle_id]='" + pdmBottleID.Text.Trim() + "' AND [variety_code]='" + pdmv.Text.Trim() + "';", con);

                        cmd.ExecuteNonQuery();
                        con.Close();

                        Response.Write("<script>alert('Ending  Updated Successfully');</script>");
                        


                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }

                }

                else
                {
                    Response.Write("<script>alert('Invalid Member ID');</script>");
                }

            }





        void deleteMemberByID()
        {
            if (CheckIdExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE* from [PlantsBottles] WHERE [bottle_id]='" + pdmBottleID.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Member Deleted Successfully');</script>");
                    

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
        }

        protected void pdmv_TextChanged(object sender, EventArgs e)
        {

        }
    }


}