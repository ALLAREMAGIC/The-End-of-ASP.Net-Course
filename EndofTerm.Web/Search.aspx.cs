using MyPetShop.BLL;
using System;
public partial class Search : System.Web.UI.Page
{
  ProductService productSrv = new ProductService();
  protected void BtnSearch_Click(object sender, EventArgs e)
  {
    //调用ProductService类中的GetProductBySearchText()方法模糊查找商品名中包含文本框输入值的商品
    gvProduct.DataSource = productSrv.GetProductBySearchText(txtSearch.Text);
    gvProduct.DataBind();
  }
}