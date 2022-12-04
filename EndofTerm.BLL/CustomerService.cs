using System.Linq;
using EndofTerm.DAL;

namespace EndofTerm.BLL
{
    public class CustomerService
    {
        private EndofTermEntities db = new EndofTermEntities();

        /// <summary>
        /// 检查输入的用户名和密码是否正确
        /// </summary>
        /// <param name="name">用户名</param>
        /// <param name="password">密码</param>
        /// <returns>若用户名和密码正确则返回用户Id，否则返回0</returns>
        public int CheckLogin(string name, string password)
        {
            //通过DAL数据访问层中的Customer类查询输入的用户名和密码是否正确，若正确则返回相应的用户对象，否则返回null
            Customer customer = db.Customer.Where(c => c.Name.Equals(name) && c.Password.Equals(password)).FirstOrDefault();
            if (customer != null)  //用户名和密码正确
            {
                return customer.CustomerId;
            }
            else  //用户名或密码错误
            {
                return 0;
            }
        }

        /// <summary>
        /// 判断输入的用户名是否重名
        /// </summary>
        /// <param name="name">输入的用户名</param>
        /// <returns>当用户名重名时返回true，否则返回false</returns>
        public bool IsNameExist(string name)
        {
            //通过数据访问层中的Customer类查询输入的用户名是否重名，若重名则返回用户名，否则返回null
            var customer = db.Customer.Where(c => c.Name.Equals(name)).FirstOrDefault();
            if (customer == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        /// <summary>
        /// 向MyPetShop数据库中的Customer表插入新用户记录
        /// </summary>
        /// <param name="name">用户名</param>
        /// <param name="password">密码</param>
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