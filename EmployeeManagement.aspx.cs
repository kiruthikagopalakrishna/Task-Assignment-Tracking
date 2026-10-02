using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace HRTaskManagement
{
    public partial class EmployeeManagement : System.Web.UI.Page
    {
        string connectionString =
            ConfigurationManager.ConnectionStrings["HRConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] == null ||
                Session["Role"].ToString() != "HR")
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                LoadEmployees();
            }
        }

        private void LoadEmployees()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT EmployeeID, Name, Email, Phone, Department, Username FROM Employees";

                SqlDataAdapter da = new SqlDataAdapter(query, con);

                DataTable dt = new DataTable();
                da.Fill(dt);

                gvEmployees.DataSource = dt;
                gvEmployees.DataBind();
            }
        }

        protected void btnAddEmployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddEmployee.aspx");
        }
    }
}