using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRTaskManagement
{
    public partial class TaskTracking : System.Web.UI.Page
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
                LoadTracking();
            }
        }

        private void LoadTracking()
        {
            using (SqlConnection con =
                   new SqlConnection(connectionString))
            {
                string query = @"
                    SELECT
                        t.TaskID,
                        t.TaskTitle,
                        e.Name AS AssignedEmployee,
                        t.Priority,
                        t.Status,
                        t.DueDate
                    FROM Tasks t
                    INNER JOIN Employees e
                    ON t.AssignedTo = e.EmployeeID";

                SqlDataAdapter da =
                    new SqlDataAdapter(query, con);

                DataTable dt = new DataTable();

                da.Fill(dt);

                gvTracking.DataSource = dt;
                gvTracking.DataBind();
            }
        }

        protected void gvTracking_RowDataBound(
            object sender,
            GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DropDownList ddlStatus =
                    (DropDownList)e.Row.FindControl("ddlStatus");

                if (ddlStatus != null)
                {
                    object status =
                        DataBinder.Eval(e.Row.DataItem, "Status");

                    if (status != null &&
                        status != DBNull.Value)
                    {
                        string currentStatus =
                            status.ToString();

                        if (ddlStatus.Items.FindByValue(currentStatus) != null)
                        {
                            ddlStatus.SelectedValue = currentStatus;
                        }
                    }
                }
            }
        }

        protected void gvTracking_RowCommand(
            object sender,
            GridViewCommandEventArgs e)
        {
            if (e.CommandName == "UpdateStatus")
            {
                int taskID =
                    Convert.ToInt32(e.CommandArgument);

                GridViewRow row =
                    (GridViewRow)((Control)e.CommandSource)
                    .NamingContainer;

                DropDownList ddlStatus =
                    (DropDownList)row.FindControl("ddlStatus");

                if (ddlStatus == null)
                    return;

                string newStatus =
                    ddlStatus.SelectedValue;

                using (SqlConnection con =
                       new SqlConnection(connectionString))
                {
                    string query = @"
                        UPDATE Tasks
                        SET Status = @Status
                        WHERE TaskID = @TaskID";

                    SqlCommand cmd =
                        new SqlCommand(query, con);

                    cmd.Parameters.AddWithValue(
                        "@Status", newStatus);

                    cmd.Parameters.AddWithValue(
                        "@TaskID", taskID);

                    con.Open();

                    cmd.ExecuteNonQuery();
                }

                LoadTracking();
            }
        }
    }
}