using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class chiTiet : System.Web.UI.Page
{
    static DataTable dtGioHang = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void DataList_ItemCommand(object source, DataListCommandEventArgs e)
{
        DataListItem dli = e.Item;
        Label masp = (Label)dli.FindControl("MaSanPhamLabel0");
        Label tensp = (Label)dli.FindControl("TenSPLabel0");
        Label giasp = (Label)dli.FindControl("DonGiaLabel0");
        ThemVaoGioHang(masp.Text, tensp.Text, giasp.Text);
        Label2.Text = "Sản phẩm mã " + masp.Text +" đã được bạn chọn mua";
}
    void ThemVaoGioHang(string masp, string tensp, string giasp)
    {
        DataTable dtgiohang;
        if (Session["giohang"] == null)
        {
            dtgiohang = new DataTable();
            dtgiohang.Columns.Add("MaSP",typeof(Int32));
            dtgiohang.Columns.Add("Tensanpham",typeof(string)); 
            dtgiohang.Columns.Add("Gia",typeof(int));
            dtgiohang.Columns.Add("Soluong",typeof(int));
            dtgiohang.Columns.Add("Thanhtien",typeof(int));
        }
        else
        {
            dtgiohang = (DataTable)Session["giohang"];
        }
        int vitrisp = coTrongGioHang(masp, dtgiohang);
        if (vitrisp != -1)
        {
            dtgiohang.Rows[vitrisp]["Soluong"] =
            Convert.ToInt32(dtgiohang.Rows[vitrisp]["Soluong"]) + 1;
            dtgiohang.Rows[vitrisp]["Thanhtien"] =
            Convert.ToInt32(dtgiohang.Rows[vitrisp]["Thanhtien"]) + int.Parse(giasp);
        }
        else
        {
            DataRow dr = dtgiohang.NewRow();
            dr["Masp"] = masp;
            dr["Tensanpham"] = tensp;
            dr["Gia"] = giasp;
            dr["Soluong"] = "1";
            dr["Thanhtien"] = giasp;
            dtgiohang.Rows.Add(dr);
        }
        Session["giohang"] = dtgiohang;
    }
    int coTrongGioHang(string masp, DataTable giohang)
    {
        int dong = -1;
        for (int r = 0; r < giohang.Rows.Count; r++)
        {
            if (giohang.Rows[r]["Masp"].ToString() == masp)
            {
                dong = r;
                break;
            }
        }
        return dong;
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}