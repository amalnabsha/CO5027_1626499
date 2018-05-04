using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FultonUmbrella.admin
{
    public partial class add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ProductNameTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void BtnProductList1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin/productlist.aspx");
        }
    }
}