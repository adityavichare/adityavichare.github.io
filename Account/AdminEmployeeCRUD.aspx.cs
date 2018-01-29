using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Account_AdminEmployeeCRUD : System.Web.UI.Page
{
    public static int flag=0;
    

    protected void Page_Load(object sender, EventArgs e)
    {
        chksavePanel.Visible = false;
        btnAdd.Visible = false;
        btnUpdate.Visible = false;
        btnDelete.Visible = false;
        btnCancel.Visible = false;

        btnAdd.Enabled = false;
        btnUpdate.Enabled = false;
        btnDelete.Enabled = false;
        btnCancel.Enabled = false;



    }

    public void chksavePanel_CheckedChanged(object sender, EventArgs e)
    {
        chksavePanel.Visible = true;
        if (chksavePanel.Checked == false)
        {
            btnCancel.Enabled = true;
            btnCancel.Visible = true;

            if (flag == 1)
                {
                    lblTitle.Text = "Add Employee";
                    btnAdd.Visible = true;
                    btnAdd.Enabled = false;
                }
            if (flag ==2)
                {
                    lblTitle.Text = "Update Employee";
                    btnUpdate.Visible = true;
                    btnUpdate.Enabled = false;
                
                }
            if (flag == 3)
                {
                    lblTitle.Text = "Delete Employee";
                    btnDelete.Visible = true;
                    btnDelete.Enabled = false;
                
                }
            
        }
        if (chksavePanel.Checked == true) 
        {

            btnCancel.Enabled = true;
            btnCancel.Visible = true;

            if (flag == 1)
            {
                lblTitle.Text = "Add Employee";
                btnAdd.Visible = true;
                btnAdd.Enabled = true;
            }
            if (flag == 2)
            {
                lblTitle.Text = "Update Employee";
                btnUpdate.Enabled = true;
                btnUpdate.Visible = true;
            }
            if (flag == 3)
            {
                lblTitle.Text = "Delete Employee";
                btnDelete.Enabled = true;
                btnDelete.Visible = true;
            }
        }
    }

    public void btnMenuAdd_Click(object sender, EventArgs e)
    {
        flag = 1;
        lblTitle.Text = "Add Employee";
        chksavePanel.Visible = true;
        chksavePanel.Checked = false;

        btnAdd.Enabled = false;
        btnCancel.Enabled = true;

        btnAdd.Visible = true;
        btnUpdate.Visible = false;
        btnDelete.Visible = false;
        btnCancel.Visible = true;


        
    }
    protected void btnMenuUpdate_Click(object sender, EventArgs e)
    {
        flag = 2;
        lblTitle.Text = "Update Employee";
        chksavePanel.Visible = true;
        chksavePanel.Checked = false;

        btnUpdate.Enabled = false;
        btnCancel.Enabled = true;

        btnAdd.Visible = false;
        btnUpdate.Visible = true;
        btnDelete.Visible = false;
        btnCancel.Visible = true;
    }
    protected void btnMenuDelete_Click(object sender, EventArgs e)
    {
        flag = 3;
        lblTitle.Text = "Delete Employee";
        chksavePanel.Visible = true;
        chksavePanel.Checked = false;

        btnDelete.Enabled = false;
        btnCancel.Enabled = true;


        btnAdd.Visible = false;
        btnUpdate.Visible = false;
        btnDelete.Visible = true;
        btnCancel.Visible = true;
        
    }

    protected void btnMenuView_Click(object sender, EventArgs e)
    {
        flag = 4;
        lblTitle.Text = "Employee Data";
        chksavePanel.Visible = false;
        chksavePanel.Checked = false;

        btnAdd.Visible = false;
        btnUpdate.Visible = false;
        btnDelete.Visible = false;
        btnCancel.Visible = false;
    }

    //--------------------------------------------------

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        lblTitle.Text = "Add Employee" ;
        chksavePanel.Visible = true;
        chksavePanel.Checked = false;
        btnAdd.Visible = true;
        btnUpdate.Visible = false;
        btnDelete.Visible = false;
        btnCancel.Visible = true;
        
        try
        {
            SqlConnection con = new SqlConnection((ConfigurationManager.ConnectionStrings["iTechProvisionsDatabaseConnectionString"].ConnectionString));
            SqlCommand cmd = new SqlCommand("insert into employee(E_Id,E_Name,E_gender,E_Address,E_Contact,E_Email,E_DOB,E_DOJ) values('" + txtE_Id.Text + "','" + txtE_Name.Text + "','" + txtE_Gender.Text + "','" + txtE_Address.Text + "','" + txtE_Contact.Text + "','" + txtE_Email.Text + "','" + txtE_DOB.Text + "','" + txtE_DOJ.Text + "')", con);

        cmd.CommandType = CommandType.Text;

        

            con.Open();

            cmd.ExecuteNonQuery();
            
            lblResult.Text = "Data inserted successfully";

            con.Close();
         
            

        }

        catch (Exception ex)
        {

            lblResult.Text = ex.Message;

        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        lblTitle.Text = "Update Employee";

        
        chksavePanel.Visible = true;
        chksavePanel.Checked = false;
        btnAdd.Visible = false;
        btnUpdate.Visible = true;
        btnDelete.Visible = false;
        btnCancel.Visible = true;





        try
        {
            SqlConnection con = new SqlConnection((ConfigurationManager.ConnectionStrings["iTechProvisionsDatabaseConnectionString"].ConnectionString));
            SqlCommand cmd = new SqlCommand("Update employee set E_Id=@E_Id, E_Name=@E_Name ,E_Gender=@E_Gender,E_Address=@E_Address,E_Contact=@E_Contact,E_Email=@E_Email,E_DOB=@E_DOB,E_DOJ=@E_DOJ where E_Id=" + txtE_Id.Text , con);
            cmd.Parameters.AddWithValue("@E_Id", txtE_Id.Text); 
            cmd.Parameters.AddWithValue("@E_Name", txtE_Name.Text);
            cmd.Parameters.AddWithValue("@E_Gender", txtE_Gender.Text);
            cmd.Parameters.AddWithValue("@E_Address", txtE_Address.Text);
            cmd.Parameters.AddWithValue("@E_Contact", txtE_Contact.Text);
            cmd.Parameters.AddWithValue("@E_Email", txtE_Email.Text);
            cmd.Parameters.AddWithValue("@E_DOB", txtE_DOB.Text);
            cmd.Parameters.AddWithValue("@E_DOJ", txtE_DOJ.Text);
 

            cmd.CommandType = CommandType.Text;



            con.Open();

            cmd.ExecuteNonQuery();

            lblResult.Text = "Data Updated Successfully";

            con.Close();



        }

        catch (Exception ex)
        {

            lblResult.Text = ex.Message;

        }


    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        lblTitle.Text = "Delete Employee" ;

        chksavePanel.Visible = true;
        ////chksavePanel.Checked = false;

        btnAdd.Visible = false;
        btnUpdate.Visible = false;
        btnDelete.Visible = true;
        btnCancel.Visible = true;

        try
        {
            SqlConnection con = new SqlConnection((ConfigurationManager.ConnectionStrings["iTechProvisionsDatabaseConnectionString"].ConnectionString));
            SqlCommand cmd = new SqlCommand("Delete from employee where E_Id="+txtE_Id.Text, con);

            cmd.CommandType = CommandType.Text;



            con.Open();

            cmd.ExecuteNonQuery();

            lblResult.Text = "Data Deleted successfully";

            con.Close();



        }

        catch (Exception ex)
        {

            lblResult.Text = ex.Message;

        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Account/AdminEmployeeCRUD.aspx", true);

        if (flag == 1)
        {
            lblTitle.Text = "Add Employee";
            btnAdd.Visible = true;
            btnAdd.Enabled = false;
        }
        if (flag == 2)
        {
            lblTitle.Text = "Update Employee";
            btnUpdate.Enabled = false;
            btnUpdate.Visible = true;
        }
        if (flag == 3)
        {
            lblTitle.Text = "Delete Employee";
            btnDelete.Enabled = false;
            btnDelete.Visible = true;
        }


    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        txtE_Id.Text = row.Cells[1].Text;
        txtE_Name.Text = row.Cells[2].Text;
        txtE_Gender.Text = row.Cells[3].Text;
        txtE_Address.Text = row.Cells[4].Text;
        txtE_Contact.Text = row.Cells[5].Text;
        txtE_Email.Text = row.Cells[6].Text;
        txtE_DOB.Text = row.Cells[7].Text;
        txtE_DOJ.Text = row.Cells[8].Text;
        //txtE_Salary.Text = row.Cells[9].Text;
        //txtE_Department.Text = row.Cells[10].Text;


        chksavePanel.Checked = false;
        if (flag == 0)
        {
            btnCancel.Visible = false;
            btnAdd.Visible = false;
            
        }
        

        if (flag == 1)
        {
            lblTitle.Text = "Add Employee";
            chksavePanel.Visible = true;
            btnAdd.Visible = true;
            btnAdd.Enabled = false;
            btnCancel.Visible = true;
        }
        if (flag == 2)
        {
            lblTitle.Text = "Update Employee";
            chksavePanel.Visible = true;
            btnUpdate.Visible = true;
            btnUpdate.Enabled = false;
            btnCancel.Visible = true;

        }
        if (flag == 3)
        {
            lblTitle.Text = "Delete Employee";
            chksavePanel.Visible = true;
            btnDelete.Visible = true;
            btnDelete.Enabled = false;
            btnCancel.Visible = true;

        }
    }

    
    
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}