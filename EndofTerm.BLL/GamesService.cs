using EndofTerm.DAL;
using System.Collections.Generic;
using System.Linq;

namespace MyPetShop.BLL
{
    public class GamesService
    {
        private EndofTermEntities db = new EndofTermEntities();

        /// <summary>
        /// 模糊查找商品名中包含指定文本的商品，再返回满足条件的商品列表
        /// </summary>
        /// <param name="searchText">指定的文本</param>
        /// <returns>满足条件的商品列表</returns>
        public List<Games> GetProductBySearchText(string searchText)
        {
            return (db.Games.Where(p => p.Name.Contains(searchText))).ToList();
        }

        /// <summary>
        /// 向MyPetShop数据库中的Customer表插入新用户记录
        /// </summary>
        /// <param name="name">用户名</param>
        /// <param name="password">密码</param>
        /// <param name="email">电子邮件地址</param>
        public void Insert(string name, string password)
        {
            Customer customer = new Customer();
            customer.Name = name;
            customer.Password = password;

            db.Customer.Add(customer);
            db.SaveChanges();
        }
    }
}