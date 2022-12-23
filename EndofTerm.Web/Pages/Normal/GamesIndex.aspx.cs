using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using EndofTerm.BLL;

public partial class Pages_Normal_GamesIndex : System.Web.UI.Page
{
    private GamesService gamesService = new GamesService();

    protected void Page_Load(object sender, EventArgs e)
    {
        CheckUser();
        CreateGamesofTypesBoxes();
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

    private void CreateGamesofTypesBoxes()
    {
        var typeList = gamesService.GetTypesId();
        foreach (int typeid in typeList)
        {
            var gameList = gamesService.GetGamesInfoByTypeId(typeid);//获取游戏信息

            Panel pnlType = new Panel() { ID = "type" + typeid, CssClass = "typebox-title" };
            pnlType.Controls.Add(new Label() { ID = "lbl" + typeid + "title", Text = gamesService.GetTypeInfoByTypeId(typeid).TypeName, CssClass = "gamesbox-title" });
            pnlType.Controls.Add(new HyperLink() { ID = "hl" + typeid + "more", Text = "更多", CssClass = "gamesbox-more", NavigateUrl = "TypeIndex.aspx?typeid=" + typeid, Target = "_blank" });
            pnlMain.Controls.Add(pnlType);

            Panel pnlGamesbox = new Panel() { ID = "gamesbox" + typeid, CssClass = "gamesbox" };
            Panel pnlOneLine = new Panel() { ID = "oneline" + typeid, CssClass = "oneline" };
            for (int i = 0; i < 3; i++)//动态生成gamebox
            {
                Panel pnlGamebox = new Panel() { ID = "game" + typeid + i.ToString(), CssClass = "gamebox" };
                //创建游戏logo的image控件
                pnlGamebox.Controls.Add(new Image() { ID = "ImgGameLogo" + i, CssClass = "gamelogo", ImageUrl = "../../Images/" + gameList[i].Image });

                pnlGamebox.Controls.Add(new Literal() { Text = "<br/>" });
                pnlGamebox.Controls.Add(new Literal() { Text = "<br/>" });
                pnlGamebox.Controls.Add(new HyperLink() { ID = "hplGameTitle" + i, CssClass = "gamespan-title", Text = gameList[i].Name, NavigateUrl = "GameContent.aspx?gameid=" + gameList[i].GameId, Target = "_blank" });

                pnlGamebox.Controls.Add(new Literal() { Text = "<br/>" });
                pnlGamebox.Controls.Add(new Literal() { Text = "<br/>" });
                //创建游戏介绍label控件
                pnlGamebox.Controls.Add(new HyperLink() { Text = "点击查看更多", CssClass = "pressmore", NavigateUrl = "GameContent.aspx?gameid=" + gameList[i].GameId, Target = "_blank" });
                pnlOneLine.Controls.Add(pnlGamebox);
            }
            pnlGamesbox.Controls.Add(pnlOneLine);
            pnlMain.Controls.Add(pnlGamesbox);
        }
    }
}