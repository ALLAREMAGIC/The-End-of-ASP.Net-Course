using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Admin_ConfirmModifiedGame : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void LnkbtnLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/Default.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (ddlChooseGame.SelectedValue != "")
            Response.Redirect("ModifyGame.aspx?gameid=" + ddlChooseGame.SelectedValue);
        else
        {
            lblTip.Text = "请选择一个游戏进行修改";
        }
    }
}