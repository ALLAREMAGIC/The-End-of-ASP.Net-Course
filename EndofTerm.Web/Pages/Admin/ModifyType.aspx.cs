using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EndofTerm.BLL;

public partial class Pages_Admin_ModifyType : System.Web.UI.Page
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

    protected void btnUploadAll_Click(object sender, EventArgs e)
    {
        if (rfvTypeName.IsValid)
        {
            gamesService.UpdateType(int.Parse(DropDownList1.SelectedValue), tbTypeName.Text);
            lblTip.Text = tbTypeName.Text + "提交成功！";
            tbTypeName.Text = "";
            DropDownList1.DataBind();
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