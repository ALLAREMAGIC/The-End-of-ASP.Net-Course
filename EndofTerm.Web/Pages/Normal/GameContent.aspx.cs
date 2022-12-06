using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using EndofTerm.BLL;

public partial class Pages_Normal_GamesContent : System.Web.UI.Page
{
    private GamesService gamesService = new GamesService();

    protected void Page_Load(object sender, EventArgs e)
    {
        CheckUser();
        LoadGameByGameId();
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

    private void LoadGameByGameId()
    {
        int selectedGameId = int.Parse(Request.QueryString["gameid"]);
        var theGame = gamesService.GetGameInfoByGameId(selectedGameId);
        lblGameName.Text = theGame.Name;
        lblGamePirce.Text = "价格：￥" + theGame.Price.ToString();
        lblGameIntro.Text = theGame.Introduce;
        ImgGameLogo.ImageUrl = "~/Images/" + theGame.Image;
    }
}