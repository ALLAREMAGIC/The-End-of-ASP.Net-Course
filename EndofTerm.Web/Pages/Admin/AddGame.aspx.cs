using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EndofTerm.BLL;
using System.Data;

public partial class Pages_Admin_AddGame : System.Web.UI.Page
{
    private GamesService gamesService = new GamesService();

    protected void Page_Load(object sender, EventArgs e)
    {
        CheckUser();
    }

    protected void LnkbtnLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/Pages/Normal/GamesIndex.aspx");
    }

    protected void btnUploadImg_Click(object sender, EventArgs e)
    {
        bool bok = false;//默认为false
        string path = Server.MapPath("~/Images/");//储存文件夹路径
        if (fuLogo.HasFile)//检测是否有上传文件
        {
            string file = System.IO.Path.GetExtension(fuLogo.FileName).ToLower();//获取文件夹下的文件路径
            string[] allow = new string[] { ".png", ".jpg", ".gif", ".bmp", ".jpeg" };//后缀名数组

            foreach (string s in allow)//读取后缀名数组
            {
                if (s == file) //如果符合数组里的类型
                {
                    bok = true;//bool值为true
                }
            }

            if (bok)//如果为true
            {
                try
                {
                    fuLogo.PostedFile.SaveAs(path + "\\" + fuLogo.FileName);//上传文件
                    lblImgTip.Text = "文件" + fuLogo.FileName + "上传成功!";
                }
                catch (Exception ex)
                {
                    lblImgTip.Text = "文件上传失败!" + ex.Message;
                }
            }
            else
            {
                lblImgTip.Text = "上传的图片格式不正确：只能上传.png,jpg,.gif,.bmp,.jpeg";
            }
        }

        Image1.ImageUrl = Server.MapPath("~/Images/" + fuLogo.FileName);//把上传的图片赋给Image1路径

        Application["imgName"] = fuLogo.FileName;
    }

    protected void btnUploadAll_Click(object sender, EventArgs e)
    {
        if (rfvGameName.IsValid && rfvGamePrice.IsValid && rfvGameIntro.IsValid)//检验是否都不为空
        {
            gamesService.InsertGame(int.Parse(ddlChooseType.SelectedValue), tbGameName.Text.Trim(), float.Parse(tbGamePrice.Text.Trim()), tbGameIntro.Text.Trim(), Application["imgName"].ToString(), cbIsHot.Checked);
            lblTip.Text = tbGameName.Text + "提交成功！";
            tbGameIntro.Text = "";
            tbGameName.Text = "";
            tbGamePrice.Text = "";
        }
        else if (gamesService.IsGameNameExisit(tbGameName.Text.Trim()))
        {
            lblTip.Text = "提交失败\n数据库中已有该游戏！";
        }
        else
        {
            lblTip.Text = "提交失败\n所有内容不能为空！请检查后重新提交！";
        }
    }

    private void CheckUser()
    {
        if (Session["AdminId"] != null || Session["CustomerId"] != null)  //用户已登录
        {
            if (Session["AdminId"] != null)  //管理员用户
            {
                lblWelcome.Text = "您好, " + Session["AdminName"].ToString();
                lnkbtnManage.Visible = true;
            }
            else if (Session["CustomerId"] != null)  //一般用户
            {
                lblWelcome.Text = "您好, " + Session["CustomerName"].ToString();
            }
            lnkbtnLogout.Visible = true;
        }
        else
        {
            lnkbtnLogin.Visible = true;
        }
    }
}