using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FultonUmbrella.admin
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            HttpContext.Current.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
            Response.Redirect("~/login.aspx");
        }

        protected void BtnProductList_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin/productlist.aspx");
        }

        protected void BtnAddProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin/add.aspx");
        }
    }
}