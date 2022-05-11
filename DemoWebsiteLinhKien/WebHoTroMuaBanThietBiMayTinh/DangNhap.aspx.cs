using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class DangNhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        string strcn = ConfigurationManager.AppSettings["taikhoan"];
        SqlConnection cn = new SqlConnection(strcn);
        if(string.IsNullOrEmpty(TextBox1.Text.Trim())||string.IsNullOrEmpty(TextBox1.Text.Trim()))
            Label2.Text = "Vui lòng nhập tài khoản và mật khẩu";
        else{
            cn.Open();
            String sql = "SELECT * FROM taikhoan WHERE username='" + TextBox1.Text + "' AND pass='" + TextBox2.Text + "'";
            SqlCommand com = new SqlCommand(sql, cn);
            SqlDataReader dr = com.ExecuteReader();
            bool chk = dr.Read();
            dr.Close();
            cn.Close();
            if (chk)
            {
                Session.Add("username", TextBox1.Text);
                Session.Add("pass", TextBox2.Text);
                Response.Redirect("trangChu.aspx");
            }
            else
            {
                Label2.Text = "Tài khoản hoặc mật khẩu ko đúng";
            }
        }
    }
}