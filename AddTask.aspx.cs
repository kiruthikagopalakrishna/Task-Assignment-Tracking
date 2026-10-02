using System;
using System.Configuration;
using System.Data.SqlClient;

namespace HRTaskManagement
{
    public partial class AddTask : System.Web.UI.Page
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
                string query = "SELECT EmployeeID, Name FROM Employees";

                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                ddlAssignedTo.DataSource = reader;
                ddlAssignedTo.DataTextField = "Name";
                ddlAssignedTo.DataValueField = "EmployeeID";
                ddlAssignedTo.DataBind();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string query = @"
                INSERT INTO Tasks
                (TaskTitle, Description, AssignedTo, Priority, Status, DueDate, CreatedDate)
                VALUES
                (@TaskTitle, @Description, @AssignedTo, @Priority, @Status, @DueDate, @CreatedDate)";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@TaskTitle",
                        txtTaskTitle.Text.Trim());

                    cmd.Parameters.AddWithValue("@Description",
                        txtDescription.Text.Trim());

                    cmd.Parameters.AddWithValue("@AssignedTo",
                        ddlAssignedTo.SelectedValue);

                    cmd.Parameters.AddWithValue("@Priority",
                        ddlPriority.SelectedValue);

                    cmd.Parameters.AddWithValue("@Status",
                        ddlStatus.SelectedValue);

                    cmd.Parameters.AddWithValue("@DueDate",
                        DateTime.Parse(txtDueDate.Text));

                    cmd.Parameters.AddWithValue("@CreatedDate",
                        DateTime.Now.Date);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            lblMessage.Text = "Task added successfully! 🌸";

            txtTaskTitle.Text = "";
            txtDescription.Text = "";
            txtDueDate.Text = "";
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("TaskManagement.aspx");
        }
    }
}