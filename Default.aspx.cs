using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    double height = 0, weight = 0, bmi;
    int stime, so = 0, su = 0;
    int a, b, c, agerange;
    
    protected void Page_Load(object sender, EventArgs e)
    { 
        
    }
    protected void btnSumbit_Click(object sender, EventArgs e)
    {

        if(sport.SelectedIndex == 0 && sporttime.Text == "")
        {sporttime.Text = "0";}

       

        if (name.Text == "" || heigh.Text == "" || weigh.Text == "" ||
            Systolic.Text == "" || Diastolic.Text == "" || gender.SelectedValue == "" 
            || sport.SelectedValue == "" || drink.SelectedValue == "")
        {
             
             Response.Write("<script>alert('上述不能為空白')</script>"); 
           
            //ScriptManager.RegisterStartupScript(Page, GetType(),"alert","<script>alert('不可空白')</script>",false);

        }
        else
        {
            Label8.Visible = true;
            Panel1.Visible = true;
            Label8.Text = "您的健康狀況:";
            if (ssport.SelectedIndex == -1)
            {
                Label7.Visible = false;
                Label4.Visible = false;
                Label6.Visible = false;
                
            }
            else {
                b = int.Parse(ssport.SelectedValue); //常做的運動
                for (int i = 0; i < 5; i++)
                {
                    if (ssport.Items[i].Selected == true)
                    {
                        Label4.Text = "溫和運動!";
                        Label4.Visible = true;
                    }
                }
                for (int i = 5; i < 8; i++)
                {
                    if (ssport.Items[i].Selected == true)
                    {
                        Label6.Text = "激烈運動!";
                        Label6.Visible = true;
                    }
                }
                Label7.Text = "運動型態:";


            }
            

            height = double.Parse(heigh.Text);
            weight = double.Parse(weigh.Text);
            so = int.Parse(Systolic.Text);
            su = int.Parse(Diastolic.Text);
            agerange = int.Parse(age.SelectedValue);
            a = int.Parse(sport.SelectedValue); //每周運動次數
            stime = int.Parse(sporttime.Text);//運動多久
            //
            c = int.Parse(drink.SelectedValue); //飲料次數
            bmi = weight / ((height * height) / 10000);
            //name.Text = Convert.ToString(bmi);

            if (height < 0 || weight < 0) { Response.Write("<script>alert('身高體重不能為非負整數')</script>"); }
            else {
                if (bmi >= 24)
                {
                    Label1.Text = "bmi=" + bmi + "過重喔!";
                }
                else if (bmi < 18.5) { Label1.Text = "bmi=" + bmi + "過輕喔!"; }
                else
                {
                    Label1.Text = "bmi=" + bmi;
                }
            
            }

           



            if (agerange == 5) //範圍在66歲以上
            {
                if (so >= 130 && su >= 90 && so>su)
                {
                    Label2.Text = "年長者小心高血壓!";
                }
                else
                {
                    Label2.Text = " ";
                }
                if (a <= 2 || stime <= 30)
                {
                    Label3.Text = "年長者 太少運動了~";
                }
                else
                {
                    Label3.Text = " ";
                }

            }
            else
            {
                if (so >= 120 && su >= 80 && so > su)
                {
                    Label2.Text = "小心高血壓!";
                }
                else
                {
                    Label2.Text = " ";
                }
                if (a <= 3 || stime <= 50)
                {
                    Label3.Text = "太少運動了~";
                }
                else
                {
                    Label3.Text = " ";
                }
            }


            if (c >= 3)
            {
                Label5.Text = "喝太多含糖飲料囉!";
            }
            else
            {
                Label5.Text = "";
            }
            
        }
            
        
    }
    protected void name_TextChanged(object sender, EventArgs e)  //name
    {

    }

    protected void gender_SelectedIndexChanged(object sender, EventArgs e) //gender
    {

    }

    protected void age_SelectedIndexChanged(object sender, EventArgs e) //age
    {

    }

    protected void heigh_TextChanged(object sender, EventArgs e)  //heigh
    {

    }

    protected void weigh_TextChanged(object sender, EventArgs e)  //weigh
    {

    }


    protected void Systolic_TextChanged(object sender, EventArgs e)//收縮
    {

    }

    protected void Diastolic_TextChanged(object sender, EventArgs e)//舒張
    {

    }

    protected void sport_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if (sport.SelectedIndex == 0)
        {
            sporttime.Enabled = false;
        }
        else {
            sporttime.Enabled = true;
        }
    }
    protected void sporttime_TextChanged(object sender, EventArgs e) //sport
    {
        
    }
    protected void ssport_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}