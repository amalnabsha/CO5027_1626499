using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FultonUmbrella.admin
{
    public partial class edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAddProduct1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin/add.aspx");
        }

        protected void BtnIndex_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin/index.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}