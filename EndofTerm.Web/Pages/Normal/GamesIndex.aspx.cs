using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using EndofTerm.BLL;

public partial class Pages_Normal_GamesIndex : System.Web.UI.Page
{
    private GamesService gamesService = new GamesService();
    private int titlenum = 0;
    private int intronum = 0;
    private int imagenum = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        CheckUser();
        CreateGameBox();
    }

    protected void LnkbtnLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/Pages/Normal/GamesIndex.aspx");
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

    private void CreateGameBox()
    {
        if (ddlGametype.SelectedValue != string.Empty)
        {
            var gameList = gamesService.GetGamesInfoByTypeId(int.Parse(ddlGametype.SelectedValue));//获取游戏信息
            for (int i = 0; i < gameList.Count; i++)//动态生成gamebox
            {
                Panel pnl = new Panel() { ID = "div" + i, CssClass = "gamebox" }; //div

                //创建游戏logo的image控件
                Image imgGameLogo = new Image() { ID = "ImgGameLogo" + i, CssClass = "gamelogo", ImageUrl = Server.MapPath(gameList[i].Image) };
                pnl.Controls.Add(imgGameLogo);
                //创建游戏标题label控件
                Label lblGameTitle = new Label() { ID = "lblText" + i, CssClass = "gamespan-title", Text = gameList[i].Name }; //span
                pnl.Controls.Add(lblGameTitle);
                //创建游戏介绍label控件
                Label lblGameIntro = new Label() { ID = "lblButton" + i, CssClass = "gamespan-intro", Text = gameList[i].Introduce };
                pnl.Controls.Add(lblGameIntro);

                pnlMain.Controls.Add(pnl);
            }
        }
    }

    protected void ddlGametype_SelectedIndexChanged(object sender, EventArgs e)
    {
        CreateGameBox();
    }
}