using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class DangKy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strn = ConfigurationManager.AppSettings["taikhoan"];
        SqlConnection cn = new SqlConnection(strn);

        cn.Open();
        if (string.IsNullOrEmpty(TextBox1.Text.Trim()) 
            || string.IsNullOrEmpty(TextBox2.Text.Trim()) 
            || string.IsNullOrEmpty(TextBox3.Text.Trim()) 
            || string.IsNullOrEmpty(TextBox4.Text.Trim()) 
            || string.IsNullOrEmpty(TextBox5.Text.Trim()) 
            || string.IsNullOrEmpty(TextBox6.Text.Trim()))
        {
            Label7.Text = "Vui lòng điền đầy đủ thông tin đăng ký";
            return;
        }
        else
        {
            string strcmd = "Insert into taikhoan(username,pass,hoten,sdt,email) values(@user,@pass,@ten,@sdt,@email)";

            SqlCommand cmd = cn.CreateCommand();
            cmd.CommandText = strcmd;

            SqlParameter p1 = cmd.Parameters.Add("@user", SqlDbType.VarChar, 50);
            SqlParameter p2 = cmd.Parameters.Add("@pass", SqlDbType.VarChar, 1000);
            SqlParameter p3 = cmd.Parameters.Add("@ten", SqlDbType.NVarChar, 50);
            SqlParameter p4 = cmd.Parameters.Add("@sdt", SqlDbType.VarChar, 11);
            SqlParameter p5 = cmd.Parameters.Add("@email", SqlDbType.VarChar, 50);


            p1.Value = TextBox4.Text;
            p2.Value = TextBox6.Text;
            p3.Value = TextBox1.Text;
            p4.Value = TextBox2.Text;
            p5.Value = TextBox3.Text;

            int rs = cmd.ExecuteNonQuery();
            if (rs == 1)
            {
                Label7.Text = "Đăng ký thành công";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
            }
        }
    }
}