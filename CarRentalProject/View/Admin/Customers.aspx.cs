using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRentalProject.View.Admin
{
    public partial class Customers : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCustomers();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
        }
        private void ShowCustomers()
        {
            string Query = "select * from CustomerTbl";
            CustomersList.DataSource = Conn.GetData(Query);
            CustomersList.DataBind();
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
                  //  string Status = AvailableCb.SelectedValue;
                    string Query = "insert into CustomerTbl values('{0}','{1}','{2}','{3}')";
                    Query = String.Format(Query, CustName, CustAdd, CustPhone, CustPassword);
                    Conn.SetData(Query);
                    ShowCustomers();
                    ErrorMsg.InnerText = "Customer Added";
                }

            }
            catch (Exception Ex)
            {
                //throw;
                ErrorMsg.InnerText = Ex.Message;
            }

        }
        int Key = 0;
        protected void CarList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CustomerNameTb.Value = CustomersList.SelectedRow.Cells[2].Text;
            AddTb.Value = CustomersList.SelectedRow.Cells[3].Text;
            PhoneTb.Value = CustomersList.SelectedRow.Cells[4].Text;
            PasswordTb.Value = CustomersList.SelectedRow.Cells[5].Text;
            if(CustomerNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(CustomersList.SelectedRow.Cells[1].Text);
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustomerNameTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string Query = "Delete From CustomerTbl where CustId='{0}'";
                    Query = String.Format(Query, Convert.ToInt32(CustomersList.SelectedRow.Cells[1].Text));
                    Conn.SetData(Query);
                    ShowCustomers();
                    ErrorMsg.InnerText = "Customer Deleted";
                }

            }
            catch (Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustomerNameTb.Value == "" || AddTb.Value == "" || PhoneTb.Value == "" || PasswordTb.Value == "" )
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string CustName = CustomerNameTb.Value;
                    string CustAdd = AddTb.Value;
                    string CustPhone = PhoneTb.Value;
                    string CustPassword = PasswordTb.Value;
                    string Query = "update CustomerTbl set CustName= '{0}',CustAdd= '{1}',CustPhone= '{2}',CustPassword= '{3}' where CustId='{4}'";
                    Query = String.Format(Query, CustName, CustAdd, CustPhone, CustPassword, Convert.ToInt32(CustomersList.SelectedRow.Cells[1].Text));
                    Conn.SetData(Query);
                    ShowCustomers();
                    ErrorMsg.InnerText = "Customer Edited";
                    
                }

            }
            catch (Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
            }
        }


    }
}
    
    
