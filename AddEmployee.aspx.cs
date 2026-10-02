using System;
using System.Configuration;
using System.Data.SqlClient;

namespace HRTaskManagement
{
    public partial class AddEmployee : System.Web.UI.Page
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
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string query = @"INSERT INTO Employees
                            (Name, Email, Phone, Department, Username, Password)
                            VALUES
                            (@Name, @Email, @Phone, @Department, @Username, @Password)";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Phone", txtPhone.Text.Trim());
                    cmd.Parameters.AddWithValue("@Department", txtDepartment.Text.Trim());
                    cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            lblMessage.Text = "Employee added successfully! 🌸";

            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtDepartment.Text = "";
            txtUsername.Text = "";
            txtPassword.Text = "";
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeManagement.aspx");
        }
    }
}