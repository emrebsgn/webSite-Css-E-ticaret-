using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1196706033_emrebisgun
{
    public partial class kayitol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void kontrol(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length <6)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (CustomValidator1.IsValid == true)
            {
                Label1.Text = "İşleminiz başarıyla tamamlanmıştır.";
            }
        }

        
    }
}