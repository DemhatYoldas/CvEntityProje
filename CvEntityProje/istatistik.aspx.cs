using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntityProje
{
    public partial class istatistik : System.Web.UI.Page
    {
        DBCVENTITYEntities db = new DBCVENTITYEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = db.TBLYETEMEKLER.Count().ToString();
            Label2.Text = db.TBLYETEMEKLER.Count().ToString();
            Label3.Text = db.TBLYETEMEKLER.Average(x=>x.DERECE).ToString();
            Label4.Text = db.TBLYETEMEKLER.Max(x=>x.DERECE).ToString();
            Label5.Text = db.TBLYETEMEKLER.Max(x => x.YETENEK).ToString();

        }
    }
}