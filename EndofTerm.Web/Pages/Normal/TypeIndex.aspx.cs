using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using EndofTerm.BLL;
using EndofTerm.DAL;

public partial class Pages_Normal_TypeIndex : System.Web.UI.Page
{
    private GamesService gamesService = new GamesService();
    private int typeId;
    public string typeTitle;

    protected void Page_Load(object sender, EventArgs e)
    {
        CheckUser();
        typeId = int.Parse(Request.QueryString["typeid"].Trim());
        typeTitle = gamesService.GetTypeInfoByTypeId(typeId).TypeName;
        CreateGamesBox();
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

    private void CreateGamesBox()
    {
        var gameList = gamesService.GetGamesInfoByTypeId(typeId);//获取游戏信息
        for (int i = 0; i < gameList.Count; i++)//动态生成gamebox
        {
            pnlMain.Controls.Add(CreateGameBox(i, gameList));
            if (i % 5 == 0)
            {
                pnlMain.Controls.Add(new Literal() { Text = "<br />" });
            }
        }
    }

    private Panel CreateGameBox(int i, List<Games> gameList)
    {
        Panel pnl = new Panel() { ID = "div0" + i.ToString(), CssClass = "gamelongbox" };
        //创建游戏logo的image控件
        pnl.Controls.Add(new Image() { ID = "ImgGameLogo" + i, CssClass = "gamelogo", ImageUrl = "../../Images/" + gameList[i].Image });

        pnl.Controls.Add(new Literal() { Text = "<br/>" });
        pnl.Controls.Add(new HyperLink() { ID = "hplGameTitle" + i, CssClass = "gamespan-title", Text = gameList[i].Name, NavigateUrl = "GameContent.aspx?gameid=" + gameList[i].GameId, Target = "_blank" });

        pnl.Controls.Add(new Literal() { Text = "<br/>" });
        //创建游戏介绍label控件
        pnl.Controls.Add(new HyperLink() { Text = "点击查看更多", CssClass = "pressmore", NavigateUrl = "GameContent.aspx?gameid=" + gameList[i].GameId, Target = "_blank" });
        return pnl;
    }
}