using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace FultonUmbrella
{
    public partial class orderproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPurchaseProduct_Click(object sender, EventArgs e)
        {
            decimal postagePackingCost = 3.95m;
            decimal ProductPrice = 10.00m;
            int quantityofProduct = int.Parse(ddlProductQuantity.SelectedValue);
            decimal subTotal = (quantityofProduct * ProductPrice);
            decimal total = subTotal + postagePackingCost;

            var clientId = "ARBVZfyFc1qFrY82LRKszjkBfOtfi15PwYM2qayWzDBYhPNAWxa0CADR4mmvsRbXqFzeO4NYlJdzpZNe";
            var clientSecret = "EJqiPFznARakdl8hmpy93A8SUn5Qnt9gWRYewkmBJt6BqUNpSALAdMBStD8bcGDYF59MM_9AeeNiTsPO";
            var sdkConfig = new Dictionary<string, string>
            {
                {"mode", "sandbox" },
                {"clientId", clientId },
                {"clientSecret", clientSecret }
            };

            var accessToken = new OAuthTokenCredential(clientId, clientSecret, sdkConfig).GetAccessToken();
            var apiContext = new APIContext(accessToken);
            apiContext.Config = sdkConfig;

            var productItem = new Item();
            productItem.name = "Product 1";
            productItem.currency = "USD";
            productItem.price = ProductPrice.ToString();
            productItem.quantity = quantityofProduct.ToString();

            var transactionDetails = new Details();
            transactionDetails.tax = "0";
            transactionDetails.shipping = postagePackingCost.ToString();
            transactionDetails.subtotal = subTotal.ToString("0.00");

            var transactionAmount = new Amount();
            transactionAmount.currency = "USD";
            transactionAmount.total = total.ToString("0.00");
            transactionAmount.details = transactionDetails;

            var transaction = new Transaction();
            transaction.description = "Your order of Product item";
            transaction.invoice_number = Guid.NewGuid().ToString();
            transaction.amount = transactionAmount;
            transaction.item_list = new ItemList
            {
                items = new List<Item> { productItem }
            };

            var payer = new Payer();
            payer.payment_method = "paypal";

            var redirectUrls = new RedirectUrls();
            redirectUrls.cancel_url = "http://" + HttpContext.Current.Request.Url.Authority + "/default.aspx";
            redirectUrls.return_url = "http://" + HttpContext.Current.Request.Url.Authority + "/completePurchase.aspx";

            var payment = Payment.Create(apiContext, new Payment
            {
                intent = "sale",
                payer = payer,
                transactions = new List<Transaction> { transaction },
                redirect_urls = redirectUrls
            });

            Session["paymentId"] = payment.id;

            foreach (var link in payment.links)
            {
                if(link.rel.ToLower().Trim().Equals("approval_url"))
                {
                    Response.Redirect(link.href);
                }
            }
        }

     
    }
}