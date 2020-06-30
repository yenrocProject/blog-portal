using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ComplateMoney : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCompalte_Click(object sender, EventArgs e)
        {
            if (!double.TryParse(txtMoney.Text.Trim(), out double init))
                return;
            if (!double.TryParse(txtMoneyOfYear.Text.Trim(), out double oneMoney))
                return;
            if (!double.TryParse(txtPoint.Text.Trim(), out double f))
                return;
            double sum = init;
            StringBuilder sbr = new StringBuilder();
            sbr.Append("开始存款=" + sum);
            for (int i = 0; i < 5; i++)
            {
                sum = sum + sum * f;
                sbr.Append("<br>" + (i + 1) + "年后存款存款余额=" + sum);
                sum = sum + oneMoney;
                sbr.Append("<br>" + (i + 1) + "年后存款存款余额加入一年收入后总余额=" + sum);

            }
            lblMsg.Text = sbr.ToString();
        }
    }
}