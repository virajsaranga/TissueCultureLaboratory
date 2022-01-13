using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tissue_Culture_Lab_System.content_folder
{

    public partial class pdmUpdateDeletePlan : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void upb_Click(object sender, EventArgs e)
        {





            //check id exisit
            if (CheckIdExists())
            {

                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE [dbo].[plan] SET [plan_name]='" + PdmBottleName.Text.Trim() + "',[variety_name]='" + pdmUpVareityName.Text.Trim() + "',[variety_code]='" + pdmUpVarietyCode.Text.Trim() + "',[no_of_plants]='" + pdmUpNumOfPlants.Text.Trim() + "',[time]='" + pdmUpEstimateTime.Text.Trim() + "',[first_month]='" + Pdm1st.Text.Trim() + "',[second_month]='" + pdm2.Text.Trim() + "',[third_month]='" + pdm3.Text.Trim() + "',[fouth_month]='" + pdm4.Text.Trim() + "' WHERE [plan_id]='" + pdmUpPlanID.Text.Trim() +"';", con);

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





        protected void delb_CLick(object sender, EventArgs e)
        {




            deletebottlesetByID();





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
                SqlCommand cmd = new SqlCommand("SELECT * from [plan] WHERE [plan_id]='" + sbid.Text + "';", con);
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

        protected void search_CLick(object sender, EventArgs e)
        {

            //view plan details
            if (CheckIdExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    SqlCommand cmd = new SqlCommand("SELECT * from[plan] WHERE[plan_id] = '" + sbid.Text + "' ;", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {

                            pdmUpPlanID.Text = dr.GetValue(0).ToString();
                            PdmBottleName.Text = dr.GetValue(1).ToString();
                            pdmUpVareityName.Text = dr.GetValue(2).ToString();
                            pdmUpVarietyCode.Text = dr.GetValue(3).ToString();
                            pdmUpNumOfPlants.Text = dr.GetValue(4).ToString();
                            pdmUpEstimateTime.Text = dr.GetValue(5).ToString();
                            Pdm1st.Text = dr.GetValue(6).ToString();
                            pdm2.Text = dr.GetValue(7).ToString();
                            pdm3.Text = dr.GetValue(8).ToString();
                            pdm4.Text = dr.GetValue(9).ToString();





                            /*  Session["value1"] = dr.GetValue(0).ToString();
                              Session["value2"] = dr.GetValue(1).ToString();
                              Session["value3"] = dr.GetValue(2).ToString();
                              Session["value4"] = dr.GetValue(3).ToString();
                              Session["value5"] = dr.GetValue(4).ToString();
                              Session["value6"] = dr.GetValue(5).ToString();
                              Session["value7"] = dr.GetValue(6).ToString();
                              Session["value8"] = dr.GetValue(7).ToString();
                              Session["value9"] = dr.GetValue(8).ToString();
                              Session["value10"] = dr.GetValue(9).ToString();*/



                        }

                    }
                    else
                    {
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



        void deletebottlesetByID()
        {   
            //delete plan details
            if (CheckIdExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from [dbo].[plan] WHERE [plan_id]='" + sbid.Text.Trim() + "'", con);

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

        protected void print_CLick(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AddHeader("Content-Dispostion", "attachement; filename=YourFileName.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            DivToPrint.RenderControl(hw);
            //StringReader stringReader = new StringReader(StringWriter.ToString());
            iTextSharp.text.Document doc = new Document(iTextSharp.text.PageSize.A4, 50f, 50f, 30f, 30f);
            HTMLWorker htw = new HTMLWorker(doc);
            PdfWriter.GetInstance(doc, Response.OutputStream);
            doc.Open();
            StringReader sr = new StringReader(sw.ToString());
            htw.Parse(sr);
            doc.Close();
            Response.Write(doc);
            Response.End();



          
;           

        }
       
    }
}