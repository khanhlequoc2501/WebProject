using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class gioHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["giohang"] == null)
        {
            Label1.Text = "Hiện tại ko có sản phẩm nào trong giỏ hàng";
        }
        else
        {
            GridView1.DataSource = (DataTable)Session["giohang"];
            GridView1.DataBind();
            int tongtien = 0;
            DataTable dt = (DataTable)Session["giohang"];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                tongtien = tongtien + int.Parse(dt.Rows[i]["ThanhTien"].ToString());
            }
            Label1.Text = "Tổng số tiền của đơn hàng : " + tongtien + " đồng";
        }
    }

    void hienthigiohang()
    {
        GridView1.DataSource = (DataTable)Session["giohang"];
        GridView1.DataBind();
        int tongtien = 0;
        DataTable dt = (DataTable)Session["giohang"];
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            tongtien = tongtien + Convert.ToInt32(dt.Rows[i]["thanhtien"]);
        }
        Label1.Text = "Tổng giá trị đơn hàng : " + tongtien;
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "xoa")
        {
            int dong = Convert.ToInt32(e.CommandArgument);
            DataTable gh = (DataTable)Session["giohang"];
            gh.Rows[dong].Delete();
            Session["giohang"] = gh;
            hienthigiohang();
        }
    }

    void CapNhatSoLuong(string masp, int soluong, DataTable dt)
    {
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (masp == (string)dt.Rows[i]["Masp"].ToString())
            {
                dt.Rows[i]["Soluong"] = soluong;
                dt.Rows[i]["Thanhtien"] = soluong * Convert.ToInt32(dt.Rows[i]
                ["Gia"]);
                break;
            }
        }
        Session["giohang"] = dt;
    }
    protected void btnxoagiohang_Click(object sender, EventArgs e)
    {
        Session["giohang"] = null;
        Response.Redirect("giohang.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

}