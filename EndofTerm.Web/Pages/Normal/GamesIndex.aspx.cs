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
        var gameList = gamesService.GetHotGames();
        if (ddlGametype.SelectedValue != string.Empty)
        {
            if (ddlGametype.SelectedItem.Text == "热门")
            {
                gameList = gamesService.GetHotGames();
            }
            else
                gameList = gamesService.GetGamesInfoByTypeId(int.Parse(ddlGametype.SelectedValue));//获取游戏信息
            for (int i = 0; i < gameList.Count; i++)//动态生成gamebox
            {
                Panel pnl = new Panel() { ID = "div1" + i.ToString(), CssClass = "gamebox" }; //div

                //创建游戏logo的image控件
                Image imgGameLogo = new Image() { ID = "ImgGameLogo" + i, CssClass = "gamelogo" };
                imgGameLogo.ImageUrl = "../../Images/" + gameList[i].Image;
                pnl.Controls.Add(imgGameLogo);
                //Response.Write("<img class=\"gamelogo\" src=\".. / .. / Images / 真人快打.png\" />");
                //创建游戏标题label控件

                //Panel pnlTitle = new Panel() { ID = "div2" + i.ToString() }; //div
                Label lblGameTitle = new Label() { ID = "lblGameTitle" + i, CssClass = "gamespan-title", Text = gameList[i].Name }; //span
                pnl.Controls.Add(lblGameTitle);
                //pnlTitle.Controls.Add(lblGameTitle);
                //pnl.Controls.Add(pnlTitle);
                //换行
                //pnl.Controls.Add(new Literal() { Text = "<br/><br/>" });
                //创建游戏介绍label控件

                //Panel pnlIntro = new Panel() { ID = "div3" + i.ToString() }; //div
                Label lblGameIntro = new Label() { ID = "lblGameIntro" + i, CssClass = "gamespan-intro", Text = gameList[i].Introduce };
                pnl.Controls.Add(lblGameIntro);
                //pnlIntro.Controls.Add(lblGameIntro);
                //pnl.Controls.Add(pnlIntro);

                pnlMain.Controls.Add(pnl);
            }
        }
    }

    protected void ddlGametype_SelectedIndexChanged(object sender, EventArgs e)
    {
        CreateGameBox();
    }
}