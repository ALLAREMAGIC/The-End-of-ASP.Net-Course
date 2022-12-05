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
    private int selectedTypeId;

    protected void Page_Load(object sender, EventArgs e)
    {
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
            gamesService.UpdateType(selectedTypeId, tbTypeName.Text);
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        selectedTypeId = int.Parse(DropDownList1.SelectedValue);
    }
}