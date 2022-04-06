using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DatabaseAccessLayer;

namespace WebApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            UserDal _userDal = new UserDal();
            var users =_userDal.GetAll();
            foreach (var user in users)
            {
                ListBox1.Items.Add(user.FirstName+"========>"+user.Email);
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            ListBox1.Items.Clear();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            UserDal _userDal = new UserDal();
            
            _userDal.Add(new User
            {
                FirstName = txtName.Text,
                Email = txtEmail.Text
            });
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            UserDal _userDal = new UserDal();
            var user =_userDal.GetByName(txtExName.Text).FirstOrDefault();
            user.FirstName = txtNewName.Text;
            _userDal.Update(user);
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            UserDal _userDal = new UserDal();
            var user = _userDal.GetByName(txtExName.Text).FirstOrDefault();
            _userDal.Delete(user);
        }
    }
}