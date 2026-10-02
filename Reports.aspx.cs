using System;
using System.Configuration;
using System.Data.SqlClient;

namespace HRTaskManagement
{
    public partial class Reports : System.Web.UI.Page
    {
        string connectionString =
            ConfigurationManager.ConnectionStrings["HRConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] == null ||
                Session["Role"].ToString() != "HR")
            {
                Response.Redirect("Login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                LoadReports();
            }
        }

        private void LoadReports()
        {
            using (SqlConnection con =
                   new SqlConnection(connectionString))
            {
                con.Open();

                // Total Employees
                SqlCommand cmdEmployees =
                    new SqlCommand(
                        "SELECT COUNT(*) FROM Employees",
                        con);

                int totalEmployees =
                    Convert.ToInt32(cmdEmployees.ExecuteScalar());

                lblEmployees.Text =
                    totalEmployees.ToString();


                // Total Tasks
                SqlCommand cmdTasks =
                    new SqlCommand(
                        "SELECT COUNT(*) FROM Tasks",
                        con);

                int totalTasks =
                    Convert.ToInt32(cmdTasks.ExecuteScalar());

                lblTasks.Text =
                    totalTasks.ToString();


                // Pending Tasks
                SqlCommand cmdPending =
                    new SqlCommand(
                        "SELECT COUNT(*) FROM Tasks WHERE Status = 'Pending'",
                        con);

                int pendingTasks =
                    Convert.ToInt32(cmdPending.ExecuteScalar());

                lblPending.Text =
                    pendingTasks.ToString();


                // In Progress Tasks
                SqlCommand cmdProgress =
                    new SqlCommand(
                        "SELECT COUNT(*) FROM Tasks WHERE Status = 'In Progress'",
                        con);

                int progressTasks =
                    Convert.ToInt32(cmdProgress.ExecuteScalar());

                lblProgress.Text =
                    progressTasks.ToString();


                // Completed Tasks
                SqlCommand cmdCompleted =
                    new SqlCommand(
                        "SELECT COUNT(*) FROM Tasks WHERE Status = 'Completed'",
                        con);

                int completedTasks =
                    Convert.ToInt32(cmdCompleted.ExecuteScalar());

                lblCompleted.Text =
                    completedTasks.ToString();
            }
        }
    }
}