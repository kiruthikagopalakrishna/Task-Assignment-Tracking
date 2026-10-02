using System;
using System.Configuration;
using System.Data.SqlClient;

namespace HRTaskManagement
{
    public partial class HRDashboard : System.Web.UI.Page
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

            // Always load the latest database values
            LoadDashboardCounts();
        }

        private void LoadDashboardCounts()
        {
            using (SqlConnection con =
                   new SqlConnection(connectionString))
            {
                string query = @"
                    SELECT
                        (SELECT COUNT(*) FROM Employees) AS TotalEmployees,

                        (SELECT COUNT(*) FROM Tasks) AS TotalTasks,

                        (SELECT COUNT(*)
                         FROM Tasks
                         WHERE Status = 'Pending') AS PendingTasks,

                        (SELECT COUNT(*)
                         FROM Tasks
                         WHERE Status = 'In Progress') AS InProgressTasks,

                        (SELECT COUNT(*)
                         FROM Tasks
                         WHERE Status = 'Completed') AS CompletedTasks";

                using (SqlCommand cmd =
                       new SqlCommand(query, con))
                {
                    con.Open();

                    using (SqlDataReader reader =
                           cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            lblEmployees.Text =
                                reader["TotalEmployees"].ToString();

                            lblTasks.Text =
                                reader["TotalTasks"].ToString();

                            lblPending.Text =
                                reader["PendingTasks"].ToString();

                            lblInProgress.Text =
                                reader["InProgressTasks"].ToString();

                            lblCompleted.Text =
                                reader["CompletedTasks"].ToString();
                        }
                    }
                }
            }
        }
    }
}