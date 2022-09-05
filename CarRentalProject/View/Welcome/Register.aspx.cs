using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRentalProject.View.Welcome
{
    public partial class Register : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {

            Conn = new Models.Functions();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustomerNameTb.Value == "" || AddTb.Value == "" || PhoneTb.Value == "" || PasswordTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string CustName = CustomerNameTb.Value;
                    string CustAdd = AddTb.Value;
                    string CustPhone = PhoneTb.Value;
                    string CustPassword = PasswordTb.Value;
                
                    string Query = "insert into CustomerTbl values('{0}','{1}','{2}','{3}')";
                    Query = String.Format(Query, CustName, CustAdd, CustPhone, CustPassword);
                    Conn.SetData(Query);

                    ErrorMsg.InnerText = "Registerd";
                }

            }
            catch (Exception Ex)
            {
                //throw;
                ErrorMsg.InnerText = Ex.Message;
            }

        }
    }
}