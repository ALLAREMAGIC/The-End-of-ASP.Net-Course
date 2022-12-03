using EndofTerm.DAL;
using System.Collections.Generic;
using System.Linq;

namespace MyPetShop.BLL
{
  public class ProductService
  {
        EndofTermEntities db = new EndofTermEntities();
    /// <summary>
    /// 模糊查找商品名中包含指定文本的商品，再返回满足条件的商品列表
    /// </summary>
    /// <param name="searchText">指定的文本</param>
    /// <returns>满足条件的商品列表</returns>
    public List<Games> GetProductBySearchText(string searchText)
    {
      return (db.Games.Where(p => p.Name.Contains(searchText))).ToList();
    }
  }
}
