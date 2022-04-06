using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseAccessLayer
{
    public class UserDal
    {
        public List<User> GetAll()
        {
            using (ETradeContext context =new ETradeContext())
            {
                return context.Users.ToList();
            }
        }

        public List<User> GetByName(string key)
        {
            using (ETradeContext context = new ETradeContext() )
            {
                return context.Users.Where(p => p.FirstName.Contains(key)).ToList();
            }
        }

        public void Add(User user)
        {
            using (ETradeContext context = new ETradeContext())
            {
                context.Users.Add(user);
                context.SaveChanges();
            }
        }

        public void Update(User user)
        {
            using (ETradeContext context = new ETradeContext())
            {
                var entity = context.Entry(user);
                entity.State = EntityState.Modified;
                context.SaveChanges();
            }
        }

        public void Delete(User user)
        {
            using (ETradeContext context = new ETradeContext())
            {
                var entity = context.Entry(user);
                entity.State = EntityState.Deleted;
                context.SaveChanges();
            }
        }
    }
}
