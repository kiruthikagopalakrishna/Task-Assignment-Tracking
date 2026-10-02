using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace HRTaskManagement
{
    public partial class TaskManagement : System.Web.UI.Page
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
                LoadTasks();
            }
        }

        private void LoadTasks()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"
                    SELECT 
                        t.TaskID,
                        t.TaskTitle,
                        t.Description,
                        e.Name AS AssignedEmployee,
                        t.Priority,
                        t.Status,
                        t.DueDate
                    FROM Tasks t
                    INNER JOIN Employees e
                    ON t.AssignedTo = e.EmployeeID";

                SqlDataAdapter da = new SqlDataAdapter(query, con);

                DataTable dt = new DataTable();
                da.Fill(dt);

                gvTasks.DataSource = dt;
                gvTasks.DataBind();
            }
        }

        protected void btnAddTask_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddTask.aspx");
        }
    }
}