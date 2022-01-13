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
    public partial class pdmGetPlantBottleDetails : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PlantBottle1_Click(object sender, EventArgs e)
        {
            Response.Redirect("pdmAddBottleDetails.aspx");
        }

        protected void viewbtn1_Click(object sender, EventArgs e)
        {

            //view details
            if (CheckIdExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    SqlCommand cmd = new SqlCommand("SELECT * from[PlantBottles] WHERE[bottle_id] = '" + pdmGetBottleID.Text+ "'AND[variety_code] = '" + PdmGetBottledate.Text+ "' ; ", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {   
                            //pass details
                            pdmBottleID.Text = dr.GetValue(0).ToString();
                            upDate.Text= dr.GetValue(1).ToString();
                            upMonth.Text = dr.GetValue(2).ToString();
                            upYear.Text = dr.GetValue(3).ToString();
                            pdmv.Text = dr.GetValue(4).ToString();
                            pdmNoOfPlnt.Text = dr.GetValue(5).ToString();
                            pdmoperators.Text = dr.GetValue(6).ToString();

                      


                           
                           /* Session["value1"] = dr.GetValue(0).ToString();
                            Session["value2"] = dr.GetValue(1).ToString();
                            Session["value3"] = dr.GetValue(2).ToString();
                            Session["value4"] = dr.GetValue(3).ToString();
                            Session["value5"] = dr.GetValue(4).ToString();
                            Session["value6"] = dr.GetValue(5).ToString();
                            Session["value7"] = dr.GetValue(6).ToString();*/

                        }
                        
                    }
                    else
                    {   //page redirect
                        Response.Write("<script>alert('Invalid credentials');</script>");
                    }

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }


            }
            else
            {

                Response.Write("<script>alert(' This Bottle Id Dose not Exist, try other ID');</script>");
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
                SqlCommand cmd = new SqlCommand("SELECT * from [PlantBottles] WHERE [bottle_id]='" +pdmGetBottleID.Text+ "'AND [variety_code]='"+PdmGetBottledate.Text+"' ;", con);
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

        protected void Update_Click(object sender, EventArgs e)
        {

            UpdateBottleSetDetailv();

        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            deletebottlesetByID();



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
                    //update sql query
                    SqlCommand cmd = new SqlCommand("UPDATE [dbo].[PlantBottles] SET [date]='" + upDate.Text.Trim() + "',[month]='" + upMonth.Text.Trim() + "',[year]='" + upYear.Text.Trim() + "',[no_of_plants]='" + pdmNoOfPlnt.Text.Trim() + "',[code_of_the_operator]='" + pdmoperators.Text.Trim() + "' WHERE [bottle_id]='" + pdmBottleID.Text.Trim() + "' AND [variety_code]='" + pdmv.Text.Trim() + "';", con);

                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert('Bottle Details  Updated Successfully');</script>");



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


        //delete


        void deletebottlesetByID()
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
                    //delete sql query
                    SqlCommand cmd = new SqlCommand("DELETE from [dbo].[PlantBottles] WHERE [bottle_id]='" +pdmGetBottleID.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Bottle Deleted Successfully');</script>");

                }


                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }


            }
            else
            {
                Response.Write("<script>alert('Invalid bottle ID');</script>");
            }
        }

        protected void upDate_TextChanged(object sender, EventArgs e)
        {

        }
    }
}