using EndofTerm.BLL;  //引用MyPetShop.BLL业务逻辑层
using System;

public partial class NewUser : System.Web.UI.Page
{
  //建立MyPetShop.BLL业务逻辑层中的CustomerService类实例customerSrv
  CustomerService customerSrv = new CustomerService();
  protected void BtnReg_Click(object sender, EventArgs e)
  {
    if (Page.IsValid)
    {
      //调用CustomerService类中的IsNameExist()方法判断用户名是否重名
      if (customerSrv.IsNameExist(txtName.Text))
      {
        lblMsg.Text = "用户名已经存在！";
      }
      else
      {
        //调用CustomerService类中的Insert()方法插入新用户记录
        customerSrv.Insert(txtName.Text.Trim(), txtPwd.Text.Trim());
        Response.Redirect("Login.aspx?name=" + txtName.Text);
      }
    }
  }
}